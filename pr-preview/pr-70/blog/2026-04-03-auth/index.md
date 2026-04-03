# Guía de cátedra 2026: API Gateway + Auth/Authz

## TL;DR

| Cuándo                        | Opción                        | Trade-off principal                                                                                                                                           |
| :---------------------------- | :---------------------------- | :------------------------------------------------------------------------------------------------------------------------------------------------------------ |
| **Control total**             | **Auth propia**               | Más control y más garantías demostrables, pero también más diseño, operación y revisión. ([OWASP Passwords][35], [OWASP AuthN][39], [Spring Auth Server][36]) |
| **Proxy simple**              | **Traefik OSS + ForwardAuth** | Routing simple; la auth se delega a otro servicio. ([Traefik Features][5], [Traefik ForwardAuth][29], [Traefik Docker][28])                                   |
| **BFF simple**                | **KrakenD CE**                | Declarativo, JWT/OIDC y pocas dependencias. ([KrakenD][1])                                                                                                    |
| **Policies y cuotas**         | **Tyk OSS**                   | Muy completo, pero con Redis como costo operativo. ([Tyk][3])                                                                                                 |
| **JWT del equipo en gateway** | **Kong OSS**                  | Encaja con JWT propio; OIDC directo en OSS suma fricción. ([Kong DB-less][4], [Kong JWT][25], [Kong OIDC][8])                                                 |
| **Extensibilidad**            | **Apache APISIX**             | Muy flexible, pero con más configuración explícita. ([Apache APISIX][2])                                                                                      |
| **Delegar identidad**         | **IdP externo + gateway**     | Menos complejidad en login y sesión, pero más garantías delegadas al proveedor. ([OpenID Connect][40], [Firebase][19], [Clerk Expo][30])                      |
| **Token del equipo**          | **IdP externo + JWT propio**  | Desacopla a los servicios del IdP, pero agrega exchange, refresh y operación. ([OpenID Connect][40], [Firebase][21], [Clerk Token][31])                       |

---

## Responsabilidades

Más allá del stack elegido, conviene separar el sistema en cuatro capas. Cada una resuelve un problema distinto y no debería invadir por completo a las demás.

**Identidad y sesión.** La resuelve un proveedor de identidad o una plataforma de auth, como Firebase Auth, Clerk o un servicio propio. Esta capa se ocupa de registro, login, recuperación de credenciales y manejo de sesión.

**Gateway / Proxy.** Valida el token, o delega esa validación, cierra rutas, aplica rate limiting grueso y, cuando corresponde, hace agregación tipo BFF. Muchos además traen soporte o plugins para JWT/OIDC y pueden resolver authz gruesa basada en scopes, claims o integración con un servicio externo.

**Autorización.** Define si un usuario puede o no hacer una acción concreta. Esa decisión puede vivir dentro de cada servicio o centralizarse en un auth service o policy engine. Lo importante es que use reglas reales del dominio, no solo claims del token. ([OPA][32], [Keycloak Authz][33])

**Servicios de dominio.** Son el último punto de enforcement. Aunque el gateway filtre y el token sea válido, acá se decide finalmente sobre recursos, ownership, bloqueos, flags de negocio y cualquier regla que dependa del estado real del sistema.

OIDC resuelve identidad/login. La authz fina puede apoyarse en claims o scopes, pero no debería depender solo de eso ni solo del gateway. ([OAuth Resource Server][34])

{{< youtube iX8g4LqF8p8 >}}

---

## Gateways y Proxies

