# Ingenieria de Software II
## Trabajo Practico Individual

### Entrega

La resolución del presente proyecto es individual. Leer la totalidad del enunciado antes de comenzar con el desarrollo de la solución

La entrega del proyecto se realizará mediante un repositorio privado en GitHub. Cada candidato deberá crear su propio repositorio y agregar a su corrector como colaborador para que pueda ser evaluado. Se recomienda iniciar tempranamente y hacer commits pequeños que agreguen funcionalidad incrementalmente. No se evaluará ningún commit realizado luego de la fecha y hora límite de entrega.

El repositorio debe incluir un archivo `README.md` (en español) con:

-   Una tabla de contenido.
-   Una introducción con no más de un párrafo pequeño y conciso sobre la solución planteada.
-   Una sección sobre qué fue lo más desafiante del proyecto.
-   Un apartado de pre-requisitos listando lo necesario para levantar el entorno de desarrollo, especificando los lenguajes y versiones de los manejadores de paquetes necesarios.
-   Link al "user-guide" de la libreria que se uso para testear, o en su defecto link al repo. e.g: [Junit](https://junit.org/junit5/docs/current/user-guide/), [gin-gonic](https://gin-gonic.com/docs/testing/)
-   Comandos para construir la imagen de Docker.
-   Comandos para correr la base de datos.
-   Comandos para correr la imagen del servicio.

Fecha máxima de entrega: 02/09/2024



#### Formulario de entrega 

Se deberá completar el siguiente formulario con Padrón, Nombre, Apellido y Link al repositorio con la solución

[Formulario](https://forms.gle/tG2HtDSyfrtrRigt9)

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
| Desafíos (si los hay)     | Implementación exitosa de cualquier desafío opcional.                               |
| Documentación             | README claro y conciso con todas las secciones requeridas.                          |
| Proceso de Pensamiento    | Explicación de decisiones y proceso de pensamiento a lo largo de la implementación. |


## Enunciado

Muchas gracias por tu interés en la posición de Ingeniero de Software en SnapMsg. Ponte cómodo y asegúrate de revisar bien los requisitos de la prueba.

Tendrás dos semanas para completar la prueba. Normalmente, esperaríamos que trabajaras en esto no más de 3-6 horas, pero probablemente tengas otras cosas que hacer en tu vida, así que queremos darte mucho tiempo en caso de que quieras asumir el desafío.

Si tienes alguna pregunta sobre cualquier cosa, no dudes en preguntarnos: ¡mejor prevenir que lamentar!

Esperamos ver los resultados. ¡Buena suerte!

### Historias de Usuario

#### Publicación de SnapMsg

- **Descripción:** Como usuario de SnapMsg, quiero poder crear y publicar mensajes cortos (SnapMsgs) en mi feed para compartir contenido relevante.

- **Criterio de Aceptación:** El sistema debe permitir a los usuarios crear y publicar mensajes cortos (SnapMsgs) en su feed.

#### Visualizar Feed

- **Descripción:** Como usuario, quiero tener un feed donde pueda ver el  historial de todos los SnapMsgs (mensajes cortos) publicados por mi.

- **Criterio de Aceptación:**: Cuando ingrese al feed de mi cuenta de SnapMsg, se debe mostrar mis publicaciones más recientes en orden cronológico inverso.

### Requisitos

1. **Especificaciones del Servicio Backend**:
    - El servicio debe ser una API RESTful y devolver datos en formato JSON.
    - Asegúrate de probar cada endpoint con al menos una prueba E2E (End to End) o de integración, de manera que las pruebas sean claras y descriptivas en su propósito.

2. **Endpoints a Implementar**:
    - Utiliza la siguiente especificación de OpenAPI para implementar los endpoints, que se puede visualizar en [Swagger Editor](https://editor.swagger.io/) para una vista más gráfica.

   ```yaml
    openapi: 3.0.0
    info:
      title: Snap Content Service API
      version: 1.0.0
    paths:
      /snaps:
        post:
          summary: Create a new snap
          requestBody:
            required: true
            content:
              application/json:
                schema:
                  type: object
                  properties:
                    message:
                      type: string
          responses:
            '201':
              description: Snap created successfully
              content:
                application/json:
                  schema:
                    type: object
                    properties:
                      data:
                        type: object
                        properties:
                          id:
                            type: integer
                          message:
                            type: string
            '400':
              description: Bad request error
              content:
                application/json:
                  schema:
                    $ref: '#/components/schemas/ErrorResponse'
            '500':
              description: Internal server error
              content:
                application/json:
                  schema:
                    $ref: '#/components/schemas/ErrorResponse'
        get:
          summary: Retrieve all snaps
          responses:
            '200':
              description: A list of snaps
              content:
                application/json:
                  schema:
                    type: object
                    properties:
                      data:
                        type: array
                        items:
                          type: object
                          properties:
                            id:
                              type: integer
                            message:
                              type: string
            '500':
              description: Internal server error
              content:
                application/json:
                  schema:
                    $ref: '#/components/schemas/ErrorResponse'
    components:
      schemas:
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
- Los datos deben persistir en memoria durante la ejecución del programa.
- Para un manejo más eficiente y estructurado de la información, se recomienda utilizar una base de datos para el almacenamiento de los datos.

4. **Requisitos de CI/CD y DevOps**

    1. **Uso de Variables de Entorno:**

      - **Entorno de desarrollo:** Utilizar variables de entorno para configurar parámetros básicos del servicio, como `HOST`, `PORT`, y `ENVIRONMENT`.
      - **Persistencia:** Utilizar las variables relacionadas con la conexión a bases de datos (`DATABASE_HOST`, `DATABASE_PORT`, `DATABASE_USER`, `DATABASE_PASSWORD`) si se emplea una base de datos. Si no aplica, omitir estas variables.

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

1. **Validación de Longitud del Mensaje**:
    - Limita el campo `message` a 280 caracteres al crear un snap.
    - Responde con código 400 si la validación falla.
    - Agrega un test para este caso.
2. **UUID para Snaps**:
    - Asegura que cada snap tenga un UUID.
    - El servidor debe generar el UUID en la respuesta al momento de crearse un snap (`POST /snaps`).
    - Revisa la especificación de OpenAPI. (*)
3. **GET /snaps/{id}** y **DELETE /snaps/{id}**:
    - Recupera y elimina un snap por ID.
    - Devuelve código 404 si el snap no se encuentra.
    - Cada endpoint debe tener una prueba para el caso exitoso.
    - Revisa la especificación de OpenAPI. (*)
4. **Usar Middleware para Manejar Errores**:
    - Implementa middleware para el manejo centralizado de errores.
5. **Mejoras a la Solución**:
    - ¿Hay espacio para mejorar tu solución? Por favor, elabora.
6. **Uso de Docker Compose**:
   - Agrega un archivo [compose.yaml](https://docs.docker.com/compose/compose-application-model/#the-compose-file) para definir los servicios.
   - La base de datos y el contenedor de la aplicación deben estar definidos en `compose.yml`.
   - El [servicio de Docker](https://docs.docker.com/compose/compose-file/05-services/#simple-example) debe apuntar al `Dockerfile` para la construcción del backend.


Utiliza la siguiente especificación de OpenAPI, que incluye el parámetro de ruta `{id}`, el cual puede ser un UUID o un ID numérico según se requiera. (*)

```yaml
openapi: 3.0.0
info:
  title: Snap Content Service API
  version: 1.0.0

paths:
  /snaps:
    post:
      summary: Create a new snap
      requestBody:
        required: true
        content:
          application/json:
            schema:
              type: object
              properties:
                message:
                  type: string
      responses:
        '201':
          description: Snap created successfully
          content:
            application/json:
              schema:
                type: object
                properties:
                  data:
                    type: object
                    properties:
                      id:
                        type: integer
                      message:
                        type: string
        '400':
          description: Bad request error
          content:
            application/json:
              schema:
                $ref: '#/components/schemas/ErrorResponse'

  /snaps/{id}:
    get:
      summary: Retrieve a snap by ID
      parameters:
        - in: path
          name: id
          required: true
          schema:
            type: string
            format: uuid
          example: "123e4567-e89b-12d3-a456-426614174000"
      responses:
        '200':
          description: Snap retrieved successfully
          content:
            application/json:
              schema:
                type: object
                properties:
                  data:
                    type: object
                    properties:
                      id:
                        type: string
                        format: uuid
                      message:
                        type: string
        '404':
          description: Snap not found
          content:
            application/json:
              schema:
                $ref: '#/components/schemas/ErrorResponse'
        '500':
          description: Internal server error
          content:
            application/json:
              schema:
                $ref: '#/components/schemas/ErrorResponse'

    delete:
      summary: Delete a snap by ID
      parameters:
        - in: path
          name: id
          required: true
          schema:
            type: string
            format: uuid
          example: "123e4567-e89b-12d3-a456-426614174000"
      responses:
        '204':
          description: Snap deleted successfully
        '404':
          description: Snap not found
          content:
            application/json:
              schema:
                $ref: '#/components/schemas/ErrorResponse'
        '500':
          description: Internal server error
          content:
            application/json:
              schema:
                $ref: '#/components/schemas/ErrorResponse'

components:
  schemas:
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
### Ejemplo de Respuesta de Error en Formato RFC 7807 (**)

Ejemplo de una respuesta de error usando el formato RFC 7807:

```json
{
   "type": "https://example.com/errors/snap-not-found",
   "title": "Snap Not Found",
   "status": 404,
   "detail": "The snap with ID 12345 was not found.",
   "instance": "/snaps/12345"
}
```

### Ejemplo de Lanzamiento de Contenedores para Base de Datos

```
docker run --name db-container --network <snap-network-name> -p 5432:5432 \
  -e POSTGRES_DB=snapdb \
  -e POSTGRES_USER=snap.admin \
  -e POSTGRES_PASSWORD=snap.password \
  postgres:16.3-bookworm
```

```
docker run --name db-container --network <snap-network-name> -p 3306:3306 \
  -e MYSQL_DATABASE=snapdb \
  -e MYSQL_USER=snap.admin \
  -e MYSQL_PASSWORD=snap.password \
  -e MYSQL_ROOT_PASSWORD=root.password \
  mysql:8.0.37-bookworm
```

### Aclaraciones

- Para asegurar la comunicación entre contenedores lanzados manualmente, primero crea una red de Docker con `docker network create <snap-network-name>` y luego usa `--network <snap-network-name>` al lanzar los contenedores. De lo contrario, no podrán comunicarse. Alternativamente, puedes usar Docker Compose, que los coloca automáticamente en la misma red.


### Referencias

-   [OpenAPI Specification](https://swagger.io/specification/)
-   [RFC 7807: Problem Details for HTTP APIs](https://www.codecentric.de/wissens-hub/blog/charge-your-apis-volume-19-understanding-problem-details-for-http-apis-a-deep-dive-into-rfc-7807-and-rfc-9457#:~:text=Explanation)
-   [Docker Documentation](https://docs.docker.com/reference/dockerfile/)
-   [Conventional Commits](https://gist.github.com/qoomon/5dfcdf8eec66a051ecd85625518cfd13#types)
- [The Twelve-Factor App](https://12factor.net/es/)