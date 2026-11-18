# Guía de cátedra: de TP a producción

**En corto**

- Si tu TP ya tiene CI/CD, Docker, `/livez` y `/readyz`, logs estructurados y un test de carga, **ya desplegás**. Pero desplegar no es lo mismo que estar listo para operar. Esta guía trata de **qué pasa el día después**, cuando del otro lado hay gente real.
- Producción no es un lugar, es una **responsabilidad**: alguien tiene que enterarse cuando algo se rompe, poder volver atrás, cuidar los datos de otros, cumplir la ley y pagar la factura.
- Lo dividimos en cuatro frentes: [operación](#1-operación-y-confiabilidad), [seguridad](#2-seguridad), [legal y confianza](#3-legal-y-confianza) y [negocio](#4-negocio-y-producto). Si no sabés por dónde arrancar, andá a [por dónde empezar](#por-dónde-empezar). Al final hay una [checklist de autoevaluación](#checklist-production-readiness) priorizada.
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

### Desplegar, liberar, operar

Conviene separar tres cosas que en el TP suelen ir juntas:

- **Desplegar** (*deployment*): instalar una versión del software en un entorno.
- **Liberar** (*release*): habilitar una versión o una funcionalidad para ciertos usuarios.
- **Operar**: sostener el funcionamiento, la seguridad y la evolución del sistema mientras lo usan.

Tener las piezas no garantiza que funcionen: un `/readyz` puede no chequear lo que importa, los logs pueden filtrar datos sensibles, un test de carga puede no parecerse al tráfico real y un deploy exitoso puede romper la compatibilidad con la versión anterior de la base o de otro servicio. Esta guía se concentra en liberar y, sobre todo, en operar.

### Los frentes no son independientes

Los cuatro frentes de esta guía se pisan entre sí, y esa es una de las lecciones más importantes:

- Una política de retención de datos (legal) define cómo se almacena y se borra (arquitectura).
- Un objetivo de disponibilidad más alto (operación) cuesta más infraestructura (negocio).
- Una política de moderación (confianza) necesita estados, colas y herramientas en el backoffice (diseño).
- Una política de cancelación (consumidor) condiciona el modelo de suscripciones y la facturación.

Y no todos los productos necesitan lo mismo: una herramienta interna para diez personas no se opera como una plataforma de pagos. Volvemos sobre esto en [cuando las recomendaciones chocan](#cuando-las-recomendaciones-chocan).

> **Una advertencia antes de empezar.** No hace falta resolver todo. Un equipo chico que opera bien tres cosas básicas (alertas útiles, rollback probado, backups restaurables) está mejor que uno que tiene veinte herramientas configuradas a medias. Ver [Choose Boring Technology][boring].

### Por dónde empezar

**Un plan para los primeros 30 días**, ordenado por lo que más duele si falta:

1. **Semana 1. No perder datos ni cuentas.** Restaurar un backup de cada base. Activar MFA y mínimo privilegio en las cuentas cloud y en el CI. Configurar alertas de facturación.
2. **Semana 2. Enterarse y volver atrás.** Una alerta sobre el flujo principal, con un runbook corto. Un rollback probado.
3. **Semana 3. Cumplir con los usuarios.** Términos, política de privacidad y un "borrar mi cuenta" que funcione. Si hay contenido de usuarios, un flujo de denuncias.
4. **Semana 4. Saber si sirve.** Estimar el costo por usuario y empezar a medir activación y retención.

**Un recurso imprescindible por frente**, si solo tienen una tarde:

| Frente | Recurso | Tipo |
| --- | --- | --- |
| Operación | [Postmortem de la caída de base de datos de GitLab][gitlab-postmortem] | Caso real |
| Operación | [SRE Book: Service Level Objectives][sre-slo] | Fundamental |
| Seguridad | [OWASP API Security Top 10][owasp-api] | Fundamental |
| Legal | [AAIP: Datos personales][aaip] | Normativa |
| Negocio | [Consumer Startup Metrics (YC)][vid-yc-metrics] | Fundamental |

El resto de los links son para profundizar. Algunos son **opiniones** (DHH, Charity Majors, Paul Graham): valen como punto de vista, no como regla.

---

## 1. Operación y confiabilidad

### Definí qué es "funcionar bien"

"Que no se caiga" no alcanza como objetivo. La práctica de SRE propone medir lo que el usuario percibe:

- **SLI** (indicador): qué medís. Ej.: "porcentaje de checkouts que terminan bien en menos de 2 s".
- **SLO** (objetivo): cuánto de eso querés. Ej.: "99,5 % en una ventana de 28 días".
- **Presupuesto de errores**: lo que sobra (0,5 %). Mientras haya presupuesto, se despliega tranquilo; si se agota, se prioriza estabilidad sobre features.

El 99,5 % es solo un ejemplo: el objetivo depende de cuánto duele la falla para el usuario y para el negocio. Y la disponibilidad no alcanza: una API puede responder `200` y haber registrado mal una compra. Para las operaciones críticas, midan también que el resultado sea correcto.

Los candidatos naturales salen del flujo principal del producto: éxito de login, latencia y tasa de éxito de la operación central (una compra, un mensaje entregado, una inscripción) y disponibilidad de la API desde el punto de vista del cliente. Ojo con medir latencia con promedios: [How NOT to Measure Latency][gil-tene] explica por qué importan los percentiles altos. ([SRE Book: SLOs][sre-slo], [SRE Workbook: Implementing SLOs][sre-impl-slo], [Google Cloud: SLIs, SLOs, SLAs, oh my!][vid-slo])

### Alertá sobre síntomas, no sobre causas

Si ya tienen APM y logs, el paso siguiente es decidir **qué despierta a alguien**. Regla práctica: se alerta cuando el usuario sufre (el SLO está en riesgo), no cuando la CPU llega al 80 %. Las [cuatro señales doradas][sre-monitoring] (latencia, tráfico, errores, saturación) son un buen punto de partida. Eso no prohíbe alertar sobre infraestructura: una saturación que anticipa una caída lo justifica.

Una forma concreta de alertar sobre SLOs es mirar la **velocidad de consumo del presupuesto de errores** (*burn rate*): si al ritmo de la última hora el presupuesto del mes se agota en dos días, alguien tiene que mirar ya, aunque el SLO todavía se cumpla. ([SRE Workbook: Alerting on SLOs][sre-alerting])

Y una alerta sirve si responde: ¿a quién le llega?, ¿en qué horario?, ¿qué hace esa persona? (un **runbook** de media página alcanza) y ¿qué pasa si no responde? Un grupo de estudiantes no puede tener guardia 24/7, pero sí puede acordar una guardia en horario acotado y decirlo.

Métricas, logs y trazas se complementan: las métricas dicen *qué* pasa y con qué frecuencia, los logs cuentan *qué ocurrió* en un evento concreto y las trazas muestran *dónde* se originó la demora o el error entre servicios. Para que las trazas funcionen, el ID de correlación tiene que viajar también por colas y consumidores asíncronos. Para entender por qué los dashboards de métricas sueltas se quedan cortos en sistemas distribuidos, ver la mirada de Charity Majors sobre [observabilidad 2.0][charity-o11y] y la especificación abierta de [OpenTelemetry][otel].

### Desplegar ≠ liberar

Si el CD ya despliega solo, lo que falta es **separar desplegar código de exponerlo a los usuarios**:

- **Feature flags**: el código llega apagado a producción y se prende para un grupo. ([Martin Fowler: Feature Toggles][fowler-toggles])
- **Canary**: la versión nueva recibe primero un porcentaje chico del tráfico y se compara contra la anterior. ([Canary Release][fowler-canary])
- **Blue/green**: dos entornos idénticos y un switch de tráfico; volver atrás es mover el switch. ([Blue Green Deployment][fowler-bluegreen])
- **Migraciones de base sin downtime**: patrón *expand/contract* (agregar columna, escribir en ambas, migrar, leer de la nueva, borrar la vieja). Stripe cuenta cómo lo hace a escala. ([Online migrations at scale][stripe-migrations])

No son intercambiables: los flags controlan qué ve el usuario, pero hay que borrarlos cuando cumplen su función o se vuelven deuda; un canary necesita un criterio explícito para avanzar o abortar; y blue/green no revierte un cambio de esquema. Lo que los atraviesa a todos es la **compatibilidad hacia atrás** entre versiones de la base, de las APIs y de los eventos (lo desarrollamos en la [parte 2][parte2]).

Pregunta clave: **¿alguna vez probaron el rollback?** Si la respuesta es no, no tienen rollback.

### Entornos

¿Hay un entorno donde probar antes de producción? ¿Se parece lo suficiente? Las diferencias entre desarrollo, staging y producción (versiones, configuración, datos) son una fuente clásica de sorpresas ([12-Factor: Dev/prod parity][12f-parity]). Dos reglas mínimas: la configuración vive fuera del código y cambia por entorno, y **los datos reales de usuarios no se copian a desarrollo**.

### Backups que nadie restauró no son backups

En enero de 2017 GitLab perdió seis horas de datos de producción. Tenían cinco mecanismos de backup y ninguno funcionó cuando hizo falta. El [postmortem público][gitlab-postmortem] es lectura obligada.

Preguntas para su equipo: ¿cuál es la pérdida de datos aceptable (RPO) y el tiempo de recuperación aceptable (RTO) para cada base? ¿Los backups de cada base (SQL y NoSQL) se restauran en un entorno limpio, y cuánto tarda? ¿Y los objetos del bucket?

Tres detalles que suelen olvidarse:

- **Consistencia entre piezas.** Si los metadatos están en Postgres y los archivos en un bucket, restaurar solo uno deja referencias rotas u objetos huérfanos. El plan de recuperación es del producto, no de cada base.
- **Protección.** Un backup que se borra con las mismas credenciales que producción no sobrevive a una cuenta comprometida o a un error humano. Guárdenlo con otras credenciales y, si se puede, protegido contra borrado.
- **Probar la recuperación completa**, no solo el comando de restore. ([AWS: Plan for disaster recovery][aws-dr], [PostgreSQL: Backup and Restore][pg-backup], [AWS Well-Architected: Reliability][aws-reliability])

### Incidentes y postmortems

Cuando algo se rompe, ayuda tener roles claros (quién coordina, quién comunica, quién investiga), un canal dedicado y **niveles de severidad** acordados de antemano (por ejemplo, SEV1: el flujo principal caído para todos; SEV3: una funcionalidad secundaria degradada), para saber cuándo hay que dejar todo. ([Atlassian: Severity levels][atlassian-sev]) Después viene el **postmortem sin culpables**: qué pasó, cómo se detectó, qué lo agravó y qué acciones concretas evitan que se repita. El objetivo es aprender del sistema, no encontrar a quién señalar.

- [SRE Workbook: Postmortem Culture][sre-postmortem]
- [Atlassian Incident Management Handbook][atlassian-incidents]
- [How Complex Systems Fail][cook-text], de Richard Cook: 18 tesis cortas sobre por qué los sistemas complejos siempre están parcialmente rotos ([charla en video][vid-cook]).
- [Colección de postmortems públicos][danluu-postmortems]: aprendan de los errores de otros.
- En castellano, desde la comunidad local: [El camino a SRE][vid-schenkelman] (Damián Schenkelman) y [Nightmares in production][vid-pedreira] (David Pedreira), ambas de Nerdearla.

Para ver cómo se piensa la resiliencia en una arquitectura de microservicios real, con fallas en cascada, reintentos y degradación controlada: [Mastering Chaos: A Netflix Guide to Microservices][vid-netflix].

---

## 2. Seguridad

Los enunciados ya suelen pedir SAST y prohibir secretos en el repo. En producción, la superficie crece: ahora hay atacantes con incentivos reales.

### Empezá por las cuentas

Para un equipo chico, el riesgo más probable no es un ataque sofisticado a la API, sino que alguien obtenga **la cuenta del proveedor cloud, un token del CI o el acceso al backoffice**. Lo mínimo:

- MFA obligatorio en las cuentas cloud, en GitHub y en el backoffice.
- Mínimo privilegio: cada servicio y cada pipeline con permisos solo para lo suyo; nada de usar la cuenta raíz. ([AWS IAM: Security best practices][aws-iam])
- Tokens del CI con permisos mínimos y vencimiento.
- Registro de auditoría de las acciones del staff en el backoffice.
- Alertas de facturación: un gasto que se dispara suele ser la primera señal de una cuenta comprometida.

### Pensá como atacante (un rato)

*Threat modeling* suena pesado, pero puede ser una reunión de una hora con cuatro preguntas ([Adam Shostack][shostack-4q]):

1. ¿En qué estamos trabajando?
2. ¿Qué puede salir mal?
3. ¿Qué vamos a hacer al respecto?
4. ¿Hicimos un buen trabajo?

Ejemplos que aplican a casi cualquier TP: ¿qué pasa si alguien fuerza el endpoint de recupero de contraseña? ¿Si reutiliza un link o token vencido? ¿Si sube un archivo con malware? ¿Si un usuario suspendido sigue con una sesión o un socket abierto? ¿Si repite un request de pago? ([Threat Modeling: What, Why, and How?][shostack-whitepaper])

Las cuatro preguntas ordenan la conversación. Para que el "¿qué puede salir mal?" sea más sistemático, sirve recorrer los activos, los actores y los límites de confianza con una guía como [STRIDE][stride]: suplantación, manipulación, repudio, filtración de información, denegación de servicio y escalada de privilegios.

### Usá checklists que ya existen

- [OWASP Top 10][owasp-top10]: los riesgos más comunes en aplicaciones web.
- [OWASP API Security Top 10][owasp-api]: específico para APIs. *Broken Object Level Authorization* (acceder al recurso de otro cambiando un ID) es el número uno, y es muy fácil de cometer en cualquier recurso que tenga dueño (pedidos, publicaciones, mensajes). Conviene distinguir autenticación (quién sos), autorización por función (qué rol tenés), por objeto (si ese recurso es tuyo) y por propiedad (qué campos podés ver o cambiar). Un test simple que vale oro: el usuario A pide el recurso de B cambiando el ID, y la respuesta tiene que ser un rechazo aunque A esté autenticado. Ver también la [guía de Auth][guia-auth].
- [OWASP ASVS][owasp-asvs]: un estándar verificable por niveles. El nivel 1 es una buena meta para un producto que recién arranca.
- [OWASP Cheat Sheet Series][owasp-cheatsheets]: guías concretas por tema (sesiones, subida de archivos, WebSockets, etc.).

### Secretos y dependencias

- Rotación: ¿cuánto tardan en rotar el secreto de JWT o la API key de pagos si se filtra? ¿Lo hicieron alguna vez? ([OWASP Secrets Management][owasp-secrets])
- [GitHub Secret Scanning][gh-secret-scanning] y [Dependabot][gh-dependabot] detectan lo obvio (su disponibilidad depende del tipo de repo y del plan). No cubren todo: también importan las vulnerabilidades de las imágenes Docker, fijar versiones, las dependencias transitivas y los permisos de los workflows del CI.
- Cadena de suministro: ¿saben qué dependencias terminan en cada imagen? Una [SBOM][cisa-sbom] lo responde, y [SLSA][slsa] propone niveles para asegurar el proceso de build.

### Abuso no es lo mismo que ataque

En cualquier producto abierto al público, buena parte del daño no viene de un hacker sino de usuarios legítimos haciendo cosas dañinas: spam, cuentas falsas creadas en masa, fraude, manipulación de reputación, abuso de promociones, scraping. La disciplina que se ocupa de esto se llama **Trust & Safety**, y es distinta de la seguridad informática: protege a los usuarios y la integridad del producto. ([TSPA: Trust & Safety Fundamentals][tspa])

El rate limiting del gateway es la primera línea, pero no alcanza: limitar por IP castiga a quienes comparten red (una facultad, una oficina, una red móvil) y no frena a quien rota IPs. Hace falta combinarlo con límites por cuenta, verificación, señales de comportamiento y, sobre todo, buenas herramientas de moderación.

---

## 3. Legal y confianza

> Esta sección orienta; no es asesoramiento legal. Un producto real con usuarios en Argentina necesita revisar estos temas con un profesional.

### Datos personales en Argentina

Casi cualquier TP guarda emails, nombres, direcciones, IPs, historial de actividad y, según el producto, mensajes privados, datos de pago o ubicación. Eso es **tratamiento de datos personales**, y en Argentina lo regula la [Ley 25.326][ley-25326]. Algunas obligaciones que impactan directamente en el diseño:

- **Bases legales y finalidad**: la regla general es el consentimiento libre, expreso e informado, pero la ley prevé excepciones (art. 5), por ejemplo cuando los datos son necesarios para cumplir el contrato con el usuario. En todos los casos hay que decir qué datos se recolectan y para qué, y no usarlos para otra cosa.
- **Derechos de acceso, rectificación y supresión**: el usuario puede pedir ver sus datos y que se borren. ¿Una arquitectura de microservicios puede borrar a una persona de todas las bases, incluyendo réplicas alimentadas por eventos? Ojo: la supresión tiene límites (art. 16). Puede haber obligación legal de conservar ciertos registros, como los de una transacción. Borrar todo no siempre es lo correcto.
- **Transferencias internacionales** (art. 12): si usan proveedores de cloud, email, analytics o IA fuera del país, están transfiriendo datos personales. La ley lo restringe según el nivel de protección del país de destino, con excepciones. Revisen dónde están sus proveedores.
- **Seguridad**: medidas técnicas y organizativas adecuadas.
- **Registro de bases de datos**: la ley prevé la inscripción de bases de datos ante la [Agencia de Acceso a la Información Pública (AAIP)][aaip] (art. 21). Si aplica a su caso y cómo, conviene consultarlo.

La AAIP publicó lineamientos de buenas prácticas de privacidad para quienes desarrollan aplicaciones. Para contrastar con otra jurisdicción muy influyente, ver el enfoque europeo ([GDPR, Comisión Europea][gdpr]), que muchas plataformas adoptan como piso global.

**Privacy by design**, en concreto: minimizar lo que guardan, definir cuánto tiempo retienen mensajes y logs, no loguear datos sensibles y tener un flujo real de "borrar mi cuenta".

### Si vendés algo, hay consumidores

Casi todos los TPs tienen un flujo de pagos: compras, suscripciones, planes premium. Eso es contratación a distancia con consumidores, y en Argentina la [Ley 24.240 de Defensa del Consumidor][ley-24240] distingue dos derechos que conviene no mezclar:

- **Arrepentimiento**: en un contrato a distancia, el consumidor puede revocar la aceptación dentro de los 10 días corridos, sin costo ni explicación (art. 34 de la ley y art. 1110 del Código Civil y Comercial).
- **Baja**: en un servicio continuo, como una suscripción, el consumidor puede darse de baja por el mismo medio por el que lo contrató (art. 10 ter).

La [Disposición 954/2025][boton-baja] regula cómo tienen que verse y funcionar ambos botones en sitios y apps: visibles, sin registración ni trámites previos y con un código que confirme la solicitud. Reemplazó a las resoluciones 316/2018 y 424/2020. Los detalles dependen del modelo comercial concreto, así que validen su caso. Más allá de la obligación legal, cancelar fácil es una decisión de confianza: si cuesta irse, la gente desconfía antes de entrar.

### Moderación de contenido

Si el producto tiene contenido generado por usuarios (publicaciones, reseñas, mensajes, fotos), tiene que responder:

- ¿Qué contenido no se permite? (términos de servicio y normas de la comunidad)
- ¿Cómo se denuncia, quién revisa y en cuánto tiempo?
- ¿Qué pasa con contenido claramente ilegal? ¿Se preserva evidencia?
- ¿El usuario sancionado se entera de por qué y puede apelar?

La moderación también es diseño: estados de una denuncia (recibida, en revisión, resuelta, apelada), colas de revisión, preservación de evidencia, reglas de reincidencia y herramientas en el backoffice.

Los [Santa Clara Principles][santa-clara] son una referencia de la sociedad civil sobre transparencia y debido proceso en moderación. Para ver cómo lo comunica una plataforma real, miren por ejemplo el [informe de transparencia de Discord][discord-transparency].

Además, **las tiendas lo piden**: tanto [Apple][apple-guidelines] (sección 1.2, *User-Generated Content*) como [Google Play][play-ugc] exigen, para apps con contenido generado por usuarios, mecanismos de denuncia, bloqueo y moderación. Los requisitos exactos dependen del tipo de contenido, pero las historias de moderación y denuncias no son un adorno: sin ellas es probable que la app no pase la revisión.

*Última revisión de esta sección: noviembre de 2026. La normativa y las políticas de las tiendas cambian; verifiquen la versión vigente.*

---

## 4. Negocio y producto

### Cuánto cuesta de verdad

La [guía de Cloud Computing][guia-cloud] cubre los free tiers. La pregunta de producción es otra: **¿cuánto cuesta un usuario activo por mes?** Sumen cómputo, bases, colas o pub/sub, egreso de red (el más traicionero, sobre todo con media o tiempo real), almacenamiento de archivos y cualquier servicio externo que cobre por uso (email, push, video, mapas, IA). Con eso pueden estimar el costo con 100, 1.000 y 10.000 usuarios.

Ojo con dividir la factura por la cantidad de usuarios: hay **costos fijos** (un servicio con precio base), **variables** (por request, por GB, por email) y **escalonados** (la base que hay que agrandar al pasar cierto umbral). Lo que importa para decidir es el **costo marginal**: cuánto cuesta servir a un usuario más, o una operación principal más. Y no se olviden de lo que no es producción: staging, observabilidad, backups. Tampoco de que muchos free tiers "duermen" el servicio cuando no hay tráfico, algo aceptable para una demo pero no para producción.

- [FinOps Foundation: What is FinOps][finops]: la práctica de que ingeniería, finanzas y producto decidan juntos sobre el gasto en la nube.
- [AWS Well-Architected: Cost Optimization][aws-cost].
- Una voz en contra para pensar: [Why we're leaving the cloud][dhh-cloud], de DHH. No es que tenga razón para su caso; sirve para ver que "la nube" es una decisión de negocio y no un default.

### ¿Los números cierran?

Con el costo por usuario estimado, la pregunta siguiente es si el modelo de ingresos (comisión por venta, suscripción, plan premium, publicidad) lo cubre. Pero que el ingreso por usuario supere el costo de infraestructura no alcanza: en productos digitales suelen decidir la viabilidad cuánto cuesta conseguir un cliente (**CAC**), cuánto deja a lo largo de su vida (**LTV**) y cuántos se van por mes (**churn**). Para pensarlo:

- [Startup Business Models and Pricing (YC)][vid-yc-pricing] y [Startup Pricing 101 (Kevin Hale)][vid-hale]: precio basado en valor, no en costo.
- Las tiendas cobran comisión por bienes digitales vendidos dentro de la app y, salvo excepciones, exigen usar su sistema de pagos. Revisen el [Small Business Program de Apple][apple-small] y las [tarifas de Google Play][play-fees]. Eso cambia el número final y la integración con Stripe o MercadoPago.

### Medir si a la gente le sirve

Que la app esté arriba no significa que alguien la use. Métricas de producto básicas:

- **Activación**: ¿qué porcentaje de los que se registran hace la acción clave del producto (primera compra, primera publicación, primer mensaje) en su primer día?
- **Retención por cohortes**: de los que entraron la semana X, ¿cuántos siguen activos 1, 4 y 12 semanas después?
- **Engagement**: cuántas veces por semana vuelve un usuario activo y qué hace.

Cuidado: estas métricas miden comportamiento, no necesariamente valor. Que alguien vuelva mucho a una app no significa que resuelva su problema. Sirve elegir una **North Star**, una métrica que capture el valor que recibe el usuario (por ejemplo, compras completadas por semana), desconfiar de las métricas de vanidad (registros totales, descargas) y definir los eventos *antes* de instrumentar. ([Amplitude: North Star Playbook][northstar])

Fuentes: [Consumer Startup Metrics (YC)][vid-yc-metrics], [How To Keep Your Users (YC)][vid-yc-retention], [16 Startup Metrics (a16z)][a16z-metrics]. Muchas veces el TP pide métricas para el backoffice; esto es lo mismo, pero para el equipo que construye el producto.

Y un clásico sobre cómo consigue usuarios un producto que arranca: [Do Things That Don't Scale][pg-dts], de Paul Graham.

### Publicar en las tiendas

El APK del TP no es una app publicada. Para llegar a Play Store y App Store:

- Cuentas de desarrollador (Google cobra un pago único; Apple, una suscripción anual).
- Las cuentas personales nuevas de Google Play tienen que hacer una **prueba cerrada con testers reales durante un período mínimo** antes de poder publicar. Revisen los [requisitos vigentes][play-testing].
- Revisión de la app, política de privacidad publicada, declaración de datos recolectados y clasificación por edad.

### Cobrar de verdad

Para cobrar dinero real en Argentina hace falta formalizarse: una persona o sociedad con CUIT, una categoría fiscal (por ejemplo, [monotributo][arca-monotributo] o una sociedad), emitir [factura electrónica][arca-fe] y una cuenta en la pasarela de pagos (MercadoPago, Stripe u otra) a nombre de alguien. Es el paso concreto que separa una demo con pagos de prueba de un negocio. Conviene consultarlo con un contador.

### ¿De quién es el producto?

Si el grupo quiere seguir después de la materia, antes que la arquitectura hay que acordar otras cosas: quiénes son los dueños y en qué proporción, bajo qué licencia queda el código, qué pasa si alguien se va, quién paga la infraestructura mientras no haya ingresos y a nombre de quién están las cuentas (cloud, tiendas, dominio, pasarela de pagos). Ponerlo por escrito temprano evita los conflictos más comunes entre fundadores.

### Hablar con los usuarios cuando algo falla

Una página de estado y avisos dentro de la app sirven para esto: comunicar a tiempo, con honestidad, qué está pasando y cuándo se espera resolverlo. Un incidente bien comunicado genera más confianza que uno escondido. Un buen aviso dice qué funcionalidades y qué usuarios están afectados, qué alternativas hay, cuándo se va a actualizar la información y, en sistemas transaccionales, **qué pasa con las operaciones que quedaron en estado incierto**: si alguien pagó y no recibió confirmación, hay que resolver qué pasó con esa transacción y evitar cobrarle dos veces. ([Atlassian: Incident communication][atlassian-comms])

---

## Cuando las recomendaciones chocan

Saber qué es un SLO, un canary o un backup restaurable no alcanza: lo difícil es decidir cuando esas recomendaciones entran en conflicto. Algunas preguntas para discutir en el equipo:

- ¿Conviene alta disponibilidad si su costo compromete la viabilidad del producto?
- ¿Cómo se resuelve un pedido de borrado cuando hay obligación legal de conservar parte de esos datos?
- ¿Cuándo tienen sentido los microservicios y cuándo conviene simplificar?
- ¿Cómo se prioriza deuda técnica frente a funcionalidades nuevas?
- ¿Qué nivel de seguridad es proporcional al riesgo?
- ¿Cuándo una funcionalidad está suficientemente validada para liberarla?

No hay respuestas universales; dependen del contexto. Estos factores ayudan a calibrar cuánto rigor necesita cada cosa:

| Factor | Bajo | Alto |
| --- | --- | --- |
| Criticidad del producto | Una herramienta interna | Pagos, salud |
| Sensibilidad de los datos | Datos públicos | Mensajes privados, datos financieros |
| Cantidad de usuarios | Decenas | Miles o más |
| Impacto económico de una falla | Molestia | Pérdida de dinero de terceros |
| Exigencias regulatorias | Pocas | Muchas |
| Capacidad operativa del equipo | Personas a tiempo parcial | Un equipo dedicado |

Una forma honesta de cerrar la discusión es dejar escrito qué riesgos identificaron, cuáles mitigaron y **cuáles decidieron aceptar**, y por qué. Un ADR es un buen formato para eso.

---

## Checklist: production readiness

Una autoevaluación para el grupo, no una lista para tildar. Para cada ítem respondan tres preguntas: **¿existe?**, **¿lo probamos?** y **¿lo podemos mostrar?** Un ítem que existe pero nunca se probó vale poco.

Los ítems marcados con **(RNF)** suelen estar entre los requisitos no funcionales del TP grupal: si tu enunciado los pide, no son opcionales.

**P0: indispensable para operar con usuarios y datos reales**
- [ ] Restauramos un backup de cada base en un entorno limpio, incluidos los archivos del bucket.
- [ ] Probamos un rollback y sabemos cuánto tarda.
- [ ] Las cuentas cloud, GitHub y el backoffice tienen MFA y permisos mínimos.
- [ ] No hay secretos en el repo y sabemos rotar cada uno. **(RNF)**
- [ ] Hay una alerta sobre el flujo principal que le llega a una persona concreta, con un runbook.
- [ ] Un usuario no puede acceder a recursos de otro cambiando un ID (autorización por objeto).
- [ ] Las operaciones de pago son idempotentes. **(RNF)**
- [ ] Hay términos de servicio y política de privacidad publicados.

**P1: necesario según el riesgo y el modelo de negocio**
- [ ] Tenemos al menos dos SLOs escritos sobre lo que el usuario percibe.
- [ ] Hay un entorno de prueba previo a producción y no usa datos reales.
- [ ] Hicimos una sesión de threat modeling sobre los flujos críticos.
- [ ] Hay escaneo de dependencias, imágenes y secretos activo. **(RNF, en parte)**
- [ ] Un usuario puede descargar y borrar sus datos, respetando lo que haya que conservar.
- [ ] Si hay suscripciones, darse de baja es tan fácil como suscribirse.
- [ ] Si hay contenido de usuarios, hay un flujo de denuncia con responsable y tiempo de respuesta.
- [ ] Estimamos el costo marginal por usuario y el costo con 10× usuarios.

**P2: madurez y evolución**
- [ ] Alertamos por velocidad de consumo del presupuesto de errores.
- [ ] Liberamos con feature flags o canary, y borramos los flags viejos.
- [ ] Hicimos al menos un postmortem, aunque sea de un incidente chico.
- [ ] Tenemos una North Star y medimos activación y retención por cohortes.
- [ ] Sabemos si el modelo de ingresos cubre los costos, después de comisiones.
- [ ] Sabemos qué falta para publicar en las tiendas y para cobrar formalmente.

---

## Recursos de cátedra

- [Guía de Cloud Computing][guia-cloud]: proveedores, free tiers y consejos de presupuesto.
- [Guía de API Gateway + Auth/Authz][guia-auth].
- [Referencias técnicas][ref-tecnicas]: sagas, outbox, idempotencia, contract testing y trazabilidad.
- [De TP a producción, parte 2][parte2]: un flujo de punta a punta, consistencia distribuida, calidad en producción y casos transversales.
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
[parte2]: https://ingenieria-del-software-2.github.io/blog/2026-11-17-de-tp-a-produccion-parte-2/
[ref-tecnicas]: https://ingenieria-del-software-2.github.io/tps/referencias-tecnicas/
[sre-alerting]: https://sre.google/workbook/alerting-on-slos/
[12f-parity]: https://12factor.net/dev-prod-parity
[aws-dr]: https://docs.aws.amazon.com/wellarchitected/latest/reliability-pillar/plan-for-disaster-recovery-dr.html
[atlassian-sev]: https://www.atlassian.com/incident-management/kpis/severity-levels
[vid-schenkelman]: https://www.youtube.com/watch?v=2LzoAb0Invw
[vid-pedreira]: https://www.youtube.com/watch?v=P7an6McRAIg
[aws-iam]: https://docs.aws.amazon.com/IAM/latest/UserGuide/best-practices.html
[stride]: https://learn.microsoft.com/en-us/azure/security/develop/threat-modeling-tool-threats
[tspa]: https://www.tspa.org/curriculum/ts-fundamentals/
[northstar]: https://amplitude.com/books/north-star
[arca-monotributo]: https://www.arca.gob.ar/monotributo/
[arca-fe]: https://www.arca.gob.ar/fe/