| Producto                      | Cuándo elegirlo                         | Modelo mental                                                                                  | Operación                                                             | Dependencias                                                          | OIDC / JWT externo                                                                                           | Rate limiting                                                            |
| :---------------------------- | :-------------------------------------- | :--------------------------------------------------------------------------------------------- | :-------------------------------------------------------------------- | :-------------------------------------------------------------------- | :----------------------------------------------------------------------------------------------------------- | :----------------------------------------------------------------------- |
| **KrakenD CE**                | Simplicidad + BFF sin extras            | Declarativo, BFF/agregación ([KrakenD][9])                                                     | Muy buena; Dockerfile inmutable ([KrakenD][10])                       | Sin DB/Redis ([KrakenD][10])                                          | Fit nativo; Firebase/Google explícito ([KrakenD][1])                                                         | `max_rate` + `client_max_rate`, en memoria ([KrakenD][14])               |
| **Apache APISIX**             | Máxima flexibilidad de plugins          | Gateway de plugins, cloud-native ([APISIX][2])                                                 | Standalone reduce ops, pero exige más config explícita ([APISIX][11]) | Sin etcd en Standalone ([APISIX][11])                                 | Plugin `openid-connect`; Google y otros IdP ([APISIX][2])                                                    | `limit-count` (fixed window) + `limit-req` (leaky bucket) ([APISIX][15]) |
| **Tyk OSS**                   | Rate limiting avanzado; se acepta Redis | _Batteries included_, fuerte en policies ([Tyk][3])                                            | Fácil de levantar, arrastra Redis ([Tyk][7])                          | Redis obligatorio ([Tyk][7])                                          | JWT + JWKS URIs; buen fit con IdP externo ([Tyk][13])                                                        | API-level y Key-level ([Tyk][16])                                        |
| **Traefik OSS + ForwardAuth** | Edge router liviano; auth delegada      | Application proxy; auth en servicio externo ([Traefik Features][5], [Traefik ForwardAuth][29]) | Muy buena; hot reload, labels/CRDs ([Traefik Docker][28])             | Sin DB; auth depende del servicio externo ([Traefik ForwardAuth][29]) | JWT/OIDC nativo solo en Hub; en OSS se delega por `ForwardAuth` ([Traefik Features][5])                      | Token bucket con middleware `RateLimit` ([Traefik RateLimit][12])        |
| **Kong OSS**                  | El equipo emite su propio JWT           | Plugin-based, muy flexible ([Kong][4])                                                         | DB-less simplifica bastante ([Kong][4])                               | Sin DB en modo DB-less ([Kong][4])                                    | JWT emitido por el equipo: OK. OIDC/Firebase directo: fricción (Enterprise) ([Kong JWT][25], [Kong OIDC][8]) | Local, cluster, Redis ([Kong][17])                                       |

**Sin Kubernetes:** todas estas opciones pueden correrse con contenedores. ([KrakenD][10], [APISIX][26], [Tyk][3], [Kong Docker][27], [Traefik Docker][28])

---

## Identidad y sesión

La decisión principal no es Firebase sí o no, sino `IdP externo` versus `auth propia`. La elección pasa por control, responsabilidades operativas, evidencia de garantías de seguridad, costo de migración y tiempo de implementación. En esta guía, Firebase aparece como ejemplo frecuente, pero el mismo patrón aplica a Clerk u otros proveedores OIDC equivalentes. ([OpenID Connect][40], [Firebase][19], [Clerk Expo][30])

### IdP externo (OIDC) + gateway

El cliente mobile se autentica con un proveedor externo de identidad y usa ese token directamente contra el gateway. Firebase aparece acá solo como ejemplo frecuente, no como caso rector del documento. ([OpenID Connect][40], [Firebase][19], [Clerk Expo][30])

**Flujo**

1. El cliente autentica con un proveedor externo compatible con OIDC, por ejemplo Firebase Auth, Clerk u otro IdP equivalente. ([OpenID Connect][40], [Firebase][6], [Clerk Expo][30])
2. El proveedor entrega el token de identidad o sesión según el flujo elegido.
3. El cliente manda ese token al gateway.
4. El gateway valida el token o delega la validación al componente correspondiente.
5. El backend o la capa de autorización verifica `blocked`, `roles`, ownership y reglas de negocio contra estado confiable del dominio.
6. Cuando el token vence, el cliente renueva la sesión según el mecanismo del proveedor o del auth service.

**Pros y contras**

| Trade-off     | Detalle                                                                                                                                                                                                                                                             |
| :------------ | :------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------ |
| **A favor**   | Menor superficie a implementar; sesión larga y renovación ya resueltas; flujos de email/password y login federado disponibles según el proveedor elegido. ([Firebase][19], [Clerk Expo][30])                                                                        |
| **En contra** | Parte de la lógica queda fuera del control del equipo. Según el proveedor, puede no haber evidencia documental suficiente para ciertas garantías duras; en Firebase, por ejemplo, no está verificable un TTL máximo de 1h para reset ni storage hasheado del token. |

