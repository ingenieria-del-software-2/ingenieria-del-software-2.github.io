# Referencias Técnicas

Este documento reúne conceptos técnicos que aparecen con frecuencia en la materia.

---

## Arquitectura y diseño

### Microservicios

En una arquitectura de microservicios, el sistema se divide en servicios pequeños que se pueden desplegar por separado. Cada servicio tiene una responsabilidad definida, administra sus datos y se comunica con los demás mediante contratos explícitos.

- [Microservices, Martin Fowler](https://martinfowler.com/articles/microservices.html)
- [Patrones de microservicios](https://microservices.io/patterns/index.html)

### Domain-Driven Design (DDD)

Domain-Driven Design busca que el modelo de software refleje el dominio del negocio. Trabaja con conceptos como *Bounded Contexts* (límites del dominio), entidades, objetos de valor y lenguaje ubicuo.

- [Domain-Driven Design, Martin Fowler](https://martinfowler.com/bliki/DomainDrivenDesign.html)
- [DDD Reference (Eric Evans)](https://www.domainlanguage.com/ddd/reference/)

### API Gateway

Un API Gateway es el punto de entrada al sistema para los clientes. Puede encargarse del enrutamiento hacia los servicios backend, la validación de tokens y el *rate limiting*. Al agregarlo hay que considerar su efecto sobre el acoplamiento, la disponibilidad y la operación. Esas decisiones se pueden registrar en un ADR.

- [API Gateway Pattern](https://microservices.io/patterns/apigateway.html)
- [NGINX como API Gateway](https://www.f5.com/company/blog/nginx/deploying-nginx-plus-as-an-api-gateway-part-1)
- [Kong Gateway (open source)](https://konghq.com/products/kong-gateway)

### C4 Model

El modelo C4 documenta una arquitectura en cuatro niveles: contexto, contenedores, componentes y código. PlantUML y Structurizr son dos herramientas para crear estos diagramas.

- [C4 Model](https://c4model.com/)
- [Structurizr (herramienta)](https://structurizr.com/)

### Architecture Decision Records (ADR)

Un ADR es un documento breve sobre una decisión de diseño. Registra el problema, la decisión, las alternativas consideradas y sus consecuencias.

- [ADR GitHub](https://adr.github.io/)
- [Plantilla de ADR (Michael Nygard)](https://github.com/architecture-decision-record/architecture-decision-record/blob/main/locales/en/templates/decision-record-template-by-michael-nygard/index.md)

---

## Mensajería en tiempo real y voz

### WebSockets

WebSocket mantiene una conexión bidireccional entre el cliente y el servidor. A diferencia del modelo request/response de HTTP, cualquiera de los dos puede enviar datos mientras la conexión siga abierta. Se usa para mensajería en tiempo real y eventos de presencia.

- [WebSocket en MDN](https://developer.mozilla.org/en-US/docs/Web/API/WebSockets_API)
- [Socket.IO](https://socket.io/), una librería con reconexión automática y *fallback* sobre WebSocket

### Pub/Sub para mensajería distribuida

En Pub/Sub, los productores publican eventos en un *topic* sin conocer a los consumidores. Cada consumidor se suscribe a los temas que le interesan. Esto permite que varias instancias de un servicio compartan eventos aunque cada una mantenga sus propias conexiones con los clientes.

Las alternativas cambian según las garantías de entrega y persistencia que necesite el sistema:

- [RabbitMQ](https://www.rabbitmq.com/tutorials/tutorial-three-python) es un *message broker* con colas persistentes.
- [Amazon SQS](https://docs.aws.amazon.com/AWSSimpleQueueService/latest/SQSDeveloperGuide/welcome.html) es un servicio administrado de colas. Junto con SNS permite implementar [fan-out hacia varias colas](https://docs.aws.amazon.com/sns/latest/dg/sns-sqs-as-subscriber.html).
- [Redis Pub/Sub](https://redis.io/docs/latest/develop/pubsub/) entrega mensajes de forma efímera. Si no hay suscriptores activos, el mensaje se pierde.
- [Kafka](https://kafka.apache.org/documentation) mantiene un *log* distribuido y durable que se puede releer. Esa persistencia también aumenta la complejidad operativa.

### WebRTC

WebRTC permite intercambiar audio, video y datos en tiempo real entre navegadores o dispositivos. Se puede usar para canales de voz y videollamadas. La topología elegida cambia mucho su capacidad de escalar:

- En una malla P2P, cada participante se conecta directamente con todos los demás. Funciona bien para una llamada entre dos personas, pero con N participantes requiere N·(N-1)/2 conexiones. Cada dispositivo termina enviando y recibiendo N-1 *streams*.
- Una SFU (*Selective Forwarding Unit*) recibe el *stream* de cada participante y lo reenvía sin decodificarlo ni mezclarlo. Cada dispositivo mantiene una sola conexión con la SFU, por lo que esta topología se adapta mejor a grupos grandes.

También existe el modelo MCU, donde un servidor decodifica y mezcla todos los *streams*. Consume más recursos del servidor.

Una SFU puede contratarse como servicio, por ejemplo mediante LiveKit, Daily o Agora. Esto reduce la infraestructura propia. La otra posibilidad es operar una solución como mediasoup, lo que requiere resolver TURN/STUN para atravesar NAT, exponer puertos UDP y escalar el *media server*.

Para el cliente móvil, [react-native-webrtc](https://github.com/react-native-webrtc/react-native-webrtc) implementa las APIs de WebRTC en React Native. Su compatibilidad depende del flujo elegido, como Expo Go o *bare workflow*. En el navegador se puede usar la [API WebRTC de MDN](https://developer.mozilla.org/en-US/docs/Web/API/WebRTC_API) sin agregar una librería.

Referencias:

- [WebRTC.org](https://webrtc.org/)
- [mediasoup](https://mediasoup.org/)
- [Documentación de LiveKit](https://docs.livekit.io/intro/overview/)
- [Documentación de Daily](https://docs.daily.co/)
- [Documentación de Agora RTC](https://docs.agora.io/en/realtime-media/rtc)
- [Topologías WebRTC en RFC 7667](https://datatracker.ietf.org/doc/html/rfc7667#section-5)

---

## Resiliencia y patrones distribuidos

### Saga Pattern

Una saga coordina una transacción que atraviesa varios servicios sin usar una transacción ACID global. Con coreografía, cada servicio reacciona a los eventos de los demás. Con orquestación, un coordinador dirige el flujo. Si una parte falla, las operaciones ya ejecutadas se revierten mediante acciones compensatorias.

- [Saga Pattern en Microservices.io](https://microservices.io/patterns/data/saga.html)
- [Saga Orchestration vs Choreography](https://microservices.io/post/microservices/2019/07/09/developing-sagas-part-1.html)

### Circuit Breaker

Circuit Breaker corta temporalmente las llamadas hacia un servicio que está fallando. En estado cerrado opera normalmente. Al abrirse, falla sin intentar la llamada. El estado semiabierto deja pasar algunas solicitudes para comprobar si el servicio se recuperó.

- [Circuit Breaker, Martin Fowler](https://martinfowler.com/bliki/CircuitBreaker.html)
- [Resilience4j (Java)](https://resilience4j.readme.io/docs/circuitbreaker)
- [circuitbreaker (Python)](https://pypi.org/project/circuitbreaker/)

### Retry con backoff exponencial

El *backoff* exponencial aumenta la espera entre intentos, por ejemplo 1, 2, 4 y 8 segundos. Sumar *jitter* evita que muchos clientes vuelvan a intentar al mismo tiempo. Este mecanismo sirve para operaciones idempotentes que fallan por una condición transitoria.

- [Exponential Backoff and Jitter (AWS)](https://aws.amazon.com/blogs/architecture/exponential-backoff-and-jitter/)

### Idempotencia

Una operación es idempotente cuando repetirla produce el mismo resultado que ejecutarla una sola vez. Esto importa en pagos, cambios de inventario y emisión de eventos, porque cualquiera de esas operaciones puede reintentarse. Una forma común de detectar duplicados es guardar una *idempotency key* por request.

- [Idempotencia en la API de Stripe](https://docs.stripe.com/api/idempotent_requests)
- [Making retries safe with idempotent APIs, AWS Builders' Library](https://aws.amazon.com/builders-library/making-retries-safe-with-idempotent-APIs/)

### Fallos transitorios vs. permanentes

- Un fallo transitorio puede resolverse sin intervención. Un timeout de red o un servicio momentáneamente caído son ejemplos. En estos casos se pueden aplicar reintentos y *backoff*.
- Un fallo permanente necesita un cambio en los datos o alguna intervención. Credenciales inválidas y operaciones rechazadas entran en esta categoría. El sistema puede compensar el flujo o informar el error al usuario.

La clasificación evita reintentos que nunca van a funcionar y determina cómo recuperar el flujo.

---

## Testing

### Pirámide de tests

La pirámide agrupa los tests en tres niveles:
1. Los tests unitarios validan la lógica de negocio de forma aislada.
2. Los tests de integración validan la comunicación con dependencias y otros servicios.
3. Los tests End-to-End (E2E) recorren flujos completos desde la entrada del sistema hasta el resultado observable.

- [Test Pyramid, Martin Fowler](https://martinfowler.com/bliki/TestPyramid.html)

### Contract Testing

Los tests de contrato comprueban que dos servicios respeten el formato acordado. Sirven para detectar incompatibilidades sin levantar todo el sistema.

- [Pact](https://pact.io/) sigue un enfoque *consumer-driven*: el consumidor define sus expectativas y el proveedor las verifica.
- [Schemathesis](https://schemathesis.readthedocs.io/) genera tests a partir de una especificación OpenAPI y los ejecuta contra el servicio.
- [Specmatic](https://docs.specmatic.io/contract_driven_development/contract_testing) usa la especificación OpenAPI como contrato y también genera servicios virtuales.
- [oasdiff](https://github.com/oasdiff/oasdiff) detecta cambios incompatibles entre versiones de una especificación.

### Pruebas de carga y estrés (k6 / Artillery)

Las pruebas de carga miden el sistema bajo tráfico sostenido. Las de estrés aumentan la carga hasta encontrar sus límites. En ambos casos conviene registrar latencia (p50, p95 y p99), *throughput* y tasa de errores en los flujos críticos.

- [Documentación de k6](https://grafana.com/docs/k6/latest/)
- [Artillery](https://www.artillery.io/)
- [Pruebas de WebSocket con k6](https://grafana.com/docs/k6/latest/using-k6/protocols/websockets/)

### Mutation Testing

Mutation Testing introduce cambios pequeños en el código, llamados mutantes, y vuelve a correr los tests. Puede invertir una condición, cambiar un operador o modificar un valor límite. Si un test falla, el mutante muere. Si todos pasan, sobrevive: la suite ejecuta esa parte del código, pero no detecta que su comportamiento cambió. El *mutation score* es el porcentaje de mutantes muertos.

Como la suite se ejecuta muchas veces, el proceso puede ser lento. Por eso suele aplicarse a módulos concretos o en ejecuciones periódicas.

- [mutmut](https://mutmut.readthedocs.io/) para Python
- [Stryker](https://stryker-mutator.io/docs/) para JavaScript y TypeScript
- [PIT (Pitest)](https://pitest.org/) para Java
- [Revisión académica sobre Mutation Testing](https://doi.org/10.1109/TSE.2010.62)

### SAST (Static Application Security Testing)

SAST analiza el código fuente sin ejecutarlo para buscar vulnerabilidades. Se puede integrar al pipeline de CI. Bandit trabaja con Python, ESLint dispone de plugins de seguridad para Node.js y Semgrep soporta varios lenguajes.

- [Bandit (Python)](https://bandit.readthedocs.io/)
- [Semgrep](https://semgrep.dev/docs/)

---

## Observabilidad

### Health Checks

Los probes de *liveness* y *readiness* responden preguntas distintas. Un endpoint como `/livez` comprueba que el proceso siga vivo sin consultar servicios externos. `/readyz` indica si puede atender requests y normalmente revisa dependencias críticas, como la base de datos.

- [Liveness, readiness y startup probes en Kubernetes](https://kubernetes.io/docs/concepts/workloads/pods/probes/)

### Logs estructurados

Los logs estructurados tienen un esquema estable y campos tipados. Es común codificarlos como JSON y clasificarlos por nivel, por ejemplo Error, Warn, Info o Debug.

- [Logs estructurados en OpenTelemetry](https://opentelemetry.io/docs/concepts/signals/logs/#structured-unstructured-and-semistructured-logs)

### Trazabilidad distribuida

Un *trace ID* o *correlation ID* identifica una operación mientras atraviesa varios servicios. Al propagarlo, las herramientas de observabilidad pueden relacionar requests, conexiones y eventos.

- [Trazas distribuidas en OpenTelemetry](https://opentelemetry.io/docs/concepts/observability-primer/#distributed-traces)

### Prometheus y Grafana

Prometheus recolecta métricas de ejecución, como latencia, tasa de errores y uso de recursos. Los servicios pueden exponerlas mediante `/metrics`. Grafana las consulta y muestra en dashboards.

- [Prometheus](https://prometheus.io/docs/introduction/overview/)
- [Grafana](https://grafana.com/docs/grafana/latest/)

---

## APIs y contratos

### OpenAPI / Swagger

OpenAPI describe una API HTTP en un formato que pueden leer personas y herramientas. La especificación incluye endpoints, parámetros, cuerpos de request y response, esquemas y códigos de estado. También sirve para generar documentación y otras herramientas.

- [OpenAPI Specification](https://spec.openapis.org/oas/latest.html)
- [Swagger UI](https://swagger.io/open-source/swagger-ui/)

### REST

REST es un estilo arquitectónico para sistemas distribuidos. En una API HTTP se expresa mediante recursos, una interfaz uniforme, métodos HTTP y códigos de estado con una semántica definida.

- [REST en la tesis de Roy Fielding](https://ics.uci.edu/~fielding/pubs/dissertation/rest_arch_style.htm)
- [HTTP Status Codes](https://developer.mozilla.org/en-US/docs/Web/HTTP/Reference/Status)

---

## Frontend y mobile

React se usa para clientes web y React Native para aplicaciones móviles.

### React

React es una biblioteca de JavaScript para construir interfaces declarativas basadas en componentes. Se puede combinar con un sistema de diseño o una librería de componentes.

- [Documentación de React](https://react.dev/)
- [React Router](https://reactrouter.com/)

### React Native

React Native permite construir aplicaciones móviles nativas con React y compartir lógica entre Android e iOS. Expo simplifica la configuración. Un *bare workflow* da más control sobre los módulos nativos.

- [Documentación de React Native](https://reactnative.dev/docs/getting-started)
- [Crear un proyecto con Expo](https://docs.expo.dev/get-started/create-a-project/)
- [Primeros pasos con React Navigation](https://reactnavigation.org/docs/getting-started)

### Electron

Electron empaqueta una aplicación web junto con Chromium y Node.js para ejecutarla como aplicación de escritorio. Además da acceso a funciones del sistema operativo, como notificaciones nativas o periféricos. Se puede reutilizar un cliente web, aunque Windows, macOS y Linux requieren configuraciones de build distintas.

- [Documentación de Electron](https://www.electronjs.org/docs/latest/)
- [Electron Forge](https://www.electronforge.io/)

### Manejo de estado y datos del servidor

El estado global incluye datos como la sesión o las preferencias. Los datos que vienen de una API necesitan además caché, reintentos, invalidación y estados de carga o error.

- [React Query (TanStack Query)](https://tanstack.com/query/latest)
- [Zustand](https://zustand.docs.pmnd.rs/learn/getting-started/introduction)
- [Redux Toolkit](https://redux-toolkit.js.org/)

### Resiliencia en la capa de presentación

Una interfaz tiene que distinguir entre carga, error y latencia. También necesita mensajes útiles ante fallos de red y un comportamiento definido frente a *timeouts*. TanStack Query y SWR modelan estos estados y permiten configurar reintentos.

- [Reintentos en TanStack Query](https://tanstack.com/query/latest/docs/framework/react/guides/query-retries)
- [Estado de conectividad con NetInfo](https://docs.expo.dev/versions/latest/sdk/netinfo/)

---

## Gateway de pagos

Los gateways de pago exponen APIs para iniciar, confirmar y consultar pagos. Sus sandboxes permiten probar la integración sin procesar dinero real. Stripe y MercadoPago ofrecen documentación y entornos de prueba.

### Stripe

Stripe tiene SDKs oficiales para distintos lenguajes, sandboxes y tarjetas predefinidas para simular resultados. Su API usa *idempotency keys* para evitar operaciones duplicadas.

- [Pruebas en Stripe](https://docs.stripe.com/testing)
- [Guía rápida de Stripe Checkout](https://docs.stripe.com/checkout/quickstart)
- [SDKs de Stripe](https://docs.stripe.com/sdks)

### MercadoPago

MercadoPago opera en Argentina y ofrece cuentas y tarjetas de prueba para simular distintos resultados.

- [MercadoPago Developers](https://www.mercadopago.com.ar/developers/es)
- [Cuentas de prueba de MercadoPago](https://www.mercadopago.com.ar/developers/es/docs/your-integrations/test/accounts)
- [Tarjetas de prueba de MercadoPago](https://www.mercadopago.com.ar/developers/es/docs/your-integrations/test/cards)

---

## Mobile y notificaciones

### Firebase Cloud Messaging (FCM)

Firebase Cloud Messaging es el servicio de Google para enviar notificaciones *push* a Android, iOS y clientes web. El backend publica el mensaje y FCM se ocupa de entregarlo al dispositivo.

- [Firebase Cloud Messaging](https://firebase.google.com/docs/cloud-messaging)
- [FCM con React Native](https://rnfirebase.io/messaging/usage)
- [Web Push API](https://developer.mozilla.org/en-US/docs/Web/API/Push_API) para notificaciones desde el cliente web

---

## Seguridad y privacidad

### Privacy by Design

Privacy by Design incorpora la protección de datos personales desde el diseño inicial. Esto incluye recolectar solo los datos necesarios, controlar el acceso a cada operación y no incluir información sensible en logs ni respuestas de error.

- [Data Protection by Design and by Default, EDPB](https://www.edpb.europa.eu/documents/guideline/guidelines-42019-on-article-25-data-protection-by-design-and-by-default_en)
- [User Privacy Protection, OWASP Cheat Sheet](https://cheatsheetseries.owasp.org/cheatsheets/User_Privacy_Protection_Cheat_Sheet.html)

