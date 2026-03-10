---
title: "20252C - Individual"
subtitle: "Individual"
---
# Ingenieria de Software II
## Trabajo Practico Individual

### Entrega

Gracias por tu interés en unirte a Melodia como Software Engineer.
Estamos construyendo la próxima gran experiencia de streaming musical: intuitiva, envolvente y diseñada para que cada usuario descubra su nueva canción favorita en segundos. Queremos que formar parte de Melodia se sienta como diseñar el futuro de la música… porque eso es exactamente lo que harás.

Tendrás 10 días para completar esta prueba técnica. Calculamos que llevará unas 4–6 horas, pero te damos total flexibilidad para que puedas lucir lo mejor de tu talento.

Si surge cualquier pregunta sobre los requerimientos o el alcance, escríbenos: estamos aquí para que brilles y disfrutes el proceso tanto como los usuarios disfrutan su música.

La entrega del proyecto se realizará mediante un repositorio privado en GitHub. Cada candidato deberá crear su propio repositorio y agregar a su corrector como colaborador para que pueda ser evaluado. Se recomienda iniciar tempranamente y hacer commits pequeños que agreguen funcionalidad incrementalmente. No se evaluará ningún commit realizado luego de la fecha y hora límite de entrega.

⚠️ **Aviso importante:** Si durante la revisión de tu entrega surge alguna duda o inconsistencia, el equipo podrá solicitar una breve defensa oral a través de una reunión virtual (Google Meet u otra plataforma similar).

El repositorio debe incluir un archivo `README.md` (en español) con:

