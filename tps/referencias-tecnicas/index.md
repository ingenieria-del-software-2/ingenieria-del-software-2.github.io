# Referencias Técnicas

Este documento reúne conceptos técnicos aplicables a la materia.

---

## Arquitectura y Diseño

### Microservicios

Un estilo arquitectónico en el que el sistema se descompone en servicios pequeños e independientes, con responsabilidades delimitadas y capacidad de despliegue autónomo. Cada servicio suele administrar sus propios datos y comunicarse mediante contratos explícitos.

- [Microservices — Martin Fowler](https://martinfowler.com/articles/microservices.html)
- [Microservices.io — Patterns](https://microservices.io/patterns/index.html)

### Domain-Driven Design (DDD)

Enfoque de diseño que alinea el modelo de software con el dominio del negocio. Entre sus conceptos principales se encuentran los **Bounded Contexts** (límites del dominio), **Entities**, **Value Objects** y el lenguaje ubicuo para nombrar los elementos del sistema.

- [DDD — Domain-Driven Design (Martin Fowler)](https://martinfowler.com/bliki/DomainDrivenDesign.html)
- [DDD Reference (Eric Evans)](https://www.domainlanguage.com/ddd/reference/)

### API Gateway

Componente que actúa como punto único de entrada al sistema desde los clientes. Puede centralizar el enrutamiento hacia los servicios backend, la validación de tokens de autenticación y el rate limiting. Su adopción implica trade-offs de acoplamiento, disponibilidad y operación que pueden registrarse en un ADR.

- [API Gateway Pattern](https://microservices.io/patterns/apigateway.html)
- [NGINX como API Gateway](https://www.f5.com/company/blog/nginx/deploying-nginx-plus-as-an-api-gateway-part-1)
- [Kong Gateway (open source)](https://konghq.com/products/kong-gateway)

### C4 Model

Framework para documentar la arquitectura de software en cuatro niveles de abstracción: Contexto, Contenedores, Componentes y Código. Los diagramas pueden generarse con herramientas como PlantUML o Structurizr.

- [C4 Model](https://c4model.com/)
- [Structurizr (herramienta)](https://structurizr.com/)

### Architecture Decision Records (ADR)

Documento corto que registra una decisión de diseño relevante. Suele incluir el contexto del problema, la decisión tomada, las alternativas consideradas y sus consecuencias.

- [ADR GitHub](https://adr.github.io/)
- [Plantilla de ADR (Michael Nygard)](https://github.com/architecture-decision-record/architecture-decision-record/blob/main/locales/en/templates/decision-record-template-by-michael-nygard/index.md)

---

## Mensajería en Tiempo Real y Voz

### WebSockets

Protocolo que mantiene una conexión bidireccional persistente entre cliente y servidor, a diferencia del modelo request/response de HTTP. Se utiliza para entregar mensajes en tiempo real y propagar eventos de presencia, entre otros casos.

- [WebSocket — MDN](https://developer.mozilla.org/en-US/docs/Web/API/WebSockets_API)
- [Socket.IO](https://socket.io/) — librería que agrega reconexión automática y fallback sobre WebSockets.

### Pub/Sub para mensajería distribuida

Patrón de mensajería en el que los productores publican eventos en un canal (topic) sin conocer a los consumidores, y los consumidores se suscriben a los canales que les interesan. En un servicio de mensajería distribuido permite que la entrega funcione correctamente cuando el servicio corre en múltiples instancias: cada instancia mantiene sus propias conexiones WebSocket y necesita conocer los mensajes publicados por las demás para reenviarlos a los clientes conectados localmente.

Opciones habituales con diferentes modelos de entrega y persistencia:

- **RabbitMQ** — message broker con colas persistentes; agrega garantías de entrega que Redis Pub/Sub no tiene.
- **Amazon SQS** — servicio administrado de colas. Puede combinarse con Amazon SNS para distribuir cada mensaje a múltiples colas mediante un patrón de fan-out.
- **Redis Pub/Sub** — mensajería efímera: si no hay un suscriptor activo en el momento de la publicación, el mensaje se pierde.
- **Kafka** — *durable log* distribuido: persiste los mensajes y permite releerlos. Puede utilizarse para reconstruir estado a cambio de una mayor complejidad operativa.

La elección depende de las garantías de entrega, persistencia, latencia y complejidad operativa requeridas por el sistema.

- [RabbitMQ](https://www.rabbitmq.com/tutorials/tutorial-three-python)
- [Amazon SQS](https://docs.aws.amazon.com/AWSSimpleQueueService/latest/SQSDeveloperGuide/welcome.html)
- [Fan-out con Amazon SNS y SQS](https://docs.aws.amazon.com/sns/latest/dg/sns-sqs-as-subscriber.html)
- [Redis Pub/Sub](https://redis.io/docs/latest/develop/pubsub/)
- [Kafka](https://kafka.apache.org/documentation)

### WebRTC

Estándar para comunicación de audio, video y datos en tiempo real directamente entre navegadores o dispositivos. Es una tecnología de referencia para implementar canales de voz y videollamadas. Tiene dos modelos de topología con implicancias de escalabilidad muy distintas:

- **P2P / malla (mesh)**: cada participante establece una conexión directa con cada uno de los demás. Funciona bien para 1 a 1 (llamadas privadas), pero no escala: con N participantes se necesitan N·(N-1)/2 conexiones, por lo que cada dispositivo transmite y recibe N-1 streams simultáneos. Para canales de voz grupales de más de un puñado de personas deja de ser viable.
- **SFU (Selective Forwarding Unit)**: un servidor central recibe el stream de cada participante y lo reenvía al resto, sin decodificar ni mezclar el audio/video. Cada dispositivo solo mantiene una conexión (con el SFU), independientemente de cuántos participantes haya. Es el modelo que escala para canales de voz grupales.

Un tercer modelo, mixing/MCU, utiliza un servidor que decodifica y mezcla todos los streams en uno solo, con un mayor costo de cómputo en el servidor.

**Opciones concretas:**

- **WebRTC gestionado como servicio** (SFU administrado por un proveedor): LiveKit, Daily o Agora. Reduce la infraestructura que debe operar el equipo.
- **SFU propio**: soluciones como mediasoup permiten controlar la infraestructura, pero requieren resolver TURN/STUN para NAT traversal, exposición de puertos UDP y escalado del media server.

**Librerías cliente:**

- [react-native-webrtc](https://github.com/react-native-webrtc/react-native-webrtc) — implementación de las APIs de WebRTC para React Native (app mobile). Requiere validar compatibilidad con el flujo de desarrollo elegido (Expo Go vs bare workflow).
- [WebRTC API — MDN](https://developer.mozilla.org/en-US/docs/Web/API/WebRTC_API) — API nativa del navegador, disponible sin librerías adicionales para el cliente web.

**Referencias generales:**

- [WebRTC.org](https://webrtc.org/)
- [mediasoup](https://mediasoup.org/)
- [LiveKit — documentación](https://docs.livekit.io/intro/overview/)
- [Daily — documentación](https://docs.daily.co/)
- [Agora RTC — documentación](https://docs.agora.io/en/realtime-media/rtc)
- [Topologías WebRTC — RFC 7667](https://datatracker.ietf.org/doc/html/rfc7667#section-5)

---

## Resiliencia y Patrones Distribuidos

### Saga Pattern

Patrón para manejar transacciones distribuidas que involucran múltiples servicios sin usar transacciones ACID globales. Existen dos variantes: **coreografía** (cada servicio reacciona a eventos de otros) y **orquestación** (un coordinador central dirige el flujo). Las operaciones completadas se revierten mediante acciones compensatorias cuando ocurre un fallo parcial.

- [Saga Pattern — Microservices.io](https://microservices.io/patterns/data/saga.html)
- [Saga Orchestration vs Choreography](https://microservices.io/post/microservices/2019/07/09/developing-sagas-part-1.html)

### Circuit Breaker

Patrón que evita que un servicio siga intentando llamar a otro que está fallando, cortando el circuito temporalmente y fallando rápido. Tiene tres estados: **cerrado** (operación normal), **abierto** (falla rápida sin intentar la llamada) y **semi-abierto** (prueba si el servicio se recuperó).

- [Circuit Breaker — Martin Fowler](https://martinfowler.com/bliki/CircuitBreaker.html)
- [Resilience4j (Java)](https://resilience4j.readme.io/docs/circuitbreaker)
- [circuitbreaker (Python)](https://pypi.org/project/circuitbreaker/)

### Retry con backoff exponencial

Estrategia para reintentar una operación fallida esperando un tiempo creciente entre intentos (ej: 1s, 2s, 4s, 8s...) más un componente aleatorio (jitter) para evitar picos de carga sincronizados. Es adecuada para operaciones idempotentes que fallan por condiciones transitorias.

- [Exponential Backoff and Jitter (AWS)](https://aws.amazon.com/blogs/architecture/exponential-backoff-and-jitter/)

### Idempotencia

Una operación es idempotente si ejecutarla múltiples veces produce el mismo resultado que ejecutarla una sola vez. Es especialmente relevante en operaciones que modifican estado y pueden reintentarse, como pagos, actualizaciones de inventario o emisión de eventos. Una implementación habitual usa un **idempotency key** por request para detectar duplicados.

- [Idempotency — Stripe API Docs](https://docs.stripe.com/api/idempotent_requests)
- [Making retries safe with idempotent APIs — AWS Builders' Library](https://aws.amazon.com/builders-library/making-retries-safe-with-idempotent-APIs/)

### Fallos transitorios vs. permanentes

- **Fallo transitorio**: condición temporal que puede resolverse sin intervención, como un timeout de red o un servicio momentáneamente no disponible. Puede tratarse con reintentos y backoff.
- **Fallo permanente**: condición que requiere un cambio en los datos o una intervención, como credenciales inválidas o una operación rechazada. Puede requerir compensar el flujo o notificar al usuario.

Clasificar correctamente el fallo evita reintentos inútiles y permite definir una estrategia de recuperación adecuada.

---

## Testing

### Pirámide de Tests

Una suite de tests puede combinar distintos niveles:
1. **Unitarios**: validan lógica de negocio de cada servicio de forma aislada.
2. **Integración**: validan la interacción entre servicios core y sus dependencias.
3. **End-to-End (E2E)**: validan flujos completos desde la entrada del sistema hasta sus dependencias y resultados observables.

- [Test Pyramid — Martin Fowler](https://martinfowler.com/bliki/TestPyramid.html)

### Contract Testing

Pruebas que verifican que dos servicios que se comunican entre sí cumplen el contrato acordado. El objetivo es detectar incompatibilidades entre servicios sin necesidad de un entorno completo levantado.

Algunas herramientas utilizadas para este propósito son:

- **Pact** — enfoque consumer-driven: el consumer define sus expectativas y el provider las verifica. Mayor expresividad, mayor curva de entrada.
- **Schemathesis** — genera tests automáticamente desde la spec OpenAPI y los ejecuta contra el servicio real. Muy bajo esfuerzo de configuración.
- **Specmatic** — ejecuta la especificación OpenAPI como contrato contra la implementación y también permite generar servicios virtuales desde el mismo contrato.
- **oasdiff** — detecta breaking changes entre versiones de la spec. Útil para incorporar en CI.

- [Pact — Contract Testing](https://pact.io/)
- [Schemathesis](https://schemathesis.readthedocs.io/)
- [Specmatic — Contract Testing](https://docs.specmatic.io/contract_driven_development/contract_testing)
- [oasdiff](https://github.com/oasdiff/oasdiff)

### Pruebas de carga y estrés (k6 / Artillery)

Pruebas que evalúan el comportamiento del sistema bajo carga sostenida (load testing) o picos extremos (stress testing). Suelen observarse métricas de latencia (p50, p95, p99), throughput y tasa de errores sobre endpoints y flujos críticos.

- [k6 — Load Testing](https://grafana.com/docs/k6/latest/)
- [Artillery](https://www.artillery.io/)
- [k6 — WebSocket testing](https://grafana.com/docs/k6/latest/using-k6/protocols/websockets/) — relevante para sistemas con comunicación en tiempo real.

### Mutation Testing

Técnica que mide la calidad real de una suite de tests, más allá del porcentaje de cobertura. Introduce pequeñas modificaciones automáticas al código ("mutantes": invertir una condición, cambiar un operador, alterar un valor límite) y corre la suite contra cada uno. Un mutante "muere" si algún test falla al detectarlo; si ningún test falla, "sobrevive" — señal de que la suite ejecuta esa línea pero no verifica realmente su comportamiento. El **mutation score** (% de mutantes muertos) es una medida más honesta de calidad de tests que la cobertura de líneas.

Es una técnica costosa en tiempo de ejecución porque corre la suite contra múltiples mutantes. Puede aplicarse de forma selectiva o periódica para equilibrar tiempo de ejecución y señal obtenida.

- **mutmut** (Python) — [Documentación](https://mutmut.readthedocs.io/)
- **Stryker** (JavaScript/TypeScript) — [Documentación](https://stryker-mutator.io/docs/)
- **PIT (Pitest)** (Java) — [Documentación](https://pitest.org/)
- [Mutation Testing — revisión académica](https://doi.org/10.1109/TSE.2010.62)

### SAST (Static Application Security Testing)

Análisis estático del código fuente para detectar vulnerabilidades de seguridad sin ejecutar el programa. Puede integrarse al pipeline de CI. Algunas herramientas son Bandit (Python), ESLint security plugin (Node.js) y Semgrep (multi-lenguaje).

- [Bandit (Python)](https://bandit.readthedocs.io/)
- [Semgrep](https://semgrep.dev/docs/)

---

## Observabilidad

### Health Checks

Los probes de liveness y readiness tienen semánticas diferentes. Un endpoint como **`/livez`** valida que el proceso está vivo sin consultar dependencias externas, mientras **`/readyz`** indica si puede atender requests y suele validar dependencias críticas como la base de datos.

- [Liveness, Readiness y Startup Probes — Kubernetes](https://kubernetes.io/docs/concepts/workloads/pods/probes/)

### Logs estructurados

Los logs estructurados utilizan un esquema estable y campos tipados, habitualmente codificados como JSON, con niveles configurables (Error, Warn, Info, Debug).

- [Structured Logging — OpenTelemetry](https://opentelemetry.io/docs/concepts/signals/logs/#structured-unstructured-and-semistructured-logs)

### Trazabilidad distribuida

Un **trace/correlation ID** permite rastrear una operación a través de múltiples servicios cuando se propaga entre ellos. Las herramientas de observabilidad pueden indexar estos identificadores y relacionar requests, conexiones y eventos.

- [Distributed Traces — OpenTelemetry](https://opentelemetry.io/docs/concepts/observability-primer/#distributed-traces)

### Prometheus y Grafana

Prometheus recolecta métricas de runtime, como latencia, tasa de errores y uso de recursos, que los servicios pueden exponer mediante un endpoint `/metrics`. Grafana permite consultarlas y visualizarlas en dashboards.

- [Prometheus](https://prometheus.io/docs/introduction/overview/)
- [Grafana](https://grafana.com/docs/grafana/latest/)

---

## APIs y Contratos

### OpenAPI / Swagger

Especificación estándar para describir APIs HTTP. Permite documentar endpoints, parámetros, cuerpos de request y response, esquemas de datos y códigos de estado, además de generar documentación y herramientas a partir del contrato.

- [OpenAPI Specification](https://spec.openapis.org/oas/latest.html)
- [Swagger UI](https://swagger.io/open-source/swagger-ui/)

### REST

Estilo arquitectónico para sistemas distribuidos. En APIs HTTP suele expresarse mediante recursos, una interfaz uniforme, métodos HTTP y códigos de estado con semántica definida.

- [REST — tesis de Roy Fielding](https://ics.uci.edu/~fielding/pubs/dissertation/rest_arch_style.htm)
- [HTTP Status Codes](https://developer.mozilla.org/en-US/docs/Web/HTTP/Reference/Status)

---

## Frontend y Mobile

React y React Native son alternativas para construir clientes web y aplicaciones móviles, respectivamente.

### React

Biblioteca de JavaScript para construir interfaces de usuario declarativas basadas en componentes. Puede combinarse con sistemas de diseño o librerías de componentes.

- [React — Documentación oficial](https://react.dev/)
- [React Router — Navegación en SPAs](https://reactrouter.com/)

### React Native

Framework para construir aplicaciones móviles nativas usando React. Permite compartir lógica entre Android e iOS. Expo simplifica la configuración y el desarrollo, mientras que un bare workflow ofrece mayor control sobre módulos nativos.

- [React Native — Documentación oficial](https://reactnative.dev/docs/getting-started)
- [Expo — Crear un proyecto](https://docs.expo.dev/get-started/create-a-project/)
- [React Navigation — Getting Started](https://reactnavigation.org/docs/getting-started)

### Electron

Framework que empaqueta una aplicación web (Chromium + Node.js) como aplicación de escritorio, exponiendo APIs adicionales del sistema operativo (notificaciones nativas, acceso a periféricos, etc.). Permite reutilizar un cliente web como base. El empaquetado no es uniforme entre sistemas operativos: Windows, macOS y Linux requieren configuración de build separada.

- [Electron — Documentación oficial](https://www.electronjs.org/docs/latest/)
- [Electron Forge — Empaquetado y distribución](https://www.electronforge.io/)

### Manejo de estado y datos del servidor

El estado global de una aplicación incluye datos como sesión y preferencias. El estado derivado de llamadas a una API agrega necesidades de caché, reintentos, invalidación y representación de estados de carga o error.

- [React Query (TanStack Query)](https://tanstack.com/query/latest)
- [Zustand — Estado global liviano](https://zustand.docs.pmnd.rs/learn/getting-started/introduction)
- [Redux Toolkit](https://redux-toolkit.js.org/)

### Resiliencia en la capa de presentación

Una interfaz resiliente representa explícitamente los estados de carga, error y latencia, ofrece mensajes accionables ante fallos de red y mantiene un comportamiento coherente frente a timeouts. TanStack Query y SWR incluyen mecanismos para modelar esos estados y configurar reintentos.

- [TanStack Query — Reintentos](https://tanstack.com/query/latest/docs/framework/react/guides/query-retries)
- [NetInfo — Estado de conectividad](https://docs.expo.dev/versions/latest/sdk/netinfo/)

---

## Gateway de Pagos

Los gateways de pago exponen APIs para iniciar, confirmar y consultar pagos. Sus entornos de prueba o sandbox permiten desarrollar y validar la integración sin procesar dinero real.

Dos proveedores con documentación y entornos de prueba son:

### Stripe

Ofrece SDKs oficiales para distintos lenguajes, entornos de prueba y tarjetas predefinidas para simular resultados. Su API de idempotency keys es una implementación de referencia del patrón de idempotencia.

- [Stripe — Testing](https://docs.stripe.com/testing)
- [Stripe Checkout — Quickstart](https://docs.stripe.com/checkout/quickstart)
- [Stripe — SDKs](https://docs.stripe.com/sdks)

### MercadoPago

Ofrece operación local en Argentina, cuentas de prueba y tarjetas para simular distintos resultados de pago.

- [MercadoPago — Developers](https://www.mercadopago.com.ar/developers/es)
- [MercadoPago — Cuentas de prueba](https://www.mercadopago.com.ar/developers/es/docs/your-integrations/test/accounts)
- [MercadoPago — Tarjetas de prueba](https://www.mercadopago.com.ar/developers/es/docs/your-integrations/test/cards)

---

## Mobile y Notificaciones

### Firebase Cloud Messaging (FCM)

Servicio de Google para enviar notificaciones push a dispositivos Android, iOS y clientes web. Un backend publica el mensaje en FCM, que gestiona su entrega al dispositivo.

- [Firebase Cloud Messaging](https://firebase.google.com/docs/cloud-messaging)
- [FCM con React Native](https://rnfirebase.io/messaging/usage)
- [Web Push API](https://developer.mozilla.org/en-US/docs/Web/API/Push_API) — equivalente para notificaciones push desde el cliente web.

---

## Seguridad y Privacidad

### Privacy by Design

Principio que incorpora la protección de datos personales al diseño del sistema desde el inicio. Incluye prácticas como minimizar la recolección de datos, aplicar controles de acceso explícitos y evitar datos sensibles en logs o respuestas de error.

- [Data Protection by Design and by Default — EDPB](https://www.edpb.europa.eu/documents/guideline/guidelines-42019-on-article-25-data-protection-by-design-and-by-default_en)
- [User Privacy Protection — OWASP Cheat Sheet](https://cheatsheetseries.owasp.org/cheatsheets/User_Privacy_Protection_Cheat_Sheet.html)