### IdP externo + JWT propio

El cliente sigue logueando con un proveedor externo, pero el auth service valida ese token y emite un JWT propio de la plataforma, es decir, un token emitido por el equipo para su API. El gateway valida ese token propio.

| Trade-off     | Detalle                                                                                                                                                                                                                                            |
| :------------ | :------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| **A favor**   | Claims completamente propias; mayor independencia del IdP; cambiar de proveedor afecta menos a los servicios.                                                                                                                                      |
| **En contra** | Hay que resolver la renovación (refresh token propio o re-exchange contra el proveedor externo); más superficie de implementación. Conviene solo si el equipo puede justificar técnicamente el valor que gana. ([Firebase][21], [Clerk Token][31]) |

### Auth propia

El equipo implementa su propia capa de identidad y sesión para la plataforma: registro, login, hash de contraseñas, recupero, refresh token, emisión de JWT y, si hace falta, claims o roles globales para la API.

Eso no reemplaza el estado propio del dominio ni la capa de autorización: `blocked`, ownership, permisos finos y reglas de negocio siguen fuera de esta capa. También conviene distinguir una auth propia para la app de un authorization server OAuth/OIDC completo para terceros: lo segundo es bastante más ambicioso. Hoy, además, no implica necesariamente escribir todo desde cero; existen frameworks y librerías maduras como Spring Authorization Server, las herramientas de seguridad de FastAPI para OAuth2/JWT o `node-oidc-provider`. Aun así, la implementación, operación y seguridad siguen siendo responsabilidad del equipo. ([OWASP Passwords][35], [Spring Auth Server][36], [FastAPI Security][37], [node-oidc-provider][38])

| Trade-off     | Detalle                                                                                                                                                                                                                                                |
| :------------ | :----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| **A favor**   | Control total sobre identidad, sesiones y claims de plataforma. Muy buena opción si el equipo necesita flujos propios, independencia del proveedor o demostrar garantías implementadas por ellos mismos.                                               |
| **A favor**   | Con librerías modernas, el volumen de código commodity puede ser bastante menor de lo que sugiere la intuición inicial.                                                                                                                                |
| **En contra** | El equipo pasa a ser responsable de cerrar bien autenticación, sesiones, recupero, almacenamiento seguro, revocación, auditoría y mitigaciones de abuso. Las librerías ayudan, pero no reemplazan diseño ni revisión de seguridad. ([OWASP AuthN][39]) |
| **En contra** | Si además se quiere exponer un authorization server OAuth/OIDC completo y reutilizable para terceros, la complejidad sube respecto de una auth propia solo para la app.                                                                                |

---

## Opciones de IdP

Además de elegir gateway, conviene decidir quién resuelve identidad y sesión. En esta guía aparecen tres familias:

- **Plataformas gestionadas**: Clerk, Firebase Authentication, Supabase Auth, Auth0.
- **Plataformas self-hosted**: Keycloak.
- **Auth propia**: implementada por el equipo.

Todas pueden encajar con el patrón `IdP + gateway`: el proveedor resuelve login, registro, sesión y recuperación; el gateway valida el token; y la autorización fina junto con el estado real del dominio siguen fuera del IdP.

{{< youtube 5KChrGWFcpk >}}

### IdP externo + gateway

Este patrón conviene cuando el objetivo no es construir identidad desde cero, sino llegar rápido a una API protegida con login razonable, sesión larga y validación de tokens.

