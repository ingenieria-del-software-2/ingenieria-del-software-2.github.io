# 2026 1C - Individual
# Ingenieria de Software II
## Trabajo Practico Individual

## Enunciado

En este trabajo práctico individual desarrollarás un servicio backend para una plataforma de eCommerce. El servicio se diseñará como una API REST que se encarga de manejar el ciclo de vida de productos y el carrito de compras de los usuarios de la plataforma.

### Entrega

Tendrás 10 días para completar esta prueba técnica. Calculamos que llevará unas 6-10 horas, pero te damos total flexibilidad para que puedas lucir lo mejor de tu talento.

Si surge cualquier pregunta sobre los requerimientos o el alcance, podés consultar a cualquiera del cuerpo docente a través de Slack.

La entrega del proyecto se realizará mediante un repositorio privado en GitHub. Cada candidato deberá crear su propio repositorio y agregar a su corrector como colaborador para que pueda ser evaluado. Se recomienda iniciar tempranamente y hacer commits pequeños que agreguen funcionalidad incrementalmente. No se evaluará ningún commit realizado luego de la fecha y hora límite de entrega.

**Aviso importante:** Si durante la revisión de tu entrega surge alguna duda o inconsistencia, el equipo docente podrá solicitar una breve defensa oral a través de una reunión virtual (Google Meet u otra plataforma similar).

El repositorio debe incluir un archivo `README.md` (en español) con:

