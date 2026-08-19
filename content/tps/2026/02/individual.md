---
title: "2026 2C - Individual"
subtitle: "Individual"
---
# Ingenieria de Software II
## Trabajo Practico Individual

## Enunciado

En este trabajo práctico individual desarrollarás un servicio backend de chat mínimo. El servicio expone una API REST para administrar canales y consultar el historial de mensajes, y además expone un WebSocket por canal a través del cual los clientes envían y editan mensajes, y reciben en tiempo real los mensajes nuevos y editados de los demás. Como demostración, el repositorio debe incluir una página HTML mínima (sin frameworks) que se conecta a ese WebSocket y muestra en vivo los mensajes que va recibiendo, reflejando también sus ediciones.

### Entrega

Tendrás 10 días para completar este trabajo. Calculamos que llevará unas 8-12 horas, pero te damos total flexibilidad para que puedas lucir lo mejor de tu talento.

Si surge cualquier pregunta sobre los requerimientos o el alcance, podés consultar a cualquiera del cuerpo docente a través de Discord.

La entrega del proyecto se realizará mediante un repositorio privado en GitHub. Cada alumno deberá crear su propio repositorio y agregar a su corrector como colaborador para que pueda ser evaluado. Los colaboradores son anunciados una vez finalizado el plazo de entrega. Se recomienda iniciar tempranamente y hacer commits pequeños que agreguen funcionalidad incrementalmente. No se evaluará ningún commit realizado luego de la fecha y hora límite de entrega.

**Aviso importante:** Si durante la revisión de tu entrega surge alguna duda o inconsistencia, el equipo docente podrá solicitar una breve defensa oral a través de una reunión virtual (Google Meet u otra plataforma similar).

El repositorio debe incluir un archivo `README.md` (en español) con:

-   Una tabla de contenido.
-   Una introducción con no más de un párrafo pequeño y conciso sobre la solución planteada.
-   Una sección sobre qué fue lo más desafiante del proyecto.
-   Un apartado de pre-requisitos listando lo necesario para levantar el entorno de desarrollo, especificando los lenguajes y versiones de los manejadores de paquetes necesarios.
-   Link al "user-guide" de la libreria que se uso para testear, o en su defecto link al repo. e.g: [JUnit](https://junit.org/junit5/docs/current/user-guide/), [pytest](https://docs.pytest.org/)
-   Instrucciones para abrir la página HTML de demostración del WebSocket y ver los mensajes en vivo.
-   Comandos para construir la imagen de Docker.
-   Comandos para correr la base de datos.
-   Comandos para correr la imagen del servicio.

Fecha máxima de entrega: **28 de Agosto 23.59hs**


#### Formulario de entrega

Se deberá completar el siguiente formulario con Padrón, Nombre, Apellido y Link al repositorio con la solución

[Formulario](https://forms.gle/Q7iL8eLRrm2i9LWq9)

Luego de haber completado este formulario, les solicitaremos que agreguen al usuario del corrector asignado.

### Criterios de Evaluación

| Criterio                  | Descripción                                                                         |
| ------------------------- | ----------------------------------------------------------------------------------- |
| Calidad del Código        | Código limpio, legible y mantenible.                                                |
| Implementación            | Implementación correcta de endpoints y features, siguiendo la especificación        |
| Tiempo real (WebSocket)   | Envío, edición y broadcast correctos de mensajes a través del WebSocket, y demo HTML funcional. |
| Testing                   | Calidad de las pruebas para cada endpoint REST.                                     |
| Dockerfile                | Creación adecuada del Dockerfile con las mejores prácticas.                         |
| Configuración del Entorno | Uso de variables de entorno para configuraciones, sin codificar ningún valor.       |
| Manejo de Errores         | Manejo correcto y estandarizado de errores usando RFC 7807 en los endpoints REST, y frames de error consistentes en el WebSocket. |
| Persistencia              | Obligatoria en base de datos (relacional o no). Modelado adecuado.                  |
| Desafíos (si los hay)     | Implementación exitosa de cualquier desafío opcional.                               |
| Documentación             | README claro y conciso con todas las secciones requeridas.                          |
| Proceso de Pensamiento    | Explicación de decisiones y proceso de pensamiento a lo largo de la implementación. |


**Importante**: La condición mínima de aprobación se logra entregando un trabajo práctico que cumpla la especificación entera del servicio descripto a continuación. La cátedra va a validar la especificación completa utilizando un set de pruebas automáticas propio.


### Historias de Usuario

#### Crear canal

- **Descripción:** Como administrador, quiero crear canales de chat para organizar las conversaciones.
- **Criterio de Aceptación:** El sistema debe permitir crear un canal indicando su nombre. El nombre no puede estar vacío y debe ser único (sin distinguir mayúsculas de minúsculas).

#### Listar canales

- **Descripción:** Como usuario, quiero ver los canales disponibles para elegir a cuál unirme.
- **Criterio de Aceptación:** El sistema debe devolver todos los canales existentes, ordenados por fecha de creación ascendente.

#### Enviar mensaje en un canal

- **Descripción:** Como usuario, quiero enviar mensajes de texto a un canal para comunicarme con el resto.
- **Criterio de Aceptación:** El sistema debe permitir enviar un mensaje a través de la conexión WebSocket del canal (ver Requisito 3), indicando autor (`authorId`) y contenido. El mensaje se persiste y se retransmite en tiempo real a todos los clientes conectados a ese canal, incluido quien lo envió. Un mensaje sin contenido no debe aceptarse.

#### Visualizar historial de mensajes

- **Descripción:** Como usuario, quiero ver el historial de mensajes de un canal para conocer el contexto de la conversación.
- **Criterio de Aceptación:** Al consultar los mensajes de un canal debo verlos en orden cronológico ascendente. Consultar los mensajes de un canal inexistente debe devolver un error 404.

#### Editar mensaje

- **Descripción:** Como autor de un mensaje, quiero poder editarlo para corregir errores.
- **Criterio de Aceptación:** El sistema debe permitir editar el contenido de un mensaje existente a través de la misma conexión WebSocket (ver Requisito 3), indicando el `id` del mensaje. El mensaje editado se marca como tal (`editedAt`) y se retransmite en tiempo real a todos los clientes conectados a ese canal. Solo el autor original (`authorId`) puede editar su propio mensaje; si otro `authorId` lo intenta, el sistema debe rechazar la edición.

#### Escuchar mensajes en tiempo real (WebSocket)

- **Descripción:** Como usuario conectado a un canal, quiero recibir los mensajes nuevos y las ediciones de mensajes existentes en tiempo real, sin recargar la página, para seguir la conversación en vivo.
- **Criterio de Aceptación:** Al conectarse por WebSocket a un canal, el cliente debe recibir cada mensaje nuevo y cada edición de un mensaje existente mientras la conexión permanezca abierta. El repositorio debe incluir una página web mínima que se conecta a este WebSocket, agrega los mensajes nuevos a una lista y actualiza en el lugar el contenido de los mensajes editados (no se requiere que la página permita enviar ni editar mensajes; alcanza con que los escuche y los muestre).

### Requisitos

1. **Especificaciones del Servicio Backend**:
    - El servicio debe exponer una API REST para crear canales, listarlos y consultar el historial de mensajes, devolviendo datos en formato JSON. El envío y la edición de mensajes **no** se hacen por REST, sino a través del WebSocket descripto en el Requisito 3.
    - Las respuestas de error de los endpoints REST deben usar content-type `application/problem+json`.
    - Asegurate de probar cada caso de uso con al menos una prueba E2E (End to End) o de integración, de manera que las pruebas sean claras y descriptivas en su propósito.

2. **Endpoints REST a Implementar**:
    - Utiliza la siguiente especificación de OpenAPI para implementar los endpoints, que se puede visualizar en [Swagger Editor](https://editor.swagger.io/) para una vista más gráfica.

```yaml
openapi: 3.0.0
info:
  title: Discordia Chat Service API
  version: 1.0.0

paths:
  /channels:
    post:
      summary: Create a new channel
      requestBody:
        required: true
        content:
          application/json:
            schema:
              $ref: '#/components/schemas/CreateChannelRequest'
      responses:
        '201':
          description: Channel created successfully
          content:
            application/json:
              schema:
                type: object
                required: [data]
                properties:
                  data:
                    $ref: '#/components/schemas/Channel'
        '400':
          description: Bad request error (invalid or duplicate name)
          content:
            application/problem+json:
              schema:
                $ref: '#/components/schemas/ErrorResponse'

    get:
      summary: Retrieve all channels
      description: Returns all channels ordered by createdAt ascending
      responses:
        '200':
          description: A list of channels
          content:
            application/json:
              schema:
                type: object
                required: [data]
                properties:
                  data:
                    type: array
                    items:
                      $ref: '#/components/schemas/Channel'

  /channels/{channelId}/messages:
    get:
      summary: Retrieve the message history of a channel
      description: Returns the channel's messages ordered by createdAt ascending, then id ascending.
      parameters:
        - in: path
          name: channelId
          required: true
          schema:
            type: integer
      responses:
        '200':
          description: A list of messages
          content:
            application/json:
              schema:
                type: object
                required: [data]
                properties:
                  data:
                    type: array
                    items:
                      $ref: '#/components/schemas/Message'
        '404':
          description: Channel not found
          content:
            application/problem+json:
              schema:
                $ref: '#/components/schemas/ErrorResponse'

  /channels/{channelId}/ws:
    get:
      summary: WebSocket upgrade endpoint for a channel
      description: >
        Not a regular REST endpoint. This fixed path performs an HTTP Upgrade to a WebSocket
        connection scoped to the given channel. Clients
        send SendOrEditMessageEvent payloads to create or edit messages, and receive every
        Message broadcast to this channel, both newly created and edited ones.
      parameters:
        - in: path
          name: channelId
          required: true
          schema:
            type: integer
      responses:
        '101':
          description: Switching Protocols. The connection was upgraded to WebSocket successfully.

components:
  schemas:
    Channel:
      type: object
      required: [id, name, createdAt]
      properties:
        id:
          type: integer
        name:
          type: string
          minLength: 1
          maxLength: 50
        createdAt:
          type: string
          format: date-time

    Message:
      type: object
      required: [id, channelId, authorId, content, createdAt, editedAt]
      properties:
        id:
          type: integer
        channelId:
          type: integer
        authorId:
          type: integer
        content:
          type: string
          minLength: 1
          maxLength: 2000
        createdAt:
          type: string
          format: date-time
        editedAt:
          type: string
          format: date-time
          nullable: true

    CreateChannelRequest:
      type: object
      required:
        - name
      properties:
        name:
          type: string
          minLength: 1
          maxLength: 50

    SendOrEditMessageEvent:
      type: object
      description: >
        Payload sent by a client over the WebSocket to create or edit a message.
        If id is omitted, a new message is created. If id is present, it must reference
        an existing message whose authorId matches, and its content is replaced (editedAt is set).
      required:
        - authorId
        - content
      properties:
        id:
          type: integer
          description: Present only when editing an existing message.
        authorId:
          type: integer
          description: For edits, must match the message's original author.
        content:
          type: string
          minLength: 1
          maxLength: 2000

    ErrorResponse:
      type: object
      required: [type, title, status, detail, instance]
      properties:
        type:
          type: string
          enum: [about:blank]
        title:
          type: string
        status:
          type: integer
        detail:
          type: string
        instance:
          type: string
```

   - Las respuestas de error deben seguir el RFC 7807 (**). Para este proyecto, el campo `type` debe ser `about:blank` y el content-type debe ser `application/problem+json`.
   - Reglas de negocio adicionales:
     - El nombre de un canal no puede estar vacío ni exceder los 50 caracteres, y debe ser único (sin distinguir mayúsculas de minúsculas).
     - El contenido de un mensaje no puede estar vacío ni exceder los 2000 caracteres.
     - No hay autenticación real: `authorId` viaja explícito en cada request o evento, igual que en el resto de la especificación. Intentar editar un mensaje con un `authorId` distinto al del mensaje original debe rechazarse sin persistir el cambio, devolviendo un frame de error por el WebSocket (ver Requisito 3).

3. **WebSocket**:
    - El servicio debe exponer el WebSocket en un path fijo por canal: `GET /channels/{channelId}/ws` (documentado en el OpenAPI de arriba).
    - El mismo socket se usa tanto para enviar como para recibir. Un cliente conectado puede mandar mensajes al servidor por ese socket, y el servidor le retransmite a todos los clientes conectados a ese canal (incluido quien envió) lo que corresponda.
    - **Enviar o editar un mensaje**: el cliente manda un `SendOrEditMessageEvent` (ver `components/schemas`) por el socket:
      - Si el payload **no** trae `id`, se crea un mensaje nuevo.
      - Si trae `id` y corresponde a un mensaje existente cuyo `authorId` coincide con el del payload, se edita ese mensaje (se actualiza `content` y se completa `editedAt`).
      - Si trae `id` pero no existe, o el `authorId` no coincide con el autor original, se rechaza (ver "Errores" más abajo).
      - En ambos casos exitosos, el servicio persiste el cambio y retransmite el `Message` resultante (mismo formato para creación y edición) a todos los clientes conectados a ese canal. El cliente que recibe un mensaje decide si es nuevo o una edición según si ya tiene ese `id` en su vista local: no hace falta ningún campo adicional que distinga el caso, alcanza con el `id`.
    - **Errores**: si el payload es inválido (por ejemplo, `content` vacío) o la edición no corresponde al autor original, el servidor responde por el mismo socket, solo al cliente que lo originó (no se hace broadcast), con un frame de error y la conexión permanece abierta:
      ```json
      { "error": "content must not be empty" }
      ```
    - **Canal inexistente**: si `channelId` no corresponde a un canal existente, el servidor debe cerrar la conexión inmediatamente con un [close code](https://developer.mozilla.org/en-US/docs/Web/API/CloseEvent/code) que indique el motivo (por ejemplo, `1008` - *Policy Violation*).
    - No se requiere reconexión automática, backlog de mensajes perdidos durante una desconexión, ni autenticación sobre el socket.
    - Ejemplo de payload que un cliente envía para crear un mensaje:
      ```json
      { "authorId": 3, "content": "hola a todos!" }
      ```
    - Ejemplo de payload que un cliente envía para editar ese mismo mensaje:
      ```json
      { "id": 42, "authorId": 3, "content": "hola a todos, corrijo: buen día!" }
      ```
    - Ejemplo de `Message` retransmitido por el servidor a todos los clientes del canal (mismo shape tanto si es un mensaje nuevo como uno editado):
      ```json
      {
        "id": 42,
        "channelId": 7,
        "authorId": 3,
        "content": "hola a todos, corrijo: buen día!",
        "createdAt": "2026-08-05T20:00:00Z",
        "editedAt": "2026-08-05T20:05:00Z"
      }
      ```

4. **Página HTML de demostración**:
    - El repositorio debe incluir, en la raíz o en una carpeta `public/`/`client/`, un archivo `index.html` **sin frameworks ni build step**.
    - Debe permitir indicar un `channelId` (por ejemplo, un input de texto) y conectarse al WebSocket de ese canal.
    - Por cada `Message` recibido: si su `id` todavía no está en la lista visible, se agrega como entrada nueva; si ya está (porque es la retransmisión de una edición), se actualiza en el lugar el contenido de esa entrada, sin duplicarla.
    - Aunque el WebSocket ahora admite mensajes entrantes para crear o editar, la página de demostración no está obligada a enviarlos: no hace falta estilos, validaciones ni la posibilidad de enviar o editar mensajes desde la propia página. El objetivo es únicamente demostrar que el cliente **escucha** los mensajes en tiempo real.

5. **Persistencia de Datos**
    - La persistencia en base de datos es obligatoria (relacional o no relacional). Se debe implementar un modelado adecuado.

6. **Requisitos de CI/CD y DevOps**

    1. **Uso de Variables de Entorno:**

      - **Entorno de desarrollo:** Utilizar variables de entorno para configurar parámetros básicos del servicio, como `HOST`, `PORT`, y `ENVIRONMENT`.
      - **Persistencia:** Utilizar las variables relacionadas con la conexión a bases de datos (`DATABASE_HOST`, `DATABASE_NAME`, `DATABASE_PORT`, `DATABASE_USER`, `DATABASE_PASSWORD`).

      - **Aclaraciones:**
        - `ENVIRONMENT`: Define si el entorno es de desarrollo (`development`) o producción (`production`). Default: `development`.
        - `PORT`: Define el puerto en el que corre la aplicación. Default: `8080`.
        - `HOST`: Define la IP donde el servicio escucha. Default: `0.0.0.0`. `0.0.0.0` permite acceso desde cualquier red, por ejemplo, desde otro contenedor; `127.0.0.1` restringe a conexiones locales. La necesidad de definir `HOST` dependerá de la tecnología.
        - El servicio **debe** escuchar en `${HOST}:${PORT}` con los defaults indicados. La API REST y el WebSocket comparten el mismo host y puerto.

    2. **Dockerfile:**
      Crear un `Dockerfile` para el servicio siguiendo las [mejores prácticas](https://docs.docker.com/build/building/best-practices/#choose-the-right-base-image) para una imagen concisa y eficiente.


**Importante**: Es de vital importancia cumplir con la especificación provista en esta sección (especificamente las variables de entorno definidas) para asegurar que la corrección automática funcione de manera adecuada.


### Requerimientos no funcionales

- Se puede utilizar cualquier lenguaje de programación para el servicio, preferiblemente las últimas versiones LTS.
- El servicio debe ejecutarse en un contenedor de Docker.
- El `Dockerfile` debe estar en la raíz del repositorio.
- Las funciones y clases deben documentarse siguiendo el estándar del lenguaje elegido.
- Se debe implementar logging utilizando una biblioteca externa para facilitar la configuración.
- El código debe formatearse con el formatter preferido del lenguaje.
- El código debe estar escrito en inglés.
- Los commits deben ser atómicos y descriptivos, para asegurar consistencia y legibilidad desde el inicio del proyecto.

### Desafíos Opcionales

1. **Usar Middleware para Manejar Errores**:
    - Implementa middleware para el manejo centralizado de errores.
2. **Historial al conectarse**:
    - Al abrir la conexión WebSocket, enviarle al cliente los últimos N mensajes del canal antes de empezar a retransmitir los nuevos, para que no vea la conversación vacía.
3. **Mejoras a la Solución**:
    - ¿Hay espacio para mejorar tu solución? Por favor, elabora.
4. **Uso de Docker Compose**:
   - Agrega un archivo [compose.yaml](https://docs.docker.com/compose/compose-application-model/#the-compose-file) para definir los servicios.
   - La base de datos y el contenedor de la aplicación deben estar definidos en `compose.yaml`.
   - El [servicio de Docker](https://docs.docker.com/compose/compose-file/05-services/#simple-example) debe apuntar al `Dockerfile` para la construcción del backend.
5. **CI/CD con GitHub Actions para tests**:
  - Configurar un workflow de GitHub Actions que, en cada push o pull request a la rama main, ejecute los tests del proyecto automáticamente.
  - El workflow debe instalar dependencias, levantar el entorno necesario (ej. base de datos en Docker si aplica) y ejecutar los tests.
  - Documentar en el README.md cómo funciona y cómo se podría adaptar para producción.

### Ejemplo de Respuesta de Error en Formato RFC 7807 (**)

Ejemplo de una respuesta de error usando el formato RFC 7807:

```json
{
   "type": "about:blank",
   "title": "Channel Not Found",
   "status": 404,
   "detail": "The channel with ID 12345 was not found.",
   "instance": "/channels/12345/messages"
}
```

### Ejemplo de Lanzamiento de Contenedores para Base de Datos

```
docker run --name db-container --network <network-name> -p 5432:5432 \
  -e POSTGRES_DB=db \
  -e POSTGRES_USER=admin \
  -e POSTGRES_PASSWORD=password \
  postgres:17.9-bookworm
```

```
docker run --name db-container --network <network-name> -p 3306:3306 \
  -e MYSQL_DATABASE=db \
  -e MYSQL_USER=admin \
  -e MYSQL_PASSWORD=password \
  -e MYSQL_ROOT_PASSWORD=root.password \
  mysql:8.4.8
```

### Aclaraciones

- Para asegurar la comunicación entre contenedores lanzados manualmente, primero crea una red de Docker con `docker network create <network-name>` y luego usa `--network <network-name>` al lanzar los contenedores. De lo contrario, no podrán comunicarse. Alternativamente, puedes usar Docker Compose, que los coloca automáticamente en la misma red.


### Referencias

-   [OpenAPI Specification](https://swagger.io/specification/)
-   [RFC 7807: Problem Details for HTTP APIs](https://www.codecentric.de/wissens-hub/blog/charge-your-apis-volume-19-understanding-problem-details-for-http-apis-a-deep-dive-into-rfc-7807-and-rfc-9457#:~:text=Explanation)
-   [Docker Documentation](https://docs.docker.com/reference/dockerfile/)
-   [MDN: Writing WebSocket client applications](https://developer.mozilla.org/en-US/docs/Web/API/WebSockets_API/Writing_WebSocket_client_applications)
-   [Conventional Commits](https://gist.github.com/qoomon/5dfcdf8eec66a051ecd85625518cfd13#types)
- [The Twelve-Factor App](https://12factor.net/es/)