| Opción                      | Tipo                                           | Qué simplifica                                                                                                                                                                                                                                                  | Trade-off principal                                                                                                                                                                                |
| :-------------------------- | :--------------------------------------------- | :-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | :------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| **Clerk**                   | Plataforma de auth gestionada                  | UIs prearmadas para `sign-in` y gestión de perfil; integración rápida; plan gratis con hasta `50.000` Monthly Retained Users. ([Clerk Pricing][41], [Clerk SignIn][42], [Clerk UserProfile][43])                                                                | Muy baja fricción, pero servicio cerrado y mayor dependencia del proveedor.                                                                                                                        |
| **Firebase Authentication** | Auth gestionada, muy común en mobile           | Email/password, reset por email, providers federados y UI prearmada. En el upgrade a Identity Platform agrega MFA, SAML y generic OIDC; ahí también aparecen el límite de `3.000` DAUs en Spark y el tier sin costo de `50.000` MAUs en Blaze. ([Firebase][19]) | Muy práctico y bien documentado, pero algunas garantías finas quedan delegadas al proveedor.                                                                                                       |
| **Supabase Auth**           | Auth gestionada integrada a plataforma backend | Password, magic link, OTP, social login y SSO; `50.000` MAUs en Free; buen fit si el equipo también quiere DB, storage y APIs en la misma plataforma. ([Supabase Auth][44], [Supabase Billing][45])                                                             | Muy cómodo, pero mete dependencia de plataforma más amplia, no solo de identidad.                                                                                                                  |
| **Auth0**                   | Plataforma de identidad más enterprise         | Hasta `25.000` MAUs en Free; passwordless, social login, custom domain y una enterprise connection. ([Auth0 Pricing][46], [Auth0 Custom Domains][47], [Auth0 Passwordless][48])                                                                                 | Muy completo, pero puede sentirse más pesado que otras opciones de esta guía.                                                                                                                      |
| **Keycloak**                | IdP self-hosted / authorization server         | OIDC, OAuth2 y SAML; consola admin centralizada; federation y Authorization Services. ([Keycloak][49], [Keycloak Authz][33])                                                                                                                                    | Mucho resuelto sin escribir auth propia, pero hay que operarlo: contenedor, DB relacional y configuración propia del servicio. ([Keycloak Container][50], [Keycloak DB][51], [Keycloak Admin][52]) |

### Cuándo conviene

- **Si el foco está en llegar rápido a login, sesión y recuperación**, un IdP externo reduce bastante la superficie de implementación.
- **Si se quiere más control sin implementar auth propia**, Keycloak resuelve mucho, pero agrega operación.
- **Si hay que demostrar garantías muy específicas** sobre reset, revocación, hashing o storage del token, conviene distinguir con cuidado entre controles propios, self-hosted y delegados al proveedor.

Ninguna de estas plataformas reemplaza al gateway, a la DB propia del dominio ni a la autorización fina. En otras palabras: **identidad y sesión pueden delegarse; autorización fina y enforcement final, no**. ([OAuth Resource Server][34], [OPA][32], [Keycloak Authz][33])

---

## Matices con IdP externos

Los proveedores externos resuelven bien login, sesión, recupero e integración federada, pero no reemplazan el estado propio del dominio ni la autorización fina. En esta guía se usa Firebase como ejemplo frecuente por su adopción en mobile, no como única opción válida. Trabajar sobre OIDC/OAuth2 reduce el costo de cambio, aunque no elimina por completo el vendor lock-in. ([OpenID Connect][40], [Firebase][19])

**Sesión, claims, revocación y bloqueo**

Aunque Firebase permite gestionar usuarios y aprovisionarlos deshabilitados, eso no reemplaza el estado propio del dominio. Sigue siendo necesario persistir `user_id interno`, `blocked`, `roles`, `created_at` y flags de negocio; y no depender solo de claims externas para authz fina.

La razón es concreta: `verifyIdToken()` por sí solo no chequea revocación, y un gateway que valida offline por firma/JWKS tampoco ve instantáneamente `disabled=true` ni una revocación. Los ID tokens ya emitidos pueden seguir válidos hasta su expiración natural. Por eso `blocked`, roles reales y reglas finas deben consultarse contra estado propio del dominio, ya sea dentro del servicio o a través de una capa central de autorización. ([Firebase][21], [OPA][32])

Firebase soporta custom claims para roles globales tipo `admin`, pero no están pensadas para datos estructurados de negocio, y los cambios se reflejan solo cuando el usuario reautentica o refresca el token. **Claim o scope para authz gruesa; dominio o capa de autorización para authz fina.** ([Firebase][20], [OAuth Resource Server][34])

**Password reset y hashing**