-   Una tabla de contenido.
-   Una introducción con no más de un párrafo pequeño y conciso sobre la solución planteada.
-   Una sección sobre qué fue lo más desafiante del proyecto.
-   Un apartado de pre-requisitos listando lo necesario para levantar el entorno de desarrollo, especificando los lenguajes y versiones de los manejadores de paquetes necesarios.
-   Link al "user-guide" de la libreria que se uso para testear, o en su defecto link al repo. e.g: [JUnit](https://junit.org/junit5/docs/current/user-guide/), [pytest](https://docs.pytest.org/)
-   Comandos para construir la imagen de Docker.
-   Comandos para correr la base de datos.
-   Comandos para correr la imagen del servicio.

Fecha máxima de entrega: **20-03-2026** 23.59hs 


#### Formulario de entrega

Se deberá completar el siguiente formulario con Padrón, Nombre, Apellido y Link al repositorio con la solución

[Formulario](https://forms.gle/HrPmQ825dn9QfsQh9)

Luego de haber completado este formulario, les solicitaremos que agreguen al usuario del corrector asignado.

### Criterios de Evaluación

| Criterio                  | Descripción                                                                         |
| ------------------------- | ----------------------------------------------------------------------------------- |
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


**Importante**: La condición mínima de aprobación se logra entregando un trabajo práctico que cumpla la especificación entera del servicio descripto a continuación. Se va a validar la especificación utilizando un set de pruebas automáticas. Una entrega que no pase las pruebas no podrá ser considerado como aprobado.


### Historias de Usuario

#### Gestión de productos

- **Descripción:** Como vendedor de la plataforma, quiero poder agregar productos (crear, consultar, actualizar) para tener un catálogo disponible de productos a ser comprados.
- **Criterio de Aceptación:** El sistema debe permitir agregar nuevos productos, ver su información, modificarlos. Cada producto tiene un título, una descripción y un precio.

#### Borrado de producto

- **Descripción:** Como vendedor de la plataforma, quiero poder borrar productos listados en el catálogo.
- **Criterio de Aceptación:** El sistema debe permitir borrar productos del catálogo. Cuando un producto es borrado, los ítems de carrito asociados a ese producto deben eliminarse de todos los carritos.


#### Agregar productos a mi carrito

- **Descripción:** Como usuario, quiero poder agregar productos existentes a mi carrito de compras, manteniendo un registro de cuándo los agregué.
- **Criterio de Aceptación:** El sistema debe permitir agregar productos al carrito del usuario, registrar automáticamente la fecha y hora de agregado, guardar el precio unitario del producto como snapshot al momento de agregarlo, y retornar un ID de ítem correspondiente al producto dentro de mi carrito.

#### Visualizar mi carrito

- **Descripción:** Como usuario, quiero poder ver mi carrito actual para entender qué productos voy a comprar y cuál es el precio final.
- **Criterio de Aceptación:** Al consultar mi carrito debo poder ver los ítems que agregué, y el precio total de mi compra entera. Un carrito inexistente o vacío se devuelve como carrito vacío con precio total 0.

#### Modificaciones del carrito

- **Descripción:** Como usuario, quiero poder quitar productos de mi carrito si no deseo comprarlos.
- **Criterio de Aceptación:** Al borrar un ítem de mi carrito, y posteriormente consultar mi carrito, el ítem recién borrado no debe visualizarse. El ítem debe pertenecer al usuario indicado.

#### Limpiado del carrito

- **Descripción:** Como usuario, quiero poder quitar todos los productos de mi carrito si no deseo comprarlos.
- **Criterio de Aceptación:** Al borrar todos los productos de mi carrito, y posteriormente consultar mi carrito, el carrito debe estar vacío.

### Requisitos

1. **Especificaciones del Servicio Backend**:
    - El servicio debe ser una API REST y devolver datos en formato JSON.
    - Las respuestas de error deben usar content-type `application/problem+json`.
    - Asegurate de probar cada endpoint con al menos una prueba E2E (End to End) o de integración, de manera que las pruebas sean claras y descriptivas en su propósito.

2. **Endpoints a Implementar**:
    - Utiliza la siguiente especificación de OpenAPI para implementar los endpoints, que se puede visualizar en [Swagger Editor](https://editor.swagger.io/) para una vista más gráfica.

```yaml
openapi: 3.0.0
info:
  title: eCommerce Products Service API
  version: 2.0.0

paths:
  /products:
    post:
      summary: Create a new product
      requestBody:
        required: true
        content:
          application/json:
            schema:
              $ref: '#/components/schemas/CreateProductRequest'
      responses:
        '201':
          description: Product created successfully
          content:
            application/json:
              schema:
                type: object
                required: [data]
                properties:
                  data:
                    $ref: '#/components/schemas/Product'
        '400':
          description: Bad request error
          content:
            application/problem+json:
              schema:
                $ref: '#/components/schemas/ErrorResponse'

    get:
      summary: Retrieve all products
      description: Returns all products ordered by id ascending
      responses:
        '200':
          description: A list of products
          content:
            application/json:
              schema:
                type: object
                required: [data]
                properties:
                  data:
                    type: array
                    items:
                      $ref: '#/components/schemas/Product'

  /products/{id}:
    get:
      summary: Retrieve a product by ID
      parameters:
        - in: path
          name: id
          required: true
          schema:
            type: integer
      responses:
        '200':
          description: Product retrieved successfully
          content:
            application/json:
              schema:
                type: object
                required: [data]
                properties:
                  data:
                    $ref: '#/components/schemas/Product'
        '404':
          description: Product not found
          content:
            application/problem+json:
              schema:
                $ref: '#/components/schemas/ErrorResponse'

    put:
      summary: Full update of a product by ID
      description: Replaces all mutable fields of a product. All fields in the request body are required.
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
              $ref: '#/components/schemas/UpdateProductRequest'
      responses:
        '200':
          description: Product updated successfully
          content:
            application/json:
              schema:
                type: object
                required: [data]
                properties:
                  data:
                    $ref: '#/components/schemas/Product'
        '400':
          description: Bad request error
          content:
            application/problem+json:
              schema:
                $ref: '#/components/schemas/ErrorResponse'
        '404':
          description: Product not found
          content:
            application/problem+json:
              schema:
                $ref: '#/components/schemas/ErrorResponse'

    delete:
      summary: Delete a product by ID
      parameters:
        - in: path
          name: id
          required: true
          schema:
            type: integer
      responses:
        '204':
          description: Product deleted successfully
        '404':
          description: Product not found
          content:
            application/problem+json:
              schema:
                $ref: '#/components/schemas/ErrorResponse'

  /cart/{userId}:
    get:
      summary: Get user's cart
      description: Returns the user's cart with items ordered by addedAt descending, then id descending. An unknown userId returns an empty cart.
      parameters:
        - in: path
          name: userId
          required: true
          schema:
            type: integer
      responses:
        '200':
          description: User cart retrieved successfully
          content:
            application/json:
              schema:
                type: object
                required: [data]
                properties:
                  data:
                    $ref: '#/components/schemas/Cart'

    delete:
      summary: Wipe a user's cart
      description: Removes all items from the user's cart. Idempotent - wiping an empty or non-existent cart returns 204.
      parameters:
        - in: path
          name: userId
          required: true
          schema:
            type: integer
      responses:
        '204':
          description: Cart wiped successfully

  /cart/{userId}/items:
    post:
      summary: Add product to user's cart
      description: Adds a new cart item with a snapshot of the product's current price and title. Each POST creates an independent item (duplicates allowed).
      parameters:
        - in: path
          name: userId
          required: true
          schema:
            type: integer
      requestBody:
        required: true
        content:
          application/json:
            schema:
              $ref: '#/components/schemas/AddCartRequest'
      responses:
        '201':
          description: Product added to cart successfully
          content:
            application/json:
              schema:
                type: object
                required: [data]
                properties:
                  data:
                    $ref: '#/components/schemas/CartItem'
        '404':
          description: Product not found
          content:
            application/problem+json:
              schema:
                $ref: '#/components/schemas/ErrorResponse'
        '400':
          description: Bad request error
          content:
            application/problem+json:
              schema:
                $ref: '#/components/schemas/ErrorResponse'

  /cart/{userId}/items/{cartItemId}:
    delete:
      summary: Delete an item from a user's cart
      description: Removes a specific item from the user's cart. The item must belong to the specified user.
      parameters:
        - in: path
          name: userId
          required: true
          schema:
            type: integer
        - in: path
          name: cartItemId
          required: true
          schema:
            type: integer
      responses:
        '204':
          description: Cart item deleted successfully
        '404':
          description: Cart item not found in user's cart
          content:
            application/problem+json:
              schema:
                $ref: '#/components/schemas/ErrorResponse'

components:
  schemas:
    Product:
      type: object
      required: [id, sellerId, title, description, price, createdAt, updatedAt]
      properties:
        id:
          type: integer
        sellerId:
          type: integer
        title:
          type: string
        description:
          type: string
        price:
          type: number
          minimum: 0.01
          description: Price in USD, rounded to 2 decimal places
        createdAt:
          type: string
          format: date-time
        updatedAt:
          type: string
          format: date-time

    CartItem:
      type: object
      required: [id, productId, title, unitPrice, addedAt]
      properties:
        id:
          type: integer
        productId:
          type: integer
        title:
          type: string
        unitPrice:
          type: number
          minimum: 0.01
          description: Snapshot price in USD when item was added to cart, rounded to 2 decimal places
        addedAt:
          type: string
          format: date-time

    Cart:
      type: object
      required: [userId, items, totalPrice]
      properties:
        userId:
          type: integer
        items:
          type: array
          items:
            $ref: '#/components/schemas/CartItem'
        totalPrice:
          type: number
          minimum: 0
          description: Sum of unitPrice of all items, in USD

    CreateProductRequest:
      type: object
      required:
        - sellerId
        - title
        - description
        - price
      properties:
        sellerId:
          type: integer
        title:
          type: string
        description:
          type: string
        price:
          type: number
          minimum: 0.01

    UpdateProductRequest:
      type: object
      required:
        - title
        - description
        - price
      properties:
        title:
          type: string
        description:
          type: string
        price:
          type: number
          minimum: 0.01

    AddCartRequest:
      type: object
      required:
        - productId
      properties:
        productId:
          type: integer

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

3. **Persistencia de Datos**
- La persistencia en base de datos es obligatoria (relacional o no relacional). Se debe implementar un modelado adecuado.

4. **Requisitos de CI/CD y DevOps**

    1. **Uso de Variables de Entorno:**

      - **Entorno de desarrollo:** Utilizar variables de entorno para configurar parámetros básicos del servicio, como `HOST`, `PORT`, y `ENVIRONMENT`.
      - **Persistencia:** Utilizar las variables relacionadas con la conexión a bases de datos (`DATABASE_HOST`, `DATABASE_NAME`, `DATABASE_PORT`, `DATABASE_USER`, `DATABASE_PASSWORD`).

      - **Aclaraciones:**
        - `ENVIRONMENT`: Define si el entorno es de desarrollo (`development`) o producción (`production`). Default: `development`.
        - `PORT`: Define el puerto en el que corre la aplicación. Default: `8080`.
        - `HOST`: Define la IP donde el servicio escucha. Default: `0.0.0.0`. `0.0.0.0` permite acceso desde cualquier red, por ejemplo, desde otro contenedor; `127.0.0.1` restringe a conexiones locales. La necesidad de definir `HOST` dependerá de la tecnología.
        - El servicio **debe** escuchar en `${HOST}:${PORT}` con los defaults indicados.

    2. **Dockerfile:**
      Crear un `Dockerfile` para el servicio siguiendo las [mejores prácticas](https://docs.docker.com/build/building/best-practices/#choose-the-right-base-image) para una imagen concisa y eficiente.


**Importante**: Es de vital importancia cumplir con la especificación provista en esta sección (especificamente las variables de entorno definidas) para asegurar que la corrección automática funcione de manera adecuada.


### Requerimientos no funcionales

- Usa cualquier lenguaje de programación para el servicio, preferiblemente las últimas versiones LTS.
- El servicio debe ejecutarse en un contenedor de Docker.
- El `Dockerfile` debe estar en la raíz del repositorio.
- Documenta funciones y clases siguiendo el estándar del lenguaje elegido.
- Implementación de logs, utiliza una biblioteca externa de logging para facilitar la configuración.
- Formatea el código con el formatter preferido del lenguaje.
- El código debe estar escrito en inglés.
- Los commits deben ser atómicos y descriptivos, para asegurar consistencia y legibilidad desde el inicio del proyecto.

### Desafíos Opcionales

1. **Usar Middleware para Manejar Errores**:
    - Implementa middleware para el manejo centralizado de errores.
2. **Mejoras a la Solución**:
    - ¿Hay espacio para mejorar tu solución? Por favor, elabora.
3. **Uso de Docker Compose**:
   - Agrega un archivo [compose.yaml](https://docs.docker.com/compose/compose-application-model/#the-compose-file) para definir los servicios.
   - La base de datos y el contenedor de la aplicación deben estar definidos en `compose.yaml`.
   - El [servicio de Docker](https://docs.docker.com/compose/compose-file/05-services/#simple-example) debe apuntar al `Dockerfile` para la construcción del backend.
4. **CI/CD con GitHub Actions para tests**:
  - Configurar un workflow de GitHub Actions que, en cada push o pull request a la rama main, ejecute los tests del proyecto automáticamente.
  - El workflow debe instalar dependencias, levantar el entorno necesario (ej. base de datos en Docker si aplica) y ejecutar los tests.
  - Documentar en el README.md cómo funciona y cómo se podría adaptar para producción.

### Ejemplo de Respuesta de Error en Formato RFC 7807 (**)

Ejemplo de una respuesta de error usando el formato RFC 7807:

```json
{
   "type": "about:blank",
   "title": "Product Not Found",
   "status": 404,
   "detail": "The product with ID 12345 was not found.",
   "instance": "/products/12345"
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
-   [Conventional Commits](https://gist.github.com/qoomon/5dfcdf8eec66a051ecd85625518cfd13#types)
- [The Twelve-Factor App](https://12factor.net/es/)

