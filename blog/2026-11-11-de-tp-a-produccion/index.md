# Guía de cátedra: de TP a producción

**En corto**

- Si tu TP ya tiene CI/CD, Docker, `/livez` y `/readyz`, logs estructurados y un test de carga, **ya desplegás**. Esta guía no trata de cómo desplegar: trata de **qué pasa el día después**, cuando del otro lado hay gente real.
- Producción no es un lugar, es una **responsabilidad**: alguien tiene que enterarse cuando algo se rompe, poder volver atrás, cuidar los datos de otros, cumplir la ley y pagar la factura.
- Lo dividimos en cuatro frentes: [operación](#1-operación-y-confiabilidad), [seguridad](#2-seguridad), [legal y confianza](#3-legal-y-confianza) y [negocio](#4-negocio-y-producto). Al final hay una [checklist de autoevaluación](#checklist-production-readiness).
- No es una receta. Cada sección deja **preguntas guía** y fuentes con puntos de vista distintos (Google, AWS, Netflix, startups, voces críticas, normativa argentina). Elegí qué profundizar según tu producto.

## El problema

Cada cuatrimestre el producto cambia (un marketplace, una red social, una plataforma de cursos, una app de mensajería), pero la forma del TP grupal se repite: varios servicios backend con sus bases, un gateway, una app mobile, un cliente web, un backoffice, algún flujo de pagos y un pipeline que despliega solo desde `main`. Técnicamente, eso **ya está en producción**.

Ahora imaginá que un viernes a la noche llegan los primeros 300 usuarios reales:

- A las 23:40 la operación principal del producto (comprar, publicar, mandar un mensaje) empieza a tardar 20 segundos. ¿Quién se entera? ¿Por una alerta o por un posteo en redes?
- El fix es un cambio en un consumidor de eventos. ¿Lo desplegás a todos de golpe? ¿Cómo volvés atrás si empeora?
- Un usuario pide que borren su cuenta y todos sus datos. ¿Qué dice la ley? ¿Los backups también?
- Alguien publica contenido ilegal o fraudulento. ¿Qué hacés, en cuánto tiempo, y quién decide?
- Se termina el free tier de la base de datos. ¿Cuánto cuesta cada usuario activo? ¿Cuánto paga cada uno?

Ninguna de esas preguntas se responde con más código de features. Se responden con **prácticas, decisiones y acuerdos**. Eso es lo que separa un TP desplegado de un producto.

> **Una advertencia antes de empezar.** No hace falta resolver todo. Un equipo chico que opera bien tres cosas básicas (alertas útiles, rollback probado, backups restaurables) está mejor que uno que tiene veinte herramientas configuradas a medias. Ver [Choose Boring Technology][boring].

---

## 1. Operación y confiabilidad

### Definí qué es "funcionar bien"

"Que no se caiga" no alcanza como objetivo. La práctica de SRE propone medir lo que el usuario percibe:

- **SLI** (indicador): qué medís. Ej.: "porcentaje de checkouts que terminan bien en menos de 2 s".
- **SLO** (objetivo): cuánto de eso querés. Ej.: "99,5 % en una ventana de 28 días".
- **Presupuesto de errores**: lo que sobra (0,5 %). Mientras haya presupuesto, se despliega tranquilo; si se agota, se prioriza estabilidad sobre features.

Los candidatos naturales salen del flujo principal del producto: éxito de login, latencia y tasa de éxito de la operación central (una compra, un mensaje entregado, una inscripción) y disponibilidad de la API desde el punto de vista del cliente. Ojo con medir latencia con promedios: [How NOT to Measure Latency][gil-tene] explica por qué importan los percentiles altos. ([SRE Book: SLOs][sre-slo], [SRE Workbook: Implementing SLOs][sre-impl-slo], [Google Cloud: SLIs, SLOs, SLAs, oh my!][vid-slo])

### Alertá sobre síntomas, no sobre causas

Si ya tienen APM y logs, el paso siguiente es decidir **qué despierta a alguien**. Regla práctica: se alerta cuando el usuario sufre (el SLO está en riesgo), no cuando la CPU llega al 80 %. Las [cuatro señales doradas][sre-monitoring] (latencia, tráfico, errores, saturación) son un buen punto de partida.

Para entender por qué los dashboards de métricas sueltas se quedan cortos en sistemas distribuidos, y qué agregan eventos de alta cardinalidad y trazas, ver la mirada de Charity Majors sobre [observabilidad 2.0][charity-o11y] y la especificación abierta de [OpenTelemetry][otel].

### Desplegar ≠ liberar

Si el CD ya despliega solo, lo que falta es **separar desplegar código de exponerlo a los usuarios**:

- **Feature flags**: el código llega apagado a producción y se prende para un grupo. ([Martin Fowler: Feature Toggles][fowler-toggles])
- **Canary**: la versión nueva recibe primero un porcentaje chico del tráfico y se compara contra la anterior. ([Canary Release][fowler-canary])
- **Blue/green**: dos entornos idénticos y un switch de tráfico; volver atrás es mover el switch. ([Blue Green Deployment][fowler-bluegreen])
- **Migraciones de base sin downtime**: patrón *expand/contract* (agregar columna, escribir en ambas, migrar, leer de la nueva, borrar la vieja). Stripe cuenta cómo lo hace a escala. ([Online migrations at scale][stripe-migrations])

Pregunta clave: **¿alguna vez probaron el rollback?** Si la respuesta es no, no tienen rollback.

### Backups que nadie restauró no son backups

En enero de 2017 GitLab perdió seis horas de datos de producción. Tenían cinco mecanismos de backup y ninguno funcionó cuando hizo falta. El [postmortem público][gitlab-postmortem] es lectura obligada.

Preguntas para su equipo: ¿cuál es la pérdida de datos aceptable (RPO) y el tiempo de recuperación aceptable (RTO) para cada base? ¿Los backups de cada base (SQL y NoSQL) se restauran en un entorno limpio, y cuánto tarda? ¿Y los objetos del bucket? ([PostgreSQL: Backup and Restore][pg-backup], [AWS Well-Architected: Reliability][aws-reliability])

### Incidentes y postmortems

Cuando algo se rompe, ayuda tener roles claros (quién coordina, quién comunica, quién investiga) y un canal dedicado. Después viene el **postmortem sin culpables**: qué pasó, cómo se detectó, qué lo agravó y qué acciones concretas evitan que se repita. El objetivo es aprender del sistema, no encontrar a quién señalar.

- [SRE Workbook: Postmortem Culture][sre-postmortem]
- [Atlassian Incident Management Handbook][atlassian-incidents]
- [How Complex Systems Fail][cook-text], de Richard Cook: 18 tesis cortas sobre por qué los sistemas complejos siempre están parcialmente rotos ([charla en video][vid-cook]).
- [Colección de postmortems públicos][danluu-postmortems]: aprendan de los errores de otros.

Para ver cómo se piensa la resiliencia en una arquitectura de microservicios real, con fallas en cascada, reintentos y degradación controlada: [Mastering Chaos: A Netflix Guide to Microservices][vid-netflix].

---

## 2. Seguridad

Los enunciados ya suelen pedir SAST y prohibir secretos en el repo. En producción, la superficie crece: ahora hay atacantes con incentivos reales.

### Pensá como atacante (un rato)

*Threat modeling* suena pesado, pero puede ser una reunión de una hora con cuatro preguntas ([Adam Shostack][shostack-4q]):

1. ¿En qué estamos trabajando?
2. ¿Qué puede salir mal?
3. ¿Qué vamos a hacer al respecto?
4. ¿Hicimos un buen trabajo?

Ejemplos que aplican a casi cualquier TP: ¿qué pasa si alguien fuerza el endpoint de recupero de contraseña? ¿Si reutiliza un link o token vencido? ¿Si sube un archivo con malware? ¿Si un usuario suspendido sigue con una sesión o un socket abierto? ¿Si repite un request de pago? ([Threat Modeling: What, Why, and How?][shostack-whitepaper])

### Usá checklists que ya existen

- [OWASP Top 10][owasp-top10]: los riesgos más comunes en aplicaciones web.
- [OWASP API Security Top 10][owasp-api]: específico para APIs. *Broken Object Level Authorization* (acceder al recurso de otro cambiando un ID) es el número uno, y es muy fácil de cometer en cualquier recurso que tenga dueño (pedidos, publicaciones, mensajes).
- [OWASP ASVS][owasp-asvs]: un estándar verificable por niveles. El nivel 1 es una buena meta para un producto que recién arranca.
- [OWASP Cheat Sheet Series][owasp-cheatsheets]: guías concretas por tema (sesiones, subida de archivos, WebSockets, etc.).

### Secretos y dependencias

- Rotación: ¿cuánto tardan en rotar el secreto de JWT o la API key de pagos si se filtra? ¿Lo hicieron alguna vez? ([OWASP Secrets Management][owasp-secrets])
- [GitHub Secret Scanning][gh-secret-scanning] y [Dependabot][gh-dependabot] son gratis en repos públicos y detectan lo obvio.
- Cadena de suministro: ¿saben qué dependencias terminan en cada imagen? Una [SBOM][cisa-sbom] lo responde, y [SLSA][slsa] propone niveles para asegurar el proceso de build.

### Abuso no es lo mismo que ataque

En cualquier producto abierto al público, buena parte del daño no viene de un hacker sino de usuarios legítimos haciendo cosas dañinas: spam, cuentas falsas, fraude, reseñas truchas. El rate limiting del gateway es la primera línea; después vienen límites por cuenta y por IP, verificación de email y detección de patrones.

---

## 3. Legal y confianza

> Esta sección orienta; no es asesoramiento legal. Un producto real con usuarios en Argentina necesita revisar estos temas con un profesional.

### Datos personales en Argentina

Casi cualquier TP guarda emails, nombres, direcciones, IPs, historial de actividad y, según el producto, mensajes privados, datos de pago o ubicación. Eso es **tratamiento de datos personales**, y en Argentina lo regula la [Ley 25.326][ley-25326]. Algunas obligaciones que impactan directamente en el diseño:

- **Consentimiento informado y finalidad**: decir qué datos se recolectan, para qué, y no usarlos para otra cosa.
- **Derechos de acceso, rectificación y supresión**: el usuario puede pedir ver sus datos y que se borren. ¿Una arquitectura de microservicios puede borrar a una persona de todas las bases, incluyendo réplicas alimentadas por eventos?
- **Seguridad**: medidas técnicas y organizativas adecuadas.
- **Registro de bases de datos** ante la autoridad de control, la [Agencia de Acceso a la Información Pública (AAIP)][aaip].

La AAIP publicó lineamientos de buenas prácticas de privacidad para quienes desarrollan aplicaciones. Para contrastar con otra jurisdicción muy influyente, ver el enfoque europeo ([GDPR, Comisión Europea][gdpr]), que muchas plataformas adoptan como piso global.

**Privacy by design**, en concreto: minimizar lo que guardan, definir cuánto tiempo retienen mensajes y logs, no loguear datos sensibles y tener un flujo real de "borrar mi cuenta".

### Si vendés algo, hay consumidores

Casi todos los TPs tienen un flujo de pagos: compras, suscripciones, planes premium. Eso es contratación a distancia con consumidores. En Argentina, la [Ley 24.240 de Defensa del Consumidor][ley-24240] y la [Disposición 954/2025][boton-baja] exigen que los proveedores que contratan a distancia ofrezcan un **"botón de baja"** y un **"botón de arrepentimiento"** visibles, sin registración ni trámites previos. Esta disposición reemplazó en 2025 a las resoluciones 316/2018 y 424/2020; el botón de baja ya no se limita a una lista de rubros. Más allá de la obligación legal, cancelar fácil es una decisión de confianza: si cuesta irse, la gente desconfía antes de entrar.

### Moderación de contenido

Si el producto tiene contenido generado por usuarios (publicaciones, reseñas, mensajes, fotos), tiene que responder:

- ¿Qué contenido no se permite? (términos de servicio y normas de la comunidad)
- ¿Cómo se denuncia, quién revisa y en cuánto tiempo?
- ¿Qué pasa con contenido claramente ilegal? ¿Se preserva evidencia?
- ¿El usuario sancionado se entera de por qué y puede apelar?

Los [Santa Clara Principles][santa-clara] son una referencia de la sociedad civil sobre transparencia y debido proceso en moderación. Para ver cómo lo comunica una plataforma real, miren por ejemplo el [informe de transparencia de Discord][discord-transparency].

Además, **las tiendas lo exigen**: tanto [Apple][apple-guidelines] (sección 1.2, *User-Generated Content*) como [Google Play][play-ugc] piden mecanismos de denuncia, bloqueo y moderación para publicar una app con contenido generado por usuarios. Las historias de moderación y denuncias no son un adorno: sin ellas la app no pasa la revisión.

---

## 4. Negocio y producto

### Cuánto cuesta de verdad

La [guía de Cloud Computing][guia-cloud] cubre los free tiers. La pregunta de producción es otra: **¿cuánto cuesta un usuario activo por mes?** Sumen cómputo, bases, colas o pub/sub, egreso de red (el más traicionero, sobre todo con media o tiempo real), almacenamiento de archivos y cualquier servicio externo que cobre por uso (email, push, video, mapas, IA). Con eso pueden estimar el costo con 100, 1.000 y 10.000 usuarios.

- [FinOps Foundation: What is FinOps][finops]: la práctica de que ingeniería, finanzas y producto decidan juntos sobre el gasto en la nube.
- [AWS Well-Architected: Cost Optimization][aws-cost].
- Una voz en contra para pensar: [Why we're leaving the cloud][dhh-cloud], de DHH. No es que tenga razón para su caso; sirve para ver que "la nube" es una decisión de negocio y no un default.

### ¿Los números cierran?

Con el costo por usuario estimado, la pregunta siguiente es si el modelo de ingresos (comisión por venta, suscripción, plan premium, publicidad) lo cubre. Para pensarlo:

- [Startup Business Models and Pricing (YC)][vid-yc-pricing] y [Startup Pricing 101 (Kevin Hale)][vid-hale]: precio basado en valor, no en costo.
- Las tiendas cobran comisión por bienes digitales vendidos dentro de la app y, salvo excepciones, exigen usar su sistema de pagos. Revisen el [Small Business Program de Apple][apple-small] y las [tarifas de Google Play][play-fees]. Eso cambia el número final y la integración con Stripe o MercadoPago.

### Medir si a la gente le sirve

Que la app esté arriba no significa que alguien la use. Métricas de producto básicas:

- **Activación**: ¿qué porcentaje de los que se registran hace la acción clave del producto (primera compra, primera publicación, primer mensaje) en su primer día?
- **Retención por cohortes**: de los que entraron la semana X, ¿cuántos siguen activos 1, 4 y 12 semanas después?
- **Engagement**: cuántas veces por semana vuelve un usuario activo y qué hace.

Fuentes: [Consumer Startup Metrics (YC)][vid-yc-metrics], [How To Keep Your Users (YC)][vid-yc-retention], [16 Startup Metrics (a16z)][a16z-metrics]. Muchas veces el TP pide métricas para el backoffice; esto es lo mismo, pero para el equipo que construye el producto.

Y un clásico sobre cómo consigue usuarios un producto que arranca: [Do Things That Don't Scale][pg-dts], de Paul Graham.

### Publicar en las tiendas

El APK del TP no es una app publicada. Para llegar a Play Store y App Store:

- Cuentas de desarrollador (Google cobra un pago único; Apple, una suscripción anual).
- Las cuentas personales nuevas de Google Play tienen que hacer una **prueba cerrada con testers reales durante un período mínimo** antes de poder publicar. Revisen los [requisitos vigentes][play-testing].
- Revisión de la app, política de privacidad publicada, declaración de datos recolectados y clasificación por edad.

### Hablar con los usuarios cuando algo falla

Una página de estado y avisos dentro de la app sirven para esto: comunicar a tiempo, con honestidad, qué está pasando y cuándo se espera resolverlo. Un incidente bien comunicado genera más confianza que uno escondido. ([Atlassian: Incident communication][atlassian-comms])

---

## Checklist: production readiness

Una autoevaluación rápida para el grupo. No es evaluable; es para saber dónde están parados.

**Operación**
- [ ] Tenemos al menos dos SLOs escritos sobre lo que el usuario percibe.
- [ ] Hay alertas sobre síntomas que le llegan a una persona concreta.
- [ ] Probamos un rollback en producción (o en un entorno idéntico) y sabemos cuánto tarda.
- [ ] Restauramos un backup de cada base en un entorno limpio.
- [ ] Hicimos al menos un postmortem, aunque sea de un incidente chico.

**Seguridad**
- [ ] Hicimos una sesión de threat modeling sobre los flujos críticos (auth, invitaciones, pagos, adjuntos).
- [ ] Revisamos los endpoints contra el OWASP API Security Top 10, en especial la autorización por objeto.
- [ ] Sabemos cómo rotar cada secreto y lo hicimos al menos una vez.
- [ ] Tenemos escaneo de dependencias y secretos activo.

**Legal y confianza**
- [ ] Tenemos términos de servicio, política de privacidad y normas de la comunidad publicadas.
- [ ] Un usuario puede descargar y borrar sus datos, y eso se propaga a todos los servicios.
- [ ] Si hay suscripciones, darse de baja es tan fácil como suscribirse.
- [ ] Hay un flujo de denuncia con responsable y tiempo de respuesta definidos.

**Negocio y producto**
- [ ] Estimamos el costo mensual por usuario activo y con 10× usuarios.
- [ ] Sabemos si el modelo de ingresos cubre ese costo, después de comisiones.
- [ ] Medimos activación y retención por cohortes.
- [ ] Sabemos qué falta para publicar en las tiendas.

---

## Recursos de cátedra

- [Guía de Cloud Computing][guia-cloud]: proveedores, free tiers y consejos de presupuesto.
- [Guía de API Gateway + Auth/Authz][guia-auth].
- Sección [De TP a Producción][material] del material, con todos los links de esta guía agrupados por frente.

[boring]: https://mcfunley.com/choose-boring-technology
[gil-tene]: https://www.youtube.com/watch?v=lJ8ydIuPFeU
[sre-slo]: https://sre.google/sre-book/service-level-objectives/
[sre-impl-slo]: https://sre.google/workbook/implementing-slos/
[vid-slo]: https://www.youtube.com/watch?v=tEylFyxbDLE
[sre-monitoring]: https://sre.google/sre-book/monitoring-distributed-systems/
[charity-o11y]: https://charity.wtf/p/is-it-time-to-version-observability-signs-point-to-yes
[otel]: https://opentelemetry.io/docs/what-is-opentelemetry/
[fowler-toggles]: https://martinfowler.com/articles/feature-toggles.html
[fowler-canary]: https://martinfowler.com/bliki/CanaryRelease.html
[fowler-bluegreen]: https://martinfowler.com/bliki/BlueGreenDeployment.html
[stripe-migrations]: https://stripe.com/blog/online-migrations
[gitlab-postmortem]: https://about.gitlab.com/blog/2017/02/10/postmortem-of-database-outage-of-january-31/
[pg-backup]: https://www.postgresql.org/docs/current/backup.html
[aws-reliability]: https://docs.aws.amazon.com/wellarchitected/latest/reliability-pillar/welcome.html
[sre-postmortem]: https://sre.google/workbook/postmortem-culture/
[atlassian-incidents]: https://www.atlassian.com/incident-management/handbook
[cook-text]: https://how.complexsystems.fail/
[vid-cook]: https://www.youtube.com/watch?v=2S0k12uZR14
[danluu-postmortems]: https://github.com/danluu/post-mortems
[vid-netflix]: https://www.youtube.com/watch?v=CZ3wIuvmHeM
[shostack-4q]: https://github.com/adamshostack/4QuestionFrame
[shostack-whitepaper]: https://shostack.org/resources/whitepapers/threat-modeling-what-why-how
[owasp-top10]: https://owasp.org/www-project-top-ten/
[owasp-api]: https://owasp.org/API-Security/editions/2023/en/0x11-t10/
[owasp-asvs]: https://owasp.org/www-project-application-security-verification-standard/
[owasp-cheatsheets]: https://cheatsheetseries.owasp.org/
[owasp-secrets]: https://cheatsheetseries.owasp.org/cheatsheets/Secrets_Management_Cheat_Sheet.html
[gh-secret-scanning]: https://docs.github.com/en/code-security/secret-scanning/introduction/about-secret-scanning
[gh-dependabot]: https://docs.github.com/en/code-security/dependabot
[cisa-sbom]: https://www.cisa.gov/sbom
[slsa]: https://slsa.dev/
[ley-25326]: https://www.argentina.gob.ar/normativa/nacional/64790/texto
[aaip]: https://www.argentina.gob.ar/aaip/datospersonales
[gdpr]: https://commission.europa.eu/law/law-topic/data-protection_en
[boton-baja]: https://www.boletinoficial.gob.ar/detalleAviso/primera/330827/20250904
[ley-24240]: https://www.argentina.gob.ar/normativa/nacional/ley-24240-638/actualizacion
[santa-clara]: https://santaclaraprinciples.org/
[discord-transparency]: https://discord.com/safety-transparency-reports
[apple-guidelines]: https://developer.apple.com/app-store/review/guidelines/
[play-ugc]: https://support.google.com/googleplay/android-developer/answer/9876937
[guia-cloud]: https://ingenieria-del-software-2.github.io/blog/2026-09-07-cloud-computing/
[guia-auth]: https://ingenieria-del-software-2.github.io/blog/2026-04-03-auth/
[finops]: https://www.finops.org/introduction/what-is-finops/
[aws-cost]: https://docs.aws.amazon.com/wellarchitected/latest/cost-optimization-pillar/welcome.html
[dhh-cloud]: https://world.hey.com/dhh/why-we-re-leaving-the-cloud-654b47e0
[vid-yc-pricing]: https://www.youtube.com/watch?v=oWZbWzAyHAE
[vid-hale]: https://www.youtube.com/watch?v=jwXlo9gy_k4
[apple-small]: https://developer.apple.com/app-store/small-business-program/
[play-fees]: https://support.google.com/googleplay/android-developer/answer/112622
[vid-yc-metrics]: https://www.youtube.com/watch?v=fdD4y4Civp4
[vid-yc-retention]: https://www.youtube.com/watch?v=VNxBZ7ka5J0
[a16z-metrics]: https://a16z.com/16-startup-metrics/
[pg-dts]: https://paulgraham.com/ds.html
[play-testing]: https://support.google.com/googleplay/android-developer/answer/14151465
[atlassian-comms]: https://www.atlassian.com/incident-management/incident-communication
[material]: https://ingenieria-del-software-2.github.io/material/#produccion