Firebase envía password reset emails con expiración del código y single-use del flujo. Lo que no está verificable en documentación oficial es un TTL máximo de 1 hora ni el almacenamiento hasheado del token del lado del proveedor. Si la materia exige demostrar esas garantías, hay que implementarlas en un auth service propio. ([Firebase][23])

Si se exige BCrypt u otro algoritmo adaptativo: las contraseñas que viven en Firebase nunca tocan la DB propia, así que el hashing queda delegado al proveedor. Firebase usa por defecto una versión modificada de `scrypt` — probablemente "otro algoritmo adaptativo" — pero sigue siendo un control delegado. ([Firebase][22])

---

## Responsabilidades por capa

| Responsabilidad                           | ¿Pasa por el gateway?        | Dónde se implementa                                 |
| :---------------------------------------- | :--------------------------- | :-------------------------------------------------- |
| Login federado con Google (optativo)      | No (valida el token después) | IdP externo                                         |
| Login con email/password                  | No                           | IdP externo o auth propia                           |
| Registro con email/password               | No                           | IdP externo o auth propia                           |
| Recupero de contraseña                    | No                           | IdP externo o auth propia                           |
| Hash de contraseñas (ej. BCrypt o scrypt) | No                           | Delegado al IdP o resuelto por auth propia          |
| Reglas mínimas de contraseña              | No                           | Depende de la opción de identidad elegida           |
| Renovación de sesión                      | No                           | Depende de la opción de identidad elegida           |
| Emisión del token de API                  | No (solo valida)             | IdP o auth service propio                           |
| Validación del token de API               | Sí                           | Gateway                                             |
| Decisión de autorización fina             | No                           | Servicios de dominio o capa central de autorización |
| Rate limiting por IP                      | Sí                           | Gateway                                             |
| Rate limiting por cuenta/email            | Parcial (ver nota)           | Auth service                                        |
| Bloqueo de usuario                        | No                           | Backend + DB de dominio                             |
| Roles básicos (`user`/`admin`)            | Parcial (claims gruesas)     | Estado real en DB propia                            |
| Ownership y permisos finos                | No                           | Enforcement final en backend con datos del dominio  |
| Minimización de datos                     | No                           | Backend del dominio                                 |
| Ocultar recursos de usuario bloqueado     | No                           | Backend + queries de dominio                        |
| Idempotencia de operaciones críticas      | No                           | Servicios de dominio                                |
| `/livez` y `/readyz`                      | No                           | Cada servicio, incluido auth/user                   |

**Nota sobre rate limiting por cuenta/email:** El gateway resuelve bien rate limiting por IP, header o token. El rate limiting por cuenta/email en login o recupero conviene implementarlo en el auth service: el identificador suele venir en el body y requiere lógica de dominio. ([KrakenD][14])

---

## Errores comunes

1. **Centralizar autorización en el gateway.** El gateway verifica si una ruta es protegida o un rol global grueso; no resuelve ownership ni reglas de negocio.
2. **Descartar Kong OSS.** Con un JWT emitido por el propio equipo es válido. La fricción aparece solo en OIDC/Firebase directo (OpenID Connect es Enterprise). ([Kong JWT][25], [Kong OIDC][8])
3. **Implementar refresh token propio si el IdP ya resuelve la sesión larga.** Superficie de ataque innecesaria. ([Firebase][18])
4. **Confiar únicamente en claims externas para reglas finas.** `admin=true` no valida "este recurso es de este usuario". ([Firebase][20])
5. **Asumir revocación/disable instantáneos sobre tokens ya emitidos.** El gateway que valida offline por firma/JWKS no se entera automáticamente. ([Firebase][21])
6. **Afirmar atributos de seguridad que no pueden demostrarse.** Si el reset o el hashing están delegados al proveedor, no inventar detalles técnicos sobre código que no controlan.
7. **Asumir que la authz fina debe vivir exclusivamente en cada microservicio o, al revés, exclusivamente en el gateway.** La decisión puede centralizarse, pero necesita datos del dominio y un enforcement claro cerca del recurso protegido. ([OPA][32], [Keycloak Authz][33])

---

## Checklist para el ADR