-   Una tabla de contenido.
-   Una introducción con no más de un párrafo pequeño y conciso sobre la solución planteada.
-   Una sección sobre qué fue lo más desafiante del proyecto.
-   Un apartado de pre-requisitos listando lo necesario para levantar el entorno de desarrollo, especificando los lenguajes y versiones de los manejadores de paquetes necesarios.
-   Link al "user-guide" de la libreria que se uso para testear, o en su defecto link al repo. e.g: [Junit](https://junit.org/junit5/docs/current/user-guide/), [gin-gonic](https://gin-gonic.com/docs/testing/)
-   Comandos para construir la imagen de Docker.
-   Comandos para correr la base de datos.
-   Comandos para correr la imagen del servicio.

Fecha máxima de entrega: **28-08-2025**


#### Formulario de entrega 

Se deberá completar el siguiente formulario con Padrón, Nombre, Apellido y Link al repositorio con la solución

[Formulario](https://forms.gle/vBRbDpQBYDzm1cd7A)

Luego de haber completado este formulario, les solicitaremos que agreguen al usuario del corrector asignado.


### Criterios de Evaluación

| Criterio                  | Descripción                                                                         |
|---------------------------|-------------------------------------------------------------------------------------|
| Calidad del Código        | Código limpio, legible y mantenible.                                                |
| Implementación            | Implementación correcta de endpoints y features, siguiendo la especificación        |
| Testing                   | Calidad de las pruebas para cada endpoint.                                          |
| Dockerfile                | Creación adecuada del Dockerfile con las mejores prácticas.                         |
| Configuración del Entorno | Uso de variables de entorno para configuraciones, sin codificar ningún valor.       |
| Manejo de Errores         | Manejo correcto y estandarizado de errores usando RFC 7807.                         |
| Persistencia              | Obligatoria en base de datos (relacional o no). Modelado adecuado.                  |
| Desafíos (si los hay)     | Implementación exitosa de cualquier desafío opcional.                               |
| Documentación             | README claro y conciso con todas las secciones requeridas.                          |
| Proceso de Pensamiento    | Explicación de decisiones y proceso de pensamiento a lo largo de la implementación. |


## Enunciado

En este trabajo práctico individual desarrollarás un servicio backend para *Melodía*, una plataforma de descubrimiento y reproducción musical. La API debe gestionar playlists y canciones, incluyendo el ciclo de vida de Canción y su vinculación con Playlist. La persistencia debe ser en una base de datos (relacional o no relacional).

### Historias de Usuario

#### Gestión de canciones

- **Descripción:** Como usuario de Melodía, quiero poder gestionar canciones (crear, consultar, actualizar y eliminar) para tener un catálogo disponible que pueda usar en mis playlists.
- **Criterio de Aceptación:** El sistema debe permitir agregar nuevas canciones, ver su información, modificarlas y eliminarlas. Cada canción debe incluir un título y un artista.

#### Publicación de playlists  

- **Descripción:** Como usuario de Melodía, quiero poder crear y publicar playlists para que otros usuarios puedan escucharlas.  
- **Criterio de Aceptación:** El sistema debe permitir a los usuarios crear y publicar playlists que incluyan un nombre, una descripción y una lista de canciones vinculadas desde el catálogo existente. Al crear una playlist, esta queda automáticamente publicada y visible para otros usuarios.

#### Agregar canciones a playlists

- **Descripción:** Como usuario, quiero poder agregar canciones existentes a mis playlists manteniendo un registro de cuándo las agregué. 
- **Criterio de Aceptación:** El sistema debe permitir agregar canciones a playlists y registrar automáticamente la fecha y hora de agregado para cada canción en la playlist.

#### Visualizar playlists  

- **Descripción:** Como usuario, quiero tener acceso a todas las playlists publicadas en la plataforma.  
- **Criterio de Aceptación:** Cuando ingrese a la lista de playlists, se deben mostrar todas las playlists en orden cronológico inverso según fecha y hora de publicación. Las canciones dentro de cada playlist deben estar ordenadas por fecha de agregado (más recientes primero).

### Requisitos

1. **Especificaciones del Servicio Backend**:
    - El servicio debe ser una API REST-like y devolver datos en formato JSON.
    - Asegurate de probar cada endpoint con al menos una prueba E2E (End to End) o de integración, de manera que las pruebas sean claras y descriptivas en su propósito.

2. **Endpoints a Implementar**:
    - Utiliza la siguiente especificación de OpenAPI para implementar los endpoints, que se puede visualizar en [Swagger Editor](https://editor.swagger.io/) para una vista más gráfica.

```yaml
openapi: 3.0.0
info:
  title: Melodia Playlist Service API
  version: 1.0.0

paths:
  /songs:
    post:
      summary: Create a new song
      requestBody:
        required: true
        content:
          application/json:
            schema:
              $ref: '#/components/schemas/CreateSongRequest'
      responses:
        '201':
          description: Song created successfully
          content:
            application/json:
              schema:
                type: object
                properties:
                  data:
                    $ref: '#/components/schemas/Song'
        '400':
          description: Bad request error
          content:
            application/json:
              schema:
                $ref: '#/components/schemas/ErrorResponse'
    
    get:
      summary: Retrieve all songs
      responses:
        '200':
          description: A list of songs
          content:
            application/json:
              schema:
                type: object
                properties:
                  data:
                    type: array
                    items:
                      $ref: '#/components/schemas/Song'

  /songs/{id}:
    get:
      summary: Retrieve a song by ID
      parameters:
        - in: path
          name: id
          required: true
          schema:
            type: integer
      responses:
        '200':
          description: Song retrieved successfully
          content:
            application/json:
              schema:
                type: object
                properties:
                  data:
                    $ref: '#/components/schemas/Song'
        '404':
          description: Song not found
          content:
            application/json:
              schema:
                $ref: '#/components/schemas/ErrorResponse'

    put:
      summary: Update a song by ID
      parameters:
        - in: path
          name: id
          required: true
          schema:
            type: integer
      requestBody:
        required: true
        content:
          application/json:
            schema:
              $ref: '#/components/schemas/UpdateSongRequest'
      responses:
        '200':
          description: Song updated successfully
          content:
            application/json:
              schema:
                type: object
                properties:
                  data:
                    $ref: '#/components/schemas/Song'
        '400':
          description: Bad request error
          content:
            application/json:
              schema:
                $ref: '#/components/schemas/ErrorResponse'
        '404':
          description: Song not found
          content:
            application/json:
              schema:
                $ref: '#/components/schemas/ErrorResponse'

    delete:
      summary: Delete a song by ID
      parameters:
        - in: path
          name: id
          required: true
          schema:
            type: integer
      responses:
        '204':
          description: Song deleted successfully
        '404':
          description: Song not found
          content:
            application/json:
              schema:
                $ref: '#/components/schemas/ErrorResponse'

  /playlists:
    post:
      summary: Create a new playlist
      requestBody:
        required: true
        content:
          application/json:
            schema:
              $ref: '#/components/schemas/CreatePlaylistRequest'
      responses:
        '201':
          description: Playlist created successfully
          content:
            application/json:
              schema:
                type: object
                properties:
                  data:
                    $ref: '#/components/schemas/Playlist'
        '400':
          description: Bad request error
          content:
            application/json:
              schema:
                $ref: '#/components/schemas/ErrorResponse'

    get:
      summary: Retrieve published playlists (most recent first)
      description: Returns playlists ordered by publishedAt (desc). In the base spec, playlists are created already published.
      responses:
        '200':
          description: A list of published playlists ordered by publishedAt desc (songs ordered by addedAt desc)
          content:
            application/json:
              schema:
                type: object
                properties:
                  data:
                    type: array
                    items:
                      $ref: '#/components/schemas/Playlist'

  /playlists/{id}:
    get:
      summary: Retrieve a playlist by ID
      parameters:
        - in: path
          name: id
          required: true
          schema:
            type: integer
      responses:
        '200':
          description: Playlist retrieved successfully (songs ordered by addedAt desc)
          content:
            application/json:
              schema:
                type: object
                properties:
                  data:
                    $ref: '#/components/schemas/Playlist'
        '404':
          description: Playlist not found
          content:
            application/json:
              schema:
                $ref: '#/components/schemas/ErrorResponse'

    delete:
      summary: Delete a playlist by ID
      parameters:
        - in: path
          name: id
          required: true
          schema:
            type: integer
      responses:
        '204':
          description: Playlist deleted successfully
        '404':
          description: Playlist not found
          content:
            application/json:
              schema:
                $ref: '#/components/schemas/ErrorResponse'

  /playlists/{id}/songs:
    post:
      summary: Add a song to a playlist
      parameters:
        - in: path
          name: id
          required: true
          schema:
            type: integer
      requestBody:
        required: true
        content:
          application/json:
            schema:
              $ref: '#/components/schemas/AddSongToPlaylistRequest'
      responses:
        '200':
          description: Song added to playlist successfully
          content:
            application/json:
              schema:
                type: object
                properties:
                  data:
                    $ref: '#/components/schemas/Playlist'
        '400':
          description: Bad request error
          content:
            application/json:
              schema:
                $ref: '#/components/schemas/ErrorResponse'
        '404':
          description: Playlist or song not found
          content:
            application/json:
              schema:
                $ref: '#/components/schemas/ErrorResponse'

components:
  schemas:
    Song:
      type: object
      properties:
        id:
          type: integer
        title:
          type: string
        artist:
          type: string

    CreateSongRequest:
      type: object
      required:
        - title
        - artist
      properties:
        title:
          type: string
        artist:
          type: string

    UpdateSongRequest:
      type: object
      required:
        - title
        - artist
      properties:
        title:
          type: string
        artist:
          type: string

    PlaylistSong:
      type: object
      properties:
        id:
          type: integer
        title:
          type: string
        artist:
          type: string
        addedAt:
          type: string
          format: date-time
          description: Timestamp when the song was added to the playlist

    Playlist:
      type: object
      properties:
        id:
          type: integer
        name:
          type: string
        description:
          type: string
        isPublished:
          type: boolean
          description: Playlist visibility flag. In the base spec, playlists are created as published.
        publishedAt:
          type: string
          format: date-time
          description: Timestamp when the playlist became published. In the base spec, equals creation time.
        songs:
          type: array
          items:
            $ref: '#/components/schemas/PlaylistSong'
          description: Songs ordered by addition date (most recent first)

    CreatePlaylistRequest:
      type: object
      required:
        - name
        - description
      properties:
        name:
          type: string
        description:
          type: string

    AddSongToPlaylistRequest:
      type: object
      required:
        - songId
      properties:
        songId:
          type: integer

    ErrorResponse:
      type: object
      properties:
        type:
          type: string
        title:
          type: string
        status:
          type: integer
        detail:
          type: string
        instance:
          type: string

```
   - Las respuestas de error deben seguir el RFC 7807 (**). Para este proyecto, por la complejidad, el campo `type` debe ser `about:blank`.

3. **Persistencia de Datos**
- La persistencia en base de datos es obligatoria (relacional o no relacional). Se debe implementar un modelado adecuado.

4. **Requisitos de CI/CD y DevOps**

    1. **Uso de Variables de Entorno:**

      - **Entorno de desarrollo:** Utilizar variables de entorno para configurar parámetros básicos del servicio, como `HOST`, `PORT`, y `ENVIRONMENT`.
      - **Persistencia:** Utilizar las variables relacionadas con la conexión a bases de datos (`DATABASE_HOST`, `DATABASE_NAME`, `DATABASE_PORT`, `DATABASE_USER`, `DATABASE_PASSWORD`).

      - **Aclaraciones:**
        - `ENVIRONMENT`: Define si el entorno es de desarrollo (`development`) o producción (`production`).
        - `PORT`: Define el puerto en el que corre la aplicación, por defecto 8080.
        - `HOST`: Define la IP donde el servicio escucha. `0.0.0.0` permite acceso desde cualquier red, por ejemplo, desde otro contenedor; `127.0.0.1` restringe a conexiones locales. La necesidad de definir `HOST` dependerá de la tecnología.

    2. **Dockerfile:**
      Crear un `Dockerfile` para el servicio siguiendo las [mejores prácticas](https://docs.docker.com/build/building/best-practices/#choose-the-right-base-image) para una imagen concisa y eficiente.


### Requerimientos no funcionales

- Usa cualquier lenguaje de programación para el servicio, preferiblemente las últimas versiones LTS.
- El servicio debe ejecutarse en un contenedor de Docker.
- El `Dockerfile` debe estar en la raíz del repositorio
- Documenta funciones y clases siguiendo el estándar del lenguaje elegido.
- Implementación de logs, utiliza una biblioteca externa de logging para facilitar la configuración.
- Formatea el código con el formatter preferido del lenguaje.
- El código debe estar escrito en inglés.
- Los commits deben ser atómicos y descriptivos, para asegurar consistencia y legibilidad desde el inicio del proyecto.

### Desafíos Opcionales

1. **Longitud minima y maxima de la descripcion de una playlist**:
    - Requiere que el campo description tenga al menos 50 caracteres y máximo 255 caracteres al crear una playlist.
    - Responde con código 400 si la validación falla.
    - Agrega un test para este caso.
2. **UUID para playlists**:
    - Asegura que cada playlist tenga un UUID v4.
    - El servidor debe generar automáticamente el UUID al momento de la creación de la playlist, como respuesta de (`POST /playlists`).
    - El UUID debe manejarse internamente con la API o biblioteca nativa del lenguaje como un identificador de 128 bits.
    - En el contrato REST, el UUID V4 debe representarse como un `string` en [formato estándar](https://datatracker.ietf.org/doc/html/rfc9562#section-4-5) y debe usarse como identificador en todas las operaciones en lugar del ID numérico.
3. **Usar Middleware para Manejar Errores**:
    - Implementa middleware para el manejo centralizado de errores.
4. **Mejoras a la Solución**:
    - ¿Hay espacio para mejorar tu solución? Por favor, elabora.
5. **Uso de Docker Compose**:
   - Agrega un archivo [compose.yaml](https://docs.docker.com/compose/compose-application-model/#the-compose-file) para definir los servicios.
   - La base de datos y el contenedor de la aplicación deben estar definidos en `compose.yml`.
   - El [servicio de Docker](https://docs.docker.com/compose/compose-file/05-services/#simple-example) debe apuntar al `Dockerfile` para la construcción del backend.
6. **CI/CD con GitHub Actions para tests**:
  - Configurar un workflow de GitHub Actions que, en cada push o pull request a la rama main, ejecute los tests del proyecto automáticamente.
  - El workflow debe instalar dependencias, levantar el entorno necesario (ej. base de datos en Docker si aplica) y ejecutar los tests.
  - Documentar en el README.md cómo funciona y cómo se podría adaptar para producción.
7. **Publicación diferida de playlists**:
  - Objetivo: incorporar un **flujo de publicación** donde una playlist recién creada **no** queda visible hasta que el usuario la publique.
  - API mínima: 
    - Agregar un endpoint para **publicar** una playlist: `POST /playlists/{id}/publish` (idempotente).
    - Agregar un **filtro** en el listado: `GET /playlists?published=true` (por defecto muestra solo las publicadas; con `published=false` puede devolver todas para backoffice/tests).
    - El listado de playlists visibles debe mostrar **primero las más recientes**.
  - En esta variante, `POST /playlists` crea la playlist **no publicada** (`isPublished=false`) y **sin `publishedAt`** (o `publishedAt: null`).
  - Tests sugeridos: verificar que una playlist recién creada no aparece hasta publicarse, que el endpoint de publicación sea idempotente y que el listado respete el filtro published y el orden por fecha.

#### Contrato aditivo para el Desafío Opcional (7)
```yaml
openapi: 3.0.0
info:
  title: Melodia Playlist Service API (optional publish)
  version: 1.1.0-optional-publish
paths:
  /playlists:
    get:
      summary: Retrieve playlists (filter by published)
      description: By default returns only published playlists ordered by publishedAt desc.
      parameters:
        - in: query
          name: published
          required: false
          schema:
            type: boolean
            default: true
          description: If true (default), only published playlists are returned. If false, returns all playlists.
        - in: query
          name: sort
          required: false
          schema:
            type: string
            default: -publishedAt
          description: Sort expression (e.g., -publishedAt).
      responses:
        '200':
          description: A list of playlists
          content:
            application/json:
              schema:
                type: object
                properties:
                  data:
                    type: array
                    items:
                      $ref: '#/components/schemas/Playlist'

  /playlists/{id}/publish:
    post:
      summary: Publish a playlist (idempotent)
      description: Sets isPublished=true and publishedAt=now() if not already published.
      parameters:
        - in: path
          name: id
          required: true
          schema:
            type: integer
      responses:
        '200':
          description: Playlist published
          content:
            application/json:
              schema:
                type: object
                properties:
                  data:
                    $ref: '#/components/schemas/Playlist'
        '404':
          description: Playlist not found
          content:
            application/json:
              schema:
                $ref: '#/components/schemas/ErrorResponse'

components:
  schemas:
    Playlist:
      type: object
      properties:
        id: { type: integer }
        name: { type: string }
        description: { type: string }
        isPublished: 
          type: boolean
          description: Visibility flag. In the optional publish variant it starts as false until /publish is called.
        publishedAt:
          type: string
          format: date-time
          nullable: true
          description: Publish timestamp. Omitted or null until the playlist is published.
        songs:
          type: array
          items:
            $ref: '#/components/schemas/PlaylistSong'
    PlaylistSong:
      type: object
      properties:
        id: { type: integer }
        title: { type: string }
        artist: { type: string }
        addedAt:
          type: string
          format: date-time
          description: Timestamp when the song was added to the playlist
    ErrorResponse:
      type: object
      properties:
        type: { type: string }
        title: { type: string }
        status: { type: integer }
        detail: { type: string }
        instance: { type: string }
```

### Ejemplo de Respuesta de Error en Formato RFC 7807 (**)

Ejemplo de una respuesta de error usando el formato RFC 7807:

```json
{
   "type": "about:blank",
   "title": "Playlist Not Found",
   "status": 404,
   "detail": "The playlist with ID 12345 was not found.",
   "instance": "/playlists/12345"
}
```

### Ejemplo de Lanzamiento de Contenedores para Base de Datos

```
docker run --name db-container --network <melodia-network-name> -p 5432:5432 \
  -e POSTGRES_DB=melodiadb \
  -e POSTGRES_USER=melodia.admin \
  -e POSTGRES_PASSWORD=melodia.password \
  postgres:16.3-bookworm
```

```
docker run --name db-container --network <melodia-network-name> -p 3306:3306 \
  -e MYSQL_DATABASE=melodiadb \
  -e MYSQL_USER=melodia.admin \
  -e MYSQL_PASSWORD=melodia.password \
  -e MYSQL_ROOT_PASSWORD=root.password \
  mysql:8.0.37-bookworm
```

### Aclaraciones

- Para asegurar la comunicación entre contenedores lanzados manualmente, primero crea una red de Docker con `docker network create <melodia-network-name>` y luego usa `--network <melodia-network-name>` al lanzar los contenedores. De lo contrario, no podrán comunicarse. Alternativamente, puedes usar Docker Compose, que los coloca automáticamente en la misma red.


### Referencias

-   [OpenAPI Specification](https://swagger.io/specification/)
-   [RFC 7807: Problem Details for HTTP APIs](https://www.codecentric.de/wissens-hub/blog/charge-your-apis-volume-19-understanding-problem-details-for-http-apis-a-deep-dive-into-rfc-7807-and-rfc-9457#:~:text=Explanation)
-   [Docker Documentation](https://docs.docker.com/reference/dockerfile/)
-   [Conventional Commits](https://gist.github.com/qoomon/5dfcdf8eec66a051ecd85625518cfd13#types)
- [The Twelve-Factor App](https://12factor.net/es/)
- [UUID RFC](https://datatracker.ietf.org/doc/html/rfc9562#name-uuid-format)