- ¿Dónde vive la identidad? ¿Quién emite el token que entra a la API?
- ¿Qué valida el gateway y qué verifica cada microservicio?
- ¿Cómo se renueva la sesión?
- ¿Dónde se persiste el estado del usuario (bloqueo, roles, flags de negocio)?
- ¿Qué garantías quedan delegadas al proveedor, cuáles implementadas por el equipo, y qué brechas quedan asumidas?
- ¿Qué nivel de acoplamiento al proveedor aceptan y cuánto costaría migrar?

---

[1]: https://www.krakend.io/docs/authorization/jwt-validation/
[2]: https://apisix.apache.org/docs/apisix/plugins/openid-connect/
[3]: https://tyk.io/docs/5.7/tyk-open-source/
[4]: https://developer.konghq.com/gateway/db-less-mode/
[5]: https://doc.traefik.io/traefik/master/features/
[6]: https://firebase.google.com/docs/auth
[7]: https://tyk.io/docs/apim/open-source/installation
[8]: https://developer.konghq.com/plugins/openid-connect/
[9]: https://www.krakend.io/docs/design/backend-for-frontend/
[10]: https://www.krakend.io/docs/deploying/docker/
[11]: https://apisix.apache.org/docs/apisix/deployment-modes/
[12]: https://doc.traefik.io/traefik/v3.4/middlewares/http/ratelimit/
[13]: https://tyk.io/docs/api-management/gateway-config-tyk-oas
[14]: https://www.krakend.io/docs/endpoints/rate-limit/
[15]: https://apisix.apache.org/docs/apisix/plugins/limit-count/
[16]: https://tyk.io/docs/5.0/basic-config-and-security/control-limit-traffic/rate-limiting/
[17]: https://developer.konghq.com/plugins/rate-limiting/
[18]: https://firebase.google.com/docs/auth/admin/manage-sessions
[19]: https://firebase.google.com/docs/auth
[20]: https://firebase.google.com/docs/auth/admin/custom-claims
[21]: https://firebase.google.com/docs/auth/admin/verify-id-tokens
[22]: https://firebase.google.com/docs/auth/admin/import-users
[23]: https://firebase.google.com/docs/reference/rest/auth
[24]: https://apisix.apache.org/docs/apisix/3.10/plugins/openid-connect/
[25]: https://developer.konghq.com/plugins/jwt/
[26]: https://apisix.apache.org/docs/apisix/installation-guide/
[27]: https://developer.konghq.com/gateway/install/docker-read-only/
[28]: https://doc.traefik.io/traefik/setup/docker/
[29]: https://doc.traefik.io/traefik/v3.4/middlewares/http/forwardauth/
[30]: https://clerk.com/docs/expo/getting-started/quickstart
[31]: https://clerk.com/docs/guides/force-token-refresh
[32]: https://www.openpolicyagent.org/docs/external-data
[33]: https://www.keycloak.org/docs/latest/authorization_services/index.html
[34]: https://www.oauth.com/oauth2-servers/the-resource-server/
[35]: https://cheatsheetseries.owasp.org/cheatsheets/Password_Storage_Cheat_Sheet.html
[36]: https://docs.spring.io/spring-authorization-server/reference/overview.html
[37]: https://fastapi.tiangolo.com/tutorial/security/oauth2-jwt/
[38]: https://github.com/panva/node-oidc-provider
[39]: https://cheatsheetseries.owasp.org/cheatsheets/Authentication_Cheat_Sheet.html
[40]: https://openid.net/specs/openid-connect-core-1_0.html
[41]: https://clerk.com/pricing
[42]: https://clerk.com/docs/reference/components/authentication/sign-in
[43]: https://clerk.com/docs/reference/components/user/user-profile
[44]: https://supabase.com/docs/guides/auth
[45]: https://supabase.com/docs/guides/platform/billing-on-supabase
[46]: https://auth0.com/pricing
[47]: https://auth0.com/docs/customize/custom-domains
[48]: https://auth0.com/docs/authenticate/passwordless
[49]: https://www.keycloak.org/
[50]: https://www.keycloak.org/server/containers
[51]: https://www.keycloak.org/server/db
[52]: https://www.keycloak.org/docs/latest/server_admin/

