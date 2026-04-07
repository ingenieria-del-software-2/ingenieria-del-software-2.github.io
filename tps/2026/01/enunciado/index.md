# 2026C1 - Bazaar

# Bazaar

Comprá. Vendé. Conectate.

<img width="1260" height="763" alt="bazaar-banner" src="https://github.com/user-attachments/assets/8f0d7e71-ccb7-4ea4-810c-ce474ada3ee1" />

**Descripción**

Bazaar es el marketplace donde cualquier persona puede convertirse en vendedor en minutos o encontrar exactamente lo que busca en segundos. Sin barreras de entrada, sin intermediarios innecesarios: el catálogo lo construyen los propios usuarios.

¿Tenés algo que ya no usás? Publicalo. ¿Buscás algo específico? Explorá. La misma cuenta te permite comprar y vender, sin fricciones y sin límites de categoría.

Detrás de esa simplicidad, Bazaar garantiza lo que importa: que cuando alguien paga, el producto esté disponible; que si el pago falla, no se cobre; que si dos personas quieren el último item, solo una se lo lleve. Confianza y consistencia, en cada transacción.

## Índice

**1. Usuarios** — Gestión de cuentas: registro, acceso y recuperación.

- [Registro de usuarios](#registro-de-usuarios)
- [Login con email y contraseña](#login-con-email-y-contraseña)
- [Recupero de contraseña](#recupero-de-contraseña)
- [Login con proveedor federado](#login-con-proveedor-federado)
- [Registro con PIN](#registro-con-pin)

**2. Perfil** — Identidad del usuario dentro de la plataforma.

- [Edición de perfil](#edición-de-perfil)
- [Visualización de perfil propio](#visualización-de-perfil-propio)
- [Visualización de perfil público](#visualización-de-perfil-público)

**3. Catálogo** — Exploración y búsqueda de productos disponibles.

- [Home](#home)
- [Productos populares en home](#productos-populares-en-home)
- [Listado y búsqueda de productos](#listado-y-búsqueda-de-productos)
- [Detalle de producto](#detalle-de-producto)
- [Compartir link de producto](#compartir-link-de-producto)
- [Filtros avanzados de búsqueda](#filtros-avanzados-de-búsqueda)
- [Ordenamiento de resultados](#ordenamiento-de-resultados)

**4. Carrito** — Selección y gestión de productos antes de la compra.

- [Agregar producto al carrito](#agregar-producto-al-carrito)
- [Gestión del carrito](#gestión-del-carrito)

**5. Checkout y Órdenes** — Flujo de compra, pago y seguimiento del estado de cada orden.

- [Checkout e inicio de pago](#checkout-e-inicio-de-pago)
- [Estado y seguimiento de orden](#estado-y-seguimiento-de-orden)
- [Historial de compras](#historial-de-compras)
- [Cancelar orden](#cancelar-orden)
- [Reembolso simulado al cancelar](#reembolso-simulado-al-cancelar)
- [Aplicar cupón en checkout](#aplicar-cupón-en-checkout)

**6. Vendedor** — Publicación de productos y administración de las propias ventas.

- [Publicar producto](#publicar-producto)
- [Gestión de stock y publicaciones](#gestión-de-stock-y-publicaciones)
- [Historial de ventas](#historial-de-ventas)
- [Crear y gestionar cupones de descuento](#crear-y-gestionar-cupones-de-descuento)

**7. Administración** — Backoffice para la gestión de usuarios y contenido de la plataforma.

- [Listar usuarios del sistema](#listar-usuarios-del-sistema)
- [Bloquear y desbloquear usuario](#bloquear-y-desbloquear-usuario)
- [Listar y moderar productos](#listar-y-moderar-productos)
- [Listar órdenes del sistema](#listar-órdenes-del-sistema)

**8. Métricas** — Indicadores de actividad y salud de la plataforma.

- [Métricas del sistema](#métricas-del-sistema)
- [Métricas por categoría](#métricas-por-categoría)
- [Exportar datos de métricas](#exportar-datos-de-métricas)

**9. Reviews** — Calificaciones y reputación dentro del ecosistema de compras.

- [Calificar producto y vendedor](#calificar-producto-y-vendedor)
- [Reputación del vendedor en perfil público](#reputación-del-vendedor-en-perfil-público)

**10. Wishlist** — Lista de deseos del comprador.

- [Agregar / quitar de wishlist](#agregar--quitar-de-wishlist)
- [Visualización de wishlist](#visualización-de-wishlist)

**11. Notificaciones** — Comunicación proactiva al comprador y al vendedor.

- [Notificación de cambio de estado de orden](#notificación-de-cambio-de-estado-de-orden)
- [Notificación de stock bajo al vendedor](#notificación-de-stock-bajo-al-vendedor)

**12. Recomendaciones** — Descubrimiento personalizado de productos.

- [Recomendaciones basadas en historial](#recomendaciones-basadas-en-historial)

---

# Historias de Usuario

## Épica: Usuarios

### Registro de usuarios

<!-- Status: Obligatoria -->

**Descripción**: Como **persona sin cuenta**, quiero **registrarme en la plataforma con mi correo electrónico** para **acceder a sus funcionalidades como comprador y/o vendedor**.

**Criterios de aceptación**

- CA 1: Registro exitoso con datos válidos
  - Dado que un nuevo usuario completa el formulario de registro con nombre, correo electrónico y contraseña válidos
  - Cuando envía el formulario
  - Entonces se crea la cuenta y el usuario accede a la plataforma.

- CA 2: Email ya registrado
  - Dado que un usuario ingresa un correo electrónico que ya existe en el sistema
  - Cuando intenta registrarse
  - Entonces el sistema indica que el correo ya está en uso y no crea la cuenta.

- CA 3: Formato de email inválido
  - Dado que un usuario ingresa un correo electrónico con formato inválido
  - Cuando intenta continuar con el registro
  - Entonces el sistema indica el error y no permite continuar.

- CA 4: Contraseña insegura
  - Dado que un usuario ingresa una contraseña que no cumple los requisitos mínimos de seguridad
  - Cuando intenta continuar con el registro
  - Entonces el sistema indica los requisitos y no permite continuar.

### Login con email y contraseña

<!-- Status: Obligatoria -->

**Descripción**: Como **usuario registrado**, quiero **iniciar sesión con mi correo electrónico y contraseña** para **acceder a mi cuenta de forma segura**.

**Criterios de aceptación**

- CA 1: Login exitoso
  - Dado que un usuario registrado tiene credenciales válidas
  - Cuando ingresa su email y contraseña y confirma el login
  - Entonces accede a la plataforma con su sesión activa.

- CA 2: Credenciales incorrectas
  - Dado que un usuario ingresa contraseña incorrecta para un email registrado
  - Cuando intenta iniciar sesión
  - Entonces el sistema muestra un error sin revelar cuál campo es incorrecto.

- CA 3: Email no registrado
  - Dado que un usuario ingresa un email no registrado
  - Cuando intenta iniciar sesión
  - Entonces el sistema muestra un error sin revelar cuál campo es incorrecto.

- CA 4: Sesión expirada
  - Dado que un usuario tiene la sesión expirada
  - Cuando intenta realizar una acción autenticada
  - Entonces el sistema lo redirige al login y conserva la acción pendiente cuando sea posible.

### Recupero de contraseña

<!-- Status: Obligatoria -->

**Descripción**: Como **usuario que olvidó su contraseña**, quiero **recuperar el acceso a mi cuenta** para **volver a utilizarla sin necesidad de crear una nueva**.

**Criterios de aceptación**

- CA 1: Solicitud de recupero
  - Dado que un usuario quiere recuperar su contraseña
  - Cuando solicita el recupero ingresando su email
  - Entonces el sistema envía un email con un enlace de recupero de uso único y con tiempo de expiración no mayor a 1 hora.

- CA 2: Token expirado o ya utilizado
  - Dado que un usuario tiene un enlace de recupero expirado o ya utilizado
  - Cuando intenta usarlo
  - Entonces el sistema informa que el enlace no es válido y permite solicitar uno nuevo.

- CA 3: Nueva contraseña definida
  - Dado que un usuario accedió al enlace de recupero válido
  - Cuando ingresa y confirma una nueva contraseña válida
  - Entonces la contraseña se actualiza y el enlace queda invalidado.

- CA 4: Email no registrado en el recupero
  - Dado que un usuario solicita recuperar una contraseña para un email que no existe en el sistema
  - Cuando envía la solicitud
  - Entonces el sistema responde con el mismo mensaje de éxito genérico, sin revelar si el email está registrado.

- CA 5: Límite de intentos de recupero
  - Dado que un usuario ya realizó múltiples solicitudes de recupero en un período corto
  - Cuando intenta solicitar un nuevo recupero
  - Entonces el sistema limita la frecuencia de envío de emails para prevenir abuso.

### Login con proveedor federado

<!-- Status: Optativa -->

**Descripción**: Como **usuario**, quiero **iniciar sesión con mi cuenta de Google u otro proveedor externo** para **acceder a la plataforma sin necesidad de recordar una contraseña adicional**.

**Criterios de aceptación**

- CA 1: Login federado exitoso con cuenta nueva
  - Dado que un usuario no tiene cuenta en la plataforma
  - Cuando se autentica por primera vez con un proveedor externo (ej. Google)
  - Entonces el sistema crea una cuenta asociada al email del proveedor y lo redirige a la plataforma con sesión activa.

- CA 2: Login federado con cuenta existente
  - Dado que un usuario ya tiene una cuenta registrada con el mismo email del proveedor externo
  - Cuando se autentica con ese proveedor
  - Entonces el sistema vincula la identidad federada a la cuenta existente y lo redirige autenticado.

- CA 3: Proveedor externo no disponible
  - Dado que el proveedor de identidad externo no responde
  - Cuando un usuario intenta autenticarse a través de ese proveedor
  - Entonces el sistema informa el error y ofrece el login con email y contraseña como alternativa.

### Registro con PIN

<!-- Status: Optativa -->

**Descripción**: Como **usuario**, quiero **registrarme o autenticarme usando un PIN numérico** para **tener una forma de acceso rápida desde el dispositivo móvil**.

**Criterios de aceptación**

- CA 1: Configuración del PIN
  - Dado que un usuario ya registrado quiere activar el acceso por PIN
  - Cuando decide configurarlo y define un PIN de al menos 6 dígitos
  - Entonces el PIN queda asociado a su cuenta en ese dispositivo.

- CA 2: Autenticación con PIN
  - Dado que un usuario tiene PIN configurado en su dispositivo
  - Cuando intenta ingresar usando el PIN
  - Entonces puede autenticarse sin ingresar email ni contraseña.

- CA 3: PIN incorrecto
  - Dado que un usuario ingresa un PIN incorrecto de forma reiterada
  - Cuando supera el límite de intentos fallidos
  - Entonces el sistema bloquea temporalmente el acceso por PIN y solicita autenticación con email y contraseña.

- CA 4: PIN ligado al dispositivo
  - Dado que un usuario tiene PIN configurado en un dispositivo
  - Cuando intenta usar su PIN desde un dispositivo diferente
  - Entonces el sistema no permite el acceso por PIN y requiere autenticación completa.

## Épica: Perfil

### Edición de perfil

<!-- Status: Obligatoria -->

**Descripción**: Como **usuario registrado**, quiero **editar los datos de mi perfil** para **mantener mi información actualizada**.

**Criterios de aceptación**

- CA 1: Edición exitosa
  - Dado que un usuario editó su nombre, foto de perfil o descripción con datos válidos
  - Cuando guarda los cambios
  - Entonces los cambios se persisten y se reflejan inmediatamente en su perfil.

- CA 2: Foto de perfil actualizada
  - Dado que un usuario tiene una nueva imagen de perfil lista para subir
  - Cuando la sube
  - Entonces la imagen se muestra en su perfil y en cualquier lugar donde se muestre su identidad.

- CA 3: Datos inválidos
  - Dado que un usuario completó datos que no cumplen las validaciones del sistema
  - Cuando intenta guardarlos
  - Entonces el sistema indica los errores y no persiste los cambios.

### Visualización de perfil propio

<!-- Status: Obligatoria -->

**Descripción**: Como **usuario registrado**, quiero **ver mi perfil** para **revisar mi información y acceder a la gestión de mis publicaciones**.

**Criterios de aceptación**

- CA 1: Vista del perfil propio
  - Dado que un usuario tiene una cuenta activa
  - Cuando accede a su perfil
  - Entonces puede ver su nombre, foto, descripción y un resumen de sus publicaciones activas.

- CA 2: Acceso directo a edición
  - Dado que un usuario está viendo su propio perfil
  - Cuando quiere editarlo
  - Entonces tiene acceso directo a la edición del mismo.

### Visualización de perfil público

<!-- Status: Optativa -->

**Descripción**: Como **usuario**, quiero **ver el perfil público de otro usuario** para **conocer quién está vendiendo un producto y evaluar su confiabilidad**.

**Criterios de aceptación**

- CA 1: Vista del perfil público de otro usuario
  - Dado que un usuario quiere ver información de otro usuario
  - Cuando accede al perfil público de ese usuario
  - Entonces puede ver únicamente los datos públicos: nombre, foto de perfil, descripción y publicaciones activas.

- CA 2: Datos privados no expuestos
  - Dado que un usuario está viendo el perfil público de otro usuario
  - Cuando revisa la información disponible
  - Entonces no puede ver datos privados como email, historial de compras ni información de contacto no publicada voluntariamente.

- CA 3: Perfil de usuario bloqueado
  - Dado que un usuario está bloqueado por el administrador
  - Cuando otro usuario intenta acceder a su perfil
  - Entonces el sistema indica que el perfil no está disponible.

### Compartir link de producto

<!-- Status: Optativa -->

**Descripción**: Como **usuario**, quiero **obtener un link directo a un producto** para **compartirlo con otras personas fuera de la plataforma**.

**Criterios de aceptación**

- CA 1: Link generado correctamente
  - Dado que un usuario accede al detalle de un producto activo
  - Cuando utiliza la opción de compartir
  - Entonces el sistema genera una URL directa al producto que puede copiarse o compartirse.

- CA 2: Link funcional
  - Dado que alguien tiene el link compartido de un producto disponible
  - Cuando lo abre
  - Entonces se muestra el detalle del producto tal como aparece en el catálogo.

- CA 3: Producto no disponible al abrir el link
  - Dado que el producto fue dado de baja o deshabilitado después de que el link fue compartido
  - Cuando alguien intenta abrirlo
  - Entonces el sistema muestra un mensaje indicando que el producto no está disponible.

## Épica: Catálogo

### Home

<!-- Status: Obligatoria -->

**Descripción**: Como **usuario**, quiero **ver una pantalla de inicio con contenido relevante** para **encontrar productos de forma rápida y explorar la plataforma sin necesidad de buscar activamente**.

**Criterios de aceptación**

- CA 1: Productos recientes
  - Dado que existen productos activos con stock disponible
  - Cuando un usuario accede a la home
  - Entonces ve una selección de los productos publicados más recientemente, con nombre, precio e imagen principal.

- CA 2: Búsqueda desde la home
  - Dado que un usuario está en la home
  - Cuando ingresa un término en la barra de búsqueda
  - Entonces es dirigido al listado de productos con los resultados correspondientes.

- CA 3: Navegación por categoría
  - Dado que el sistema tiene categorías predefinidas
  - Cuando un usuario selecciona una categoría desde la home
  - Entonces es dirigido al catálogo filtrado por esa categoría.

- CA 4: Sección de recomendaciones
  - Dado que un usuario accede a la home
  - Cuando el sistema tiene recomendaciones personalizadas disponibles para ese usuario
  - Entonces la home muestra una sección de recomendaciones personalizadas además de los productos recientes.

- CA 5: Usuario no autenticado
  - Dado que un usuario no inició sesión
  - Cuando accede a la home
  - Entonces puede ver los productos recientes y navegar el catálogo, pero las acciones que requieren autenticación (agregar al carrito, comprar) le solicitan iniciar sesión.

### Productos populares en home

<!-- Status: Optativa -->

**Descripción**: Como **usuario**, quiero **ver productos populares en la home** para **descubrir qué es tendencia en la plataforma y encontrar productos relevantes según mis intereses**.

Los productos populares se determinan por volumen de ventas en los últimos 30 días. Si el usuario tiene historial de actividad, la sección se filtra por las categorías que más frecuenta; si no tiene historial, muestra los populares globales.

**Criterios de aceptación**

- CA 1: Sección de populares globales
  - Dado que existen productos con ventas registradas en los últimos 30 días
  - Cuando un usuario accede a la home
  - Entonces ve una sección con los productos más vendidos del período, con nombre, precio e imagen.

- CA 2: Populares filtrados por categorías del usuario
  - Dado que un usuario tiene historial de compras o navegación en categorías específicas
  - Cuando accede a la home
  - Entonces la sección de populares muestra los más vendidos dentro de sus categorías frecuentes.

- CA 3: Fallback a populares globales sin historial
  - Dado que un usuario no tiene historial de actividad
  - Cuando accede a la home
  - Entonces la sección muestra los productos más vendidos globales, sin personalización.

- CA 4: Productos sin ventas recientes excluidos
  - Dado que un producto no tuvo ventas en los últimos 30 días
  - Cuando el sistema calcula los populares
  - Entonces ese producto no aparece en la sección, independientemente de su historial anterior.

### Listado y búsqueda de productos

<!-- Status: Obligatoria -->

**Descripción**: Como **usuario**, quiero **explorar y buscar productos disponibles** para **encontrar lo que necesito comprar**.

**Criterios de aceptación**

- CA 1: Listado paginado de productos activos
  - Dado que hay productos activos con stock disponible en la plataforma
  - Cuando un usuario navega al catálogo
  - Entonces ve un listado paginado de esos productos mostrando nombre, precio, imagen principal y vendedor.

- CA 2: Búsqueda por nombre o descripción
  - Dado que un usuario está en el catálogo
  - Cuando ingresa un término de búsqueda
  - Entonces el sistema devuelve los productos cuyo nombre o descripción coincide, ordenados por relevancia.

- CA 3: Búsqueda sin resultados
  - Dado que un usuario realizó una búsqueda
  - Cuando no hay productos que coincidan con el término ingresado
  - Entonces el sistema muestra un estado vacío claro sin mostrar errores técnicos.

- CA 4: Productos sin stock o deshabilitados excluidos
  - Dado que existen productos sin stock o deshabilitados en la plataforma
  - Cuando un usuario navega el catálogo o realiza una búsqueda
  - Entonces esos productos no aparecen en los resultados.

### Detalle de producto

<!-- Status: Obligatoria -->

**Descripción**: Como **usuario**, quiero **ver el detalle completo de un producto** para **decidir si quiero comprarlo**.

**Criterios de aceptación**

- CA 1: Vista completa del producto
  - Dado que existe un producto activo en el catálogo
  - Cuando un usuario accede al detalle de ese producto
  - Entonces puede ver nombre, descripción, precio, stock disponible, imágenes y datos del vendedor.

- CA 2: Producto sin stock
  - Dado que un producto no tiene stock disponible
  - Cuando un usuario accede al detalle de ese producto
  - Entonces el sistema muestra la información del producto pero indica claramente que no hay stock disponible y deshabilita la acción de agregar al carrito.

- CA 3: Producto deshabilitado
  - Dado que un producto fue deshabilitado por el vendedor o el administrador
  - Cuando un usuario intenta acceder al detalle de ese producto
  - Entonces el sistema muestra un mensaje indicando que el producto no está disponible.

### Filtros avanzados de búsqueda

<!-- Status: Optativa -->

**Descripción**: Como **usuario**, quiero **filtrar los resultados del catálogo por distintos criterios** para **encontrar más rápido lo que busco**.

**Criterios de aceptación**

- CA 1: Filtrar por categoría
  - Dado que un usuario selecciona una o más categorías
  - Cuando aplica el filtro
  - Entonces el catálogo muestra únicamente los productos que pertenecen a las categorías seleccionadas.

- CA 2: Filtrar por rango de precio
  - Dado que un usuario ingresa un precio mínimo, máximo o ambos
  - Cuando aplica el filtro
  - Entonces el catálogo muestra solo los productos cuyo precio está dentro del rango indicado.

- CA 3: Combinar filtros
  - Dado que un usuario tiene disponibles múltiples filtros
  - Cuando aplica simultáneamente más de uno (por ejemplo, categoría y rango de precio)
  - Entonces el catálogo muestra solo los productos que cumplen todos los criterios al mismo tiempo.

- CA 4: Limpiar filtros
  - Dado que un usuario tiene filtros activos
  - Cuando los elimina
  - Entonces el catálogo vuelve a mostrar todos los productos disponibles sin restricciones.

### Ordenamiento de resultados

<!-- Status: Optativa -->

**Descripción**: Como **usuario**, quiero **ordenar los resultados del catálogo según distintos criterios** para **explorar los productos de la forma que más me convenga**.

**Criterios de aceptación**

- CA 1: Ordenar por precio ascendente y descendente
  - Dado que un usuario está viendo resultados en el catálogo
  - Cuando selecciona el criterio de orden por precio
  - Entonces los productos se reordenan mostrando primero los más baratos o los más caros según la dirección elegida.

- CA 2: Ordenar por más reciente
  - Dado que un usuario está viendo resultados en el catálogo
  - Cuando selecciona el criterio de publicación más reciente
  - Entonces los productos se muestran ordenados por fecha de publicación, del más nuevo al más antiguo.

- CA 3: Orden por defecto
  - Dado que un usuario navega el catálogo
  - Cuando no selecciona ningún criterio de orden
  - Entonces los productos se muestran ordenados por relevancia (coincidencia con búsqueda activa) o por fecha descendente si no hay búsqueda activa.

## Épica: Carrito

### Agregar producto al carrito

<!-- Status: Obligatoria -->

**Descripción**: Como **comprador**, quiero **agregar productos a mi carrito** para **acumular lo que quiero comprar antes de pagar**.

**Criterios de aceptación**

- CA 1: Producto agregado exitosamente
  - Dado que un producto tiene stock disponible
  - Cuando un usuario lo agrega al carrito
  - Entonces el producto aparece en el carrito con la cantidad seleccionada y el carrito refleja el nuevo total.

- CA 2: Producto ya en el carrito
  - Dado que un usuario tiene un producto en su carrito
  - Cuando agrega nuevamente ese mismo producto
  - Entonces la cantidad se incrementa respetando el stock disponible.

- CA 3: Stock insuficiente al agregar
  - Dado que un producto tiene stock limitado
  - Cuando un usuario intenta agregar más unidades de las que hay en stock
  - Entonces el sistema indica la cantidad máxima disponible y no excede ese límite.

- CA 4: Persistencia del carrito
  - Dado que un usuario agrega productos al carrito y cierra la sesión o la aplicación
  - Cuando vuelve a iniciar sesión
  - Entonces el carrito conserva los productos agregados previamente.

### Gestión del carrito

<!-- Status: Obligatoria -->

**Descripción**: Como **comprador**, quiero **ver y modificar mi carrito** para **ajustar mi selección antes de pagar**.

**Criterios de aceptación**

- CA 1: Vista del carrito
  - Dado que un usuario tiene productos agregados en su carrito
  - Cuando accede a su carrito
  - Entonces puede ver todos los productos agregados con nombre, cantidad, precio unitario y precio total por item, junto con el total general.

- CA 2: Modificar cantidad
  - Dado que un usuario tiene items en su carrito
  - Cuando modifica la cantidad de un item dentro del límite de stock disponible
  - Entonces el total del carrito se actualiza de inmediato.

- CA 3: Eliminar item
  - Dado que un usuario tiene items en su carrito
  - Cuando elimina uno de ellos
  - Entonces el producto se quita y el total se recalcula.

- CA 4: Item sin stock o deshabilitado en el carrito
  - Dado que un producto en el carrito queda sin stock o es deshabilitado antes del checkout
  - Cuando el usuario revisa su carrito
  - Entonces el carrito señaliza ese item como no disponible e impide proceder al checkout mientras el problema persista.

## Épica: Checkout y Órdenes

### Checkout e inicio de pago

<!-- Status: Obligatoria -->

**Descripción**: Como **comprador**, quiero **confirmar mi carrito y pagar** para **concretar la compra de los productos seleccionados**.

El procesamiento del pago se delega a un servicio de pagos externo. Los grupos pueden integrar un gateway real en modo de prueba o implementar un servicio simulado. En cualquier caso, el sistema debe manejar correctamente los escenarios de fallo: pago rechazado, timeout de respuesta y reintentos sin doble cobro.

El carrito puede contener productos de múltiples vendedores. El grupo decide si el checkout genera una única orden consolidada o una orden por vendedor, y debe documentar la decisión en un ADR.

**Criterios de aceptación**

- CA 1: Checkout exitoso
  - Dado un carrito con items disponibles y stock suficiente
  - Cuando el usuario confirma el checkout y el pago es aprobado por el servicio de pagos
  - Entonces la orden pasa del estado "pendiente de pago" a "confirmada", el stock de cada item se reduce en la cantidad comprada, y el carrito se vacía.

- CA 2: Pago rechazado
  - Dado que un usuario confirmó el checkout
  - Cuando el servicio de pagos rechaza el pago
  - Entonces la orden queda en estado "pago rechazado", el stock no se modifica, y el carrito conserva su contenido para que el usuario pueda reintentar.

- CA 3: Stock insuficiente al momento del checkout
  - Dado que el stock disponible es menor a la cantidad solicitada para algún item
  - Cuando un usuario intenta confirmar el checkout
  - Entonces la operación falla antes de intentar el pago, se informa qué items tienen problema, y el carrito permanece sin modificaciones.

- CA 4: Concurrencia en la compra del último item
  - Dado que dos usuarios tienen el último item disponible de un producto en sus carritos
  - Cuando ambos inician el checkout simultáneamente
  - Entonces solo uno de los dos completa la compra exitosamente; el otro recibe un error indicando falta de stock, sin que se genere un cobro para él.

- CA 5: Idempotencia del pago
  - Dado que ocurrió un error de red durante el checkout
  - Cuando el usuario reintenta la operación
  - Entonces el sistema garantiza que no se generen dos cobros por la misma orden.

- CA 6: Dirección de entrega requerida
  - Dado que un usuario inicia el flujo de checkout
  - Cuando no ingresa una dirección de entrega válida
  - Entonces el sistema no permite confirmar la orden e indica que la dirección es obligatoria.

- CA 7: Dirección de entrega registrada en la orden
  - Dado que un usuario completa el checkout con una dirección de entrega válida
  - Cuando la orden es confirmada
  - Entonces la dirección queda registrada en la orden y el vendedor puede verla en el detalle de la venta.

### Estado y seguimiento de orden

<!-- Status: Obligatoria -->

**Descripción**: Como **comprador**, quiero **conocer el estado actual de mis órdenes** para **saber en qué punto del proceso se encuentra mi compra**.

Los estados válidos de una orden son:

`pendiente de pago` → `confirmada` → `en preparación` → `enviada` → `entregada`

Los estados de excepción son:

- `pago rechazado` — el pago fue denegado por el gateway.
- `cancelada` — la orden fue cancelada antes del envío.
- `reembolso en proceso` — se inició el reembolso tras la cancelación de la orden.
- `reembolso procesado` — el reembolso fue completado.

Las transiciones siguen un flujo definido y no es posible retroceder a un estado anterior salvo por cancelación explícita. Los estados `cancelada`, `reembolso en proceso` y `reembolso procesado` deben estar contemplados en el modelo de datos aunque el grupo no implemente las funcionalidades optativas de cancelación y reembolso. En ese caso las transiciones hacia esos estados no estarán disponibles en la UI.

**Criterios de aceptación**

- CA 1: Vista del estado actual
  - Dado que un comprador tiene órdenes registradas
  - Cuando accede al detalle de una orden
  - Entonces puede ver el estado actual, el historial de transiciones con timestamps, y los items de la orden.

- CA 2: Persistencia del estado
  - Dado que un comprador consulta el estado de una orden
  - Cuando cierra la aplicación y la vuelve a abrir
  - Entonces el estado mostrado es consistente con el estado real de la orden en el sistema.

- CA 3: Actualización de estado por el vendedor
  - Dado que una orden está en estado "confirmada" o posterior
  - Cuando el vendedor actualiza su estado (por ejemplo, a "en preparación" o "enviada")
  - Entonces el comprador puede ver el nuevo estado al consultar la orden.

- CA 4: Transiciones inválidas
  - Dado que una orden se encuentra en un estado determinado
  - Cuando se intenta cambiar su estado a uno que no corresponde al flujo definido
  - Entonces el sistema rechaza la operación con un mensaje claro.

- CA 5: Código de seguimiento al marcar como enviada
  - Dado que una orden está en estado "en preparación"
  - Cuando el vendedor la marca como "enviada"
  - Entonces puede ingresar opcionalmente un código de seguimiento del envío junto con la transición de estado.

- CA 6: Visualización del código de seguimiento por el comprador
  - Dado que una orden está en estado "enviada" y tiene un código de seguimiento registrado
  - Cuando el comprador accede al detalle de la orden
  - Entonces puede ver el código de seguimiento informado por el vendedor.

- CA 7: Confirmación de entrega por el comprador
  - Dado que una orden está en estado "enviada"
  - Cuando el comprador confirma que recibió el pedido
  - Entonces la orden pasa al estado "entregada".

### Historial de compras

<!-- Status: Obligatoria -->

**Descripción**: Como **comprador**, quiero **ver todas mis órdenes pasadas** para **consultar el historial de mis compras y su estado**.

**Criterios de aceptación**

- CA 1: Listado de órdenes
  - Dado que un comprador tiene órdenes registradas
  - Cuando accede a su historial
  - Entonces ve un listado de todas sus órdenes ordenadas por fecha descendente, con estado, total y fecha.

- CA 2: Detalle de una orden
  - Dado que un comprador está en su historial de compras
  - Cuando selecciona una orden
  - Entonces puede ver los items comprados, cantidades, precios, estado actual e historial de transiciones.

- CA 3: Filtrar por estado
  - Dado que un comprador está en su historial de compras
  - Cuando aplica un filtro por estado
  - Entonces el listado muestra únicamente las órdenes en ese estado.

### Cancelar orden

<!-- Status: Optativa -->

**Descripción**: Como **comprador o vendedor**, quiero **cancelar una orden antes de que sea enviada** para **desistir de la transacción cuando ya no es posible o conveniente continuarla**.

**Criterios de aceptación**

- CA 1: Cancelación exitosa por el comprador
  - Dado que una orden está en estado "confirmada" o "en preparación"
  - Cuando el comprador solicita la cancelación
  - Entonces la orden pasa al estado "cancelada" y el vendedor puede ver el cambio al consultar sus ventas.

- CA 2: Cancelación por el vendedor
  - Dado que una orden está en estado "confirmada"
  - Cuando el vendedor la cancela
  - Entonces la orden pasa al estado "cancelada" y el comprador puede ver el cambio al consultar sus órdenes.

- CA 3: Cancelación no permitida tras el envío
  - Dado que una orden está en estado "enviada" o "entregada"
  - Cuando el comprador o el vendedor intenta cancelarla
  - Entonces el sistema no permite la cancelación e indica el motivo.

- CA 4: Stock restaurado al cancelar
  - Dado que una orden tenía items con stock descontado
  - Cuando la orden se cancela
  - Entonces el stock de cada item de la orden se restaura automáticamente.

### Reembolso simulado al cancelar

<!-- Status: Optativa -->

**Descripción**: Como **comprador**, quiero **recibir el reembolso del monto pagado cuando cancelo una orden** para **recuperar mi dinero ante una compra que no se concretó**.

**Criterios de aceptación**

- CA 1: Reembolso iniciado al cancelar
  - Dado que una orden fue pagada y confirmada
  - Cuando pasa al estado "cancelada"
  - Entonces el sistema inicia automáticamente el proceso de reembolso y la orden refleja el estado "reembolso en proceso".

- CA 2: Reembolso completado
  - Dado que se inició un proceso de reembolso simulado
  - Cuando el proceso finaliza
  - Entonces el estado de la orden se actualiza a "reembolso procesado" y el comprador puede verlo en el detalle de la orden.

- CA 3: Sin reembolso por pago no completado
  - Dado que una orden nunca tuvo el pago aprobado
  - Cuando es cancelada
  - Entonces no se inicia ningún proceso de reembolso.

### Aplicar cupón en checkout

<!-- Status: Optativa -->

**Descripción**: Como **comprador**, quiero **aplicar un cupón de descuento durante el checkout** para **reducir el monto total de mi compra**.

**Criterios de aceptación**

- CA 1: Cupón válido aplicado
  - Dado que un comprador está en el flujo de checkout
  - Cuando ingresa un código de cupón válido y vigente
  - Entonces el sistema aplica el descuento correspondiente y refleja el nuevo total antes de confirmar el pago.

- CA 2: Cupón inválido o vencido
  - Dado que un comprador está en el flujo de checkout
  - Cuando ingresa un código que no existe, está vencido o ya alcanzó su límite de usos
  - Entonces el sistema rechaza el cupón e informa el motivo sin interrumpir el flujo de checkout.

- CA 3: Un cupón por orden
  - Dado que un comprador ya aplicó un cupón a su orden
  - Cuando intenta aplicar un segundo cupón
  - Entonces el sistema solo acepta el primero y no permite acumular descuentos.

- CA 4: Descuento no superior al total
  - Dado que un comprador aplica un cupón a su orden
  - Cuando el descuento calculado supera el total de la orden
  - Entonces el sistema aplica un máximo del 100% y el monto final no puede ser negativo.

## Épica: Vendedor

> Cualquier usuario registrado puede publicar productos sin un proceso de activación previo. La misma cuenta permite actuar como comprador y como vendedor de forma simultánea; el rol de vendedor se asume al realizar la primera publicación.

### Publicar producto

<!-- Status: Obligatoria -->

**Descripción**: Como **usuario registrado**, quiero **publicar un producto en el catálogo** para **que otros usuarios puedan encontrarlo y comprarlo**.

Las categorías disponibles son predefinidas por el sistema; no es responsabilidad del vendedor crearlas. El grupo decide cómo administrar el catálogo de categorías (hardcodeadas, configuradas en base de datos, gestionadas por el administrador, etc.) y debe documentar la decisión.

**Criterios de aceptación**

- CA 1: Publicación exitosa
  - Dado que un vendedor completó los campos obligatorios (nombre, descripción, precio, stock inicial, categoría) y al menos una imagen
  - Cuando envía el formulario de publicación
  - Entonces el producto se publica y aparece en el catálogo de forma inmediata, usando la primera imagen cargada como imagen principal.

- CA 2: Campos obligatorios faltantes
  - Dado que un vendedor no completó todos los campos obligatorios del formulario de publicación
  - Cuando intenta publicar el producto
  - Entonces el sistema indica qué campos faltan y no crea el producto.

- CA 3: Precio inválido
  - Dado que un vendedor ingresó un precio menor o igual a cero
  - Cuando intenta publicar el producto
  - Entonces el sistema indica el error y no crea el producto.

- CA 4: Stock inicial inválido
  - Dado que un vendedor ingresó un stock inicial negativo
  - Cuando intenta publicar el producto
  - Entonces el sistema indica el error y no crea el producto.

### Gestión de stock y publicaciones

<!-- Status: Obligatoria -->

**Descripción**: Como **vendedor**, quiero **gestionar mis productos publicados** para **mantener actualizado su stock, precio e información, y controlar su visibilidad en el catálogo**.

**Criterios de aceptación**

- CA 1: Editar datos del producto
  - Dado que un vendedor tiene un producto publicado propio
  - Cuando edita precio, descripción o imágenes con datos válidos y guarda los cambios
  - Entonces los cambios se reflejan de inmediato en el catálogo y el detalle del producto.

- CA 2: Actualizar stock manualmente
  - Dado que un vendedor tiene un producto publicado propio
  - Cuando actualiza el stock con un valor válido
  - Entonces el nuevo valor se refleja de inmediato; no se puede ingresar un valor negativo.

- CA 3: Deshabilitar y habilitar publicación
  - Dado que un vendedor tiene un producto publicado propio
  - Cuando deshabilita esa publicación
  - Entonces el producto desaparece del catálogo y no puede ser comprado; al habilitarlo vuelve a aparecer si tiene stock.

- CA 4: Stock agotado automáticamente
  - Dado que un producto tiene stock disponible
  - Cuando una venta reduce el stock a cero
  - Entonces el producto se marca automáticamente como sin stock y deja de aparecer en el catálogo.

- CA 5: Solo el propietario puede gestionar su producto
  - Dado que un usuario no es el propietario de un producto
  - Cuando intenta modificarlo
  - Entonces el sistema rechaza la operación.

- CA 6: Gestión de imágenes del producto
  - Dado que un vendedor tiene un producto publicado propio
  - Cuando agrega, elimina o reordena las imágenes de ese producto
  - Entonces los cambios se reflejan de inmediato en el detalle del producto; la primera imagen en el orden definido se utiliza como imagen principal en el catálogo; no es posible dejar un producto sin imágenes.

### Historial de ventas

<!-- Status: Obligatoria -->

**Descripción**: Como **vendedor**, quiero **ver las órdenes en las que mis productos fueron comprados** para **hacer seguimiento de mis ventas y gestionar el estado de cada envío**.

**Criterios de aceptación**

- CA 1: Listado de ventas
  - Dado que un vendedor tiene ventas registradas
  - Cuando accede a su historial de ventas
  - Entonces ve un listado de órdenes que incluyen al menos un producto suyo, ordenado por fecha descendente.

- CA 2: Detalle de una venta
  - Dado que un vendedor está en su historial de ventas
  - Cuando selecciona una venta
  - Entonces puede ver los items de sus productos en esa orden, nombre del comprador, dirección de entrega, total parcial y estado actual.

- CA 3: Actualizar estado de la orden
  - Dado que el vendedor tiene una orden en estado "confirmada" o posterior
  - Cuando avanza el estado según el flujo definido
  - Entonces la orden refleja el nuevo estado (por ejemplo, "en preparación" o "enviada").

- CA 4: Filtrar por estado
  - Dado que un vendedor está en su historial de ventas
  - Cuando aplica un filtro por estado
  - Entonces el listado muestra únicamente las ventas en ese estado.

### Crear y gestionar cupones de descuento

<!-- Status: Optativa -->

**Descripción**: Como **vendedor**, quiero **crear y administrar cupones de descuento para mis productos** para **incentivar la compra y recompensar a mis clientes**.

Los códigos de cupón son únicos a nivel global en la plataforma, independientemente del vendedor que los cree.

**Criterios de aceptación**

- CA 1: Crear cupón exitosamente
  - Dado que un vendedor completó los datos del cupón con un código único, un porcentaje de descuento (1–100%) y una fecha de vencimiento
  - Cuando confirma la creación
  - Entonces el cupón se crea y queda disponible para ser usado en el checkout.

- CA 2: Código duplicado
  - Dado que ya existe un cupón con un determinado código en el sistema
  - Cuando un vendedor intenta crear un nuevo cupón con ese mismo código
  - Entonces el sistema rechaza la operación e indica que el código ya está en uso.

- CA 3: Desactivar cupón
  - Dado que un vendedor tiene un cupón vigente
  - Cuando lo desactiva
  - Entonces el cupón deja de ser aceptado en el checkout aunque no haya vencido.

- CA 4: Listar cupones propios
  - Dado que un vendedor tiene cupones creados
  - Cuando accede a la gestión de cupones
  - Entonces puede ver todos sus cupones con código, porcentaje, fecha de vencimiento y estado (activo/inactivo/vencido).

## Épica: Reviews

### Calificar producto y vendedor

<!-- Status: Optativa -->

**Descripción**: Como **comprador**, quiero **calificar al vendedor y el producto después de recibir mi pedido** para **ayudar a otros compradores a tomar decisiones informadas**.

**Criterios de aceptación**

- CA 1: Calificación habilitada tras entrega
  - Dado que una orden del comprador está en estado "entregada"
  - Cuando el comprador quiere calificar al vendedor de esa orden
  - Entonces puede dejar una calificación con puntaje (1 a 5) y comentario opcional.

- CA 2: Una calificación por orden
  - Dado que un comprador ya calificó a un vendedor por una orden específica
  - Cuando intenta calificar nuevamente esa misma orden
  - Entonces el sistema no lo permite.

- CA 3: Calificación no disponible para órdenes no entregadas
  - Dado que una orden no está en estado "entregada"
  - Cuando el comprador intenta dejar una calificación para esa orden
  - Entonces el sistema no le permite hacerlo.

- CA 4: Puntaje fuera de rango
  - Dado que un comprador está completando una calificación
  - Cuando intenta enviarla con un puntaje fuera del rango permitido
  - Entonces el sistema rechaza la operación e indica el rango válido.

- CA 5: Calificación del producto
  - Dado que una orden del comprador está en estado "entregada"
  - Cuando el comprador quiere calificar los productos recibidos
  - Entonces puede dejar una calificación con puntaje (1 a 5) y comentario opcional para cada producto de esa orden.

### Reputación del vendedor en perfil público

<!-- Status: Optativa -->

**Descripción**: Como **comprador**, quiero **ver la reputación de un vendedor en su perfil público** para **evaluar su confiabilidad antes de realizar una compra**.

**Criterios de aceptación**

- CA 1: Puntaje agregado visible en el perfil
  - Dado que un vendedor tiene al menos una calificación registrada
  - Cuando otro usuario accede a su perfil público
  - Entonces puede ver un puntaje promedio y la cantidad de calificaciones recibidas.

- CA 2: Detalle de calificaciones
  - Dado que un vendedor tiene calificaciones registradas
  - Cuando un comprador accede a la sección de reputación de ese vendedor
  - Entonces puede ver el listado de calificaciones individuales con puntaje, comentario y fecha.

- CA 3: Perfil sin calificaciones
  - Dado que un vendedor aún no tiene calificaciones
  - Cuando otro usuario accede a su perfil público
  - Entonces el perfil indica explícitamente que no tiene historial de reputación, sin mostrar un puntaje vacío o engañoso.

- CA 4: La reputación solo refleja compras completadas
  - Dado que existen calificaciones de un vendedor en el sistema
  - Cuando se calcula su reputación
  - Entonces solo se consideran calificaciones asociadas a órdenes en estado "entregada".

## Épica: Administración

### Listar usuarios del sistema

<!-- Status: Obligatoria -->

**Descripción**: Como **administrador**, quiero **ver un listado de todos los usuarios registrados** para **tener visibilidad sobre quiénes usan la plataforma**.

**Criterios de aceptación**

- CA 1: Listado paginado
  - Dado que existen usuarios registrados en el sistema
  - Cuando un administrador accede al panel de usuarios
  - Entonces ve un listado paginado con nombre, email, fecha de registro y estado (activo/bloqueado) de cada usuario.

- CA 2: Búsqueda por email o nombre
  - Dado que un administrador está en el panel de usuarios
  - Cuando ingresa un término de búsqueda
  - Entonces el sistema filtra el listado mostrando solo los usuarios que coinciden.

### Bloquear y desbloquear usuario

<!-- Status: Obligatoria -->

**Descripción**: Como **administrador**, quiero **bloquear y desbloquear usuarios** para **controlar el acceso a la plataforma ante situaciones de abuso o incumplimiento**.

**Criterios de aceptación**

- CA 1: Bloquear usuario
  - Dado que un usuario está activo en la plataforma
  - Cuando un administrador lo bloquea
  - Entonces ese usuario no puede iniciar sesión y sus productos se ocultan del catálogo.

- CA 2: Usuario bloqueado intenta iniciar sesión
  - Dado que un usuario está bloqueado
  - Cuando intenta ingresar a la plataforma
  - Entonces el sistema muestra un mensaje claro indicando que la cuenta está suspendida.

- CA 3: Desbloquear usuario
  - Dado que un usuario está bloqueado
  - Cuando un administrador lo desbloquea
  - Entonces el usuario recupera el acceso y sus productos con stock vuelven a aparecer en el catálogo.

- CA 4: Un administrador no puede bloquearse a sí mismo
  - Dado que un administrador tiene su propia cuenta activa
  - Cuando intenta bloquearla
  - Entonces el sistema rechaza la operación.

### Listar y moderar productos

<!-- Status: Obligatoria -->

**Descripción**: Como **administrador**, quiero **ver y moderar todos los productos de la plataforma** para **garantizar la calidad y el cumplimiento de las políticas del marketplace**.

**Criterios de aceptación**

- CA 1: Listado de productos
  - Dado que existen productos en la plataforma
  - Cuando un administrador accede al panel de productos
  - Entonces ve un listado paginado de todos los productos (activos, sin stock y deshabilitados) con nombre, vendedor, precio y estado.

- CA 2: Deshabilitar producto
  - Dado que un producto está en la plataforma
  - Cuando un administrador lo deshabilita
  - Entonces desaparece del catálogo para los compradores, independientemente del estado que el vendedor tenga sobre ese producto; el vendedor no puede reactivarlo hasta que el administrador lo rehabilite.

- CA 3: Rehabilitar producto
  - Dado que un producto fue deshabilitado por administración
  - Cuando un administrador lo rehabilita
  - Entonces se elimina la restricción administrativa: el producto vuelve a comportarse según el estado que el vendedor tenía antes de la intervención (habilitado con stock, deshabilitado por el vendedor, sin stock, etc.). Si el vendedor también lo tenía deshabilitado, el producto no reaparece en el catálogo.

- CA 4: Ver detalle del producto
  - Dado que un administrador está en el panel de productos
  - Cuando selecciona un producto del listado
  - Entonces puede ver todos sus datos incluyendo el vendedor y el historial de cambios de estado.

### Listar órdenes del sistema

<!-- Status: Obligatoria -->

**Descripción**: Como **administrador**, quiero **buscar y consultar órdenes de la plataforma** para **brindar soporte ante reclamos y tener visibilidad operativa del flujo de compras**.

**Criterios de aceptación**

- CA 1: Búsqueda de orden por ID
  - Dado que un administrador necesita consultar una orden puntual
  - Cuando ingresa el ID de la orden en el panel de administración
  - Entonces puede ver el detalle completo: comprador, vendedor, items, estado actual e historial de transiciones.

- CA 2: Listado de órdenes paginado
  - Dado que el sistema tiene órdenes registradas
  - Cuando un administrador accede al panel de órdenes
  - Entonces ve un listado paginado con ID de orden, comprador, fecha, estado y monto total.

- CA 3: Filtro por estado
  - Dado que un administrador está en el panel de órdenes
  - Cuando aplica un filtro por estado
  - Entonces el listado muestra únicamente las órdenes en ese estado.

- CA 4: Solo lectura
  - Dado que un administrador está viendo el detalle de una orden
  - Cuando intenta modificar su estado
  - Entonces el sistema no le permite hacerlo; la gestión de estados es exclusiva del vendedor y el comprador.

## Épica: Métricas

### Métricas del sistema

<!-- Status: Obligatoria -->

**Descripción**: Como **administrador**, quiero **visualizar métricas de actividad de la plataforma** para **evaluar el estado del negocio y detectar anomalías**.

**Criterios de aceptación**

- CA 1: Usuarios registrados
  - Dado que el sistema tiene usuarios registrados
  - Cuando un administrador accede al panel de métricas
  - Entonces puede ver la cantidad de usuarios registrados totales y por período seleccionado.

- CA 2: Órdenes por estado y período
  - Dado que el sistema tiene órdenes registradas
  - Cuando un administrador consulta métricas de órdenes
  - Entonces puede ver la cantidad total de órdenes, su distribución por estado y la evolución en el tiempo para el período seleccionado.

- CA 3: Monto transaccionado
  - Dado que el sistema tiene órdenes confirmadas registradas
  - Cuando un administrador consulta métricas financieras
  - Entonces puede ver el monto total transaccionado por período.

- CA 4: Productos más vendidos
  - Dado que el sistema tiene ventas registradas
  - Cuando un administrador consulta el ranking de productos
  - Entonces puede ver los productos con mayor cantidad de unidades vendidas en el período seleccionado.

- CA 5: Períodos disponibles
  - Dado que un administrador accede al panel de métricas
  - Cuando selecciona un período
  - Entonces el sistema ofrece al menos los períodos predefinidos de 7, 30 y 90 días. Un rango personalizado queda a criterio del grupo.

### Métricas por categoría

<!-- Status: Optativa -->

**Descripción**: Como **administrador**, quiero **ver las métricas de actividad desglosadas por categoría** para **identificar qué segmentos del catálogo son más dinámicos**.

**Criterios de aceptación**

- CA 1: Ventas por categoría
  - Dado que existen ventas registradas por categoría en el sistema
  - Cuando un administrador accede a las métricas por categoría
  - Entonces puede ver la cantidad de órdenes y el monto transaccionado agrupados por categoría para el período seleccionado.

- CA 2: Filtro de período aplicable
  - Dado que un administrador está en las métricas por categoría
  - Cuando selecciona un rango de fechas
  - Entonces las métricas por categoría se recalculan para ese período.

### Exportar datos de métricas

<!-- Status: Optativa -->

**Descripción**: Como **administrador**, quiero **exportar las métricas del sistema** para **analizarlas fuera de la plataforma con otras herramientas**.

**Criterios de aceptación**

- CA 1: Exportar a CSV
  - Dado que un administrador tiene un período seleccionado en el panel de métricas
  - Cuando solicita exportar las métricas
  - Entonces el sistema genera un archivo CSV con todos los datos del panel de métricas para ese período.

- CA 2: Descarga inmediata
  - Dado que un administrador solicitó una exportación
  - Cuando el sistema la procesa
  - Entonces el archivo se descarga directamente sin requerir un proceso asíncrono de larga duración.

- CA 3: Período requerido para exportar
  - Dado que un administrador no seleccionó ningún período
  - Cuando intenta exportar las métricas
  - Entonces el sistema indica que debe elegir un rango de fechas antes de proceder.

## Épica: Wishlist

### Agregar / quitar de wishlist

<!-- Status: Optativa -->

**Descripción**: Como **comprador**, quiero **guardar productos en una lista de deseos** para **encontrarlos fácilmente más adelante sin necesidad de comprarlos ahora**.

**Criterios de aceptación**

- CA 1: Agregar producto a la wishlist
  - Dado que un usuario autenticado visualiza un producto
  - Cuando lo agrega a su wishlist
  - Entonces el producto aparece en su lista de deseos y el sistema indica visualmente que ya está guardado.

- CA 2: Quitar producto de la wishlist
  - Dado que un usuario tiene un producto en su wishlist
  - Cuando lo quita
  - Entonces el producto se elimina de su lista y el indicador visual desaparece.

- CA 3: Indicador de estado en el catálogo
  - Dado que un usuario está autenticado y tiene una wishlist
  - Cuando navega el catálogo
  - Entonces cada producto muestra si ya está en su wishlist o no.

- CA 4: Requiere autenticación
  - Dado que un usuario no está autenticado
  - Cuando intenta agregar un producto a la wishlist
  - Entonces el sistema lo redirige al login y retoma la acción al completar la autenticación.

### Visualización de wishlist

<!-- Status: Optativa -->

**Descripción**: Como **comprador**, quiero **ver todos los productos que guardé en mi lista de deseos** para **revisarlos y decidir si compro alguno**.

**Criterios de aceptación**

- CA 1: Listado de la wishlist
  - Dado que un usuario tiene productos guardados en su wishlist
  - Cuando accede a su wishlist
  - Entonces puede ver todos los productos guardados con nombre, precio e imagen principal.

- CA 2: Producto sin stock en la wishlist
  - Dado que un producto guardado en la wishlist de un usuario queda sin stock
  - Cuando el usuario consulta su wishlist
  - Entonces ese producto se mantiene en la lista pero se indica claramente que no tiene stock disponible.

- CA 3: Producto deshabilitado en la wishlist
  - Dado que un producto guardado en la wishlist de un usuario es deshabilitado por el vendedor o el administrador
  - Cuando el usuario consulta su wishlist
  - Entonces ese producto se indica como no disponible en la lista; no se elimina automáticamente.

- CA 4: Wishlist vacía
  - Dado que un usuario no tiene productos en su wishlist
  - Cuando accede a ella
  - Entonces el sistema muestra un estado vacío con un mensaje claro que lo invita a explorar el catálogo.

## Épica: Notificaciones

### Notificación de cambio de estado de orden

<!-- Status: Optativa -->

**Descripción**: Como **comprador**, quiero **recibir una notificación cuando el estado de mi orden cambia** para **estar informado del progreso de mi compra sin necesidad de revisar la aplicación activamente**.

**Criterios de aceptación**

- CA 1: Notificación push enviada al cambiar el estado
  - Dado que una orden del comprador tiene un estado registrado
  - Cuando ese estado cambia (por ejemplo, de "confirmada" a "en preparación")
  - Entonces el comprador recibe una notificación push con el nuevo estado y el identificador de la orden.

- CA 2: Notificación visible desde fuera de la app
  - Dado que el comprador tiene notificaciones pendientes
  - Cuando la aplicación no está activa en primer plano
  - Entonces la notificación aparece en el sistema operativo del dispositivo.

- CA 3: Acceso directo desde la notificación
  - Dado que el comprador recibió una notificación de cambio de estado de una orden
  - Cuando toca la notificación
  - Entonces la aplicación lo lleva directamente al detalle de la orden correspondiente.

### Notificación de stock bajo al vendedor

<!-- Status: Optativa -->

**Descripción**: Como **vendedor**, quiero **recibir una notificación cuando el stock de un producto mío es bajo** para **poder reabastecerlo antes de quedarme sin unidades**.

**Criterios de aceptación**

- CA 1: Alerta de stock bajo
  - Dado que un producto del vendedor tenía stock por encima del umbral mínimo
  - Cuando el stock cae por debajo de ese umbral (5 unidades o el configurado)
  - Entonces el vendedor recibe una notificación indicando el producto y el stock actual.

- CA 2: Sin duplicaciones
  - Dado que el stock de un producto ya estaba bajo antes de una nueva venta
  - Cuando se produce una nueva venta de ese producto
  - Entonces el sistema no envía la notificación nuevamente hasta que el stock sea repuesto y vuelva a bajar.

- CA 3: Alerta de stock agotado
  - Dado que un producto del vendedor aún tenía unidades disponibles
  - Cuando el stock llega a cero
  - Entonces el vendedor recibe una notificación específica indicando que el producto quedó sin stock.

## Épica: Recomendaciones

### Recomendaciones basadas en historial

<!-- Status: Optativa -->

**Descripción**: Como **usuario**, quiero **ver productos recomendados según mi actividad en la plataforma** para **descubrir productos relevantes sin necesidad de buscarlos activamente**.

El registro del historial de navegación (qué productos visita el usuario y en qué categorías navega) forma parte de esta historia: el grupo debe diseñar e implementar el mecanismo de captura; no se asume que exista previamente.

**Criterios de aceptación**

- CA 1: Recomendaciones personalizadas
  - Dado que un usuario tiene historial de compras o navegación
  - Cuando accede a la sección de recomendaciones
  - Entonces la plataforma le muestra productos recomendados basados en sus categorías y productos visitados o comprados.

- CA 2: Usuario sin historial
  - Dado que un usuario no tiene historial de actividad
  - Cuando accede a la sección de recomendaciones
  - Entonces la sección muestra productos populares o con más ventas recientes como alternativa.

- CA 3: Recomendaciones actualizadas
  - Dado que un usuario realizó una nueva compra
  - Cuando inicia una nueva sesión
  - Entonces las recomendaciones se actualizan para reflejar la nueva información.

- CA 4: Productos disponibles únicamente
  - Dado que el sistema va a calcular recomendaciones para un usuario
  - Cuando las genera
  - Entonces solo incluye productos con stock disponible y activos en el catálogo.

---

## Requisitos No Funcionales

**Red Lines**

Los siguientes incumplimientos **bloquean la evaluación** del proyecto y requieren corrección inmediata:

- **Base de datos compartida entre servicios**: Cada servicio debe tener su propio esquema de persistencia. El acceso directo a la base de datos de otro servicio no está permitido.
- **Pipeline de CI roto**: La rama principal debe estar en estado ejecutable en todo momento. Un CI en rojo que no se atiende en la sesión siguiente es un bloqueante.
- **Secretos en el código fuente o historial de Git**: Cualquier credencial, token o secret que aparezca en el repositorio (incluso en commits anteriores) requiere rotación inmediata y limpieza del historial.

### Componentes

La plataforma debe construirse como un conjunto de servicios con responsabilidades bien delimitadas y bases de datos independientes. La identificación de los dominios, la descomposición en servicios y los contratos entre ellos quedan a criterio del grupo y deben justificarse mediante decisiones de arquitectura documentadas. Se espera que el diseño garantice consistencia ante fallos parciales en los flujos que involucran múltiples servicios.

Cada grupo debe desarrollar:

- Un conjunto de **servicios backend**.
- Una **aplicación mobile** (React Native).
- Un **backoffice web** para administración.
- Un **API Gateway** como punto único de entrada al sistema, que centralice el enrutamiento hacia los servicios backend, la validación de tokens de sesión y el rate limiting. Su diseño e implementación deben justificarse en un ADR. En caso excepcional de no adoptarlo, el grupo debe documentar el mecanismo alternativo con la misma rigurosidad y justificar la decisión.

**Tecnologías**

- Servicios backend: **lenguaje a elección del grupo**; se sugiere Python, Node.js o Go por ser los lenguajes donde la cátedra tiene más expertise para acompañar. Frameworks y bases de datos libres (se recomienda PostgreSQL y/o MongoDB). Se requiere que al menos dos microservicios estén implementados en lenguajes distintos entre sí — por ejemplo, el servicio de usuarios en Python/FastAPI y el servicio de pagos en Node.js/Express. Se requiere además utilizar al menos dos tecnologías de base de datos distintas: una relacional (SQL) y una no relacional (NoSQL). La elección queda a criterio del grupo y debe justificarse en la documentación.
- Aplicación mobile: React Native (recomendado).
- Backoffice web: React (recomendado).

La elección tecnológica debe quedar justificada en la documentación técnica del proyecto.

### UX

La experiencia de usuario es parte del producto. Antes de escribir código de interfaz, el equipo debe pensar cómo se ve, cómo se navega y por qué. Se espera:

- **Prototipado**: wireframes o mockups de los flujos principales (se recomienda Figma o equivalente), incluyendo la app mobile y el backoffice. Pueden apoyarse en herramientas como Stitch de Google o similares, y en sistemas de diseño ya probados.
- **Sistema de diseño**: elegir un sistema de diseño (ej. Material Design, Apple HIG u otro) y mantenerlo consistente en toda la interfaz.
- **Decisiones de UX**: cómo se comporta el usuario en la aplicación, cómo se ve y cómo se navega son decisiones creativas del equipo. Lo importante es que puedan explicar por qué tomaron esas decisiones.
- **Feedback temprano**: los prototipos deben presentarse en el Checkpoint 1. A partir de ahí, el diseño se itera en las weeklies con acompañamiento del ayudante.
- **Accesibilidad básica**: las interfaces deben contemplar contraste de color legible y tamaños de texto adecuados para uso en dispositivos móviles.

### Integridad y Flujo de Datos

Los flujos que involucran múltiples servicios deben garantizar consistencia ante fallos parciales. En particular:

- **Consistencia distribuida**: Si un flujo toca varios servicios y uno falla, los pasos anteriores no pueden quedar en un estado inconsistente. El grupo decide la estrategia y la documenta en un ADR. Por ejemplo, si el pago se confirma pero falla la creación de la orden, el sistema debe revertir o compensar el cobro.
- **Idempotencia**: Las operaciones donde duplicar tiene consecuencias graves (cobrar dos veces, descontar stock, crear dos órdenes) deben ser idempotentes: si el mismo request llega dos veces, el resultado es el mismo sin repetir side effects. No todo necesita idempotencia explícita — un update de perfil ya es idempotente, un registro duplicado se resuelve con unique constraint. La clave explícita es para flujos donde el reintento es esperable y duplicar duele.
- **Manejo de errores distribuidos**: Los servicios deben diferenciar entre fallos transitorios (reintentar) y permanentes (compensar o notificar). No se acepta silenciar errores ni propagar estados inconsistentes. La definición concreta de qué constituye un fallo transitorio o permanente en cada flujo queda a criterio del grupo y debe acordarse con el corrector asignado.
- **Eventos y asincronía**: Si se adopta comunicación asíncrona (colas de mensajes), los consumidores deben ser idempotentes y el sistema debe manejar mensajes duplicados o fuera de orden.
- **Resiliencia en la comunicación entre servicios**: Las llamadas entre servicios deben contemplar estrategias ante fallos transitorios. Se recomienda aplicar patrones como Retry (con backoff exponencial) y Circuit Breaker para evitar cascadas de fallo. La elección y justificación de estos patrones debe quedar documentada en los ADRs correspondientes.
- **Resiliencia en la capa de presentación**: La aplicación mobile y el backoffice deben manejar explícitamente los estados de error y latencia: indicadores de carga, mensajes de error accionables ante fallos de red, y comportamiento coherente ante respuestas parciales o timeout del backend. No se acepta que un fallo de red deje la interfaz en un estado inconsistente o sin feedback al usuario.

### Testing

El desarrollo debe incluir:

- **Pruebas unitarias** por servicio.
- **Pruebas de integración** entre servicios core.
- **Contratos de API** entre servicios definidos con OpenAPI/Swagger como fuente de verdad para la comunicación. Se valora positivamente la verificación automatizada de estos contratos (ej: Pact, Schemathesis, Dredd).
- **Pruebas de carga y estrés**: ejecutar al menos un escenario de carga simulando usuarios concurrentes sobre los endpoints críticos. Documentar los resultados, cuellos de botella identificados y acciones tomadas (se recomienda k6 o Artillery).
- Cobertura de tests superior al **70%** en los servicios backend.

### Gestión de Ingeniería

- **Trazabilidad backlog-repositorio**: Cada pull request debe referenciar la historia o tarea que lo origina. Se esperan mensajes de commit descriptivos; no se exige un formato estricto ni referencia a tickets en cada commit individual, pero no se aceptan commits genéricos sin contexto ("fix", "changes", "wip").
- **Atomicidad en Git**: Cada pull request debe representar un cambio lógico coherente. No deben mezclarse features no relacionadas en un mismo PR.
- **Uso de herramientas de IA**: Se espera que los equipos utilicen herramientas de asistencia con IA como parte natural del desarrollo. Lo que se evalúa no es si se usó IA, sino la calidad de la dirección: evidencia de flujos estructurados de trabajo con IA (ej.`AGENTS.md`, `.agents/skills` o equivalentes), y **capacidad de cada integrante de explicar y defender cualquier parte del código en la defensa del proyecto**. Las decisiones de arquitectura deben ser del equipo, no defaults aceptados sin criterio; los ADRs deben reflejar alternativas evaluadas. El equipo es responsable final del código independientemente de la herramienta que lo produjo.
- **Backlog actualizado**: El backlog debe reflejar el estado real del proyecto en cada sesión de seguimiento. Deben existir tareas explícitas para trabajo de infraestructura, testing e integración, no solo para funcionalidades de negocio.

### Despliegue en la Nube

Los servicios deben desplegarse en la nube utilizando una **plataforma como servicio (PaaS)**, o un **orquestador de contenedores gestionado** o directamente un **cloud provider** para grupos que prefieran mayor control de infraestructura. La elección queda a criterio del grupo y debe estar documentada y justificada en un ADR.

Se debe elegir una alternativa que cuente con un plan gratuito o de bajo costo vigente. Para un análisis detallado de las opciones disponibles (proveedores, free tiers, stacks recomendados y consejos de presupuesto), consultar la **[Guía de cátedra: Cloud Computing](https://ingenieria-del-software-2.github.io/blog/2025-09-11-cloud-computing/)**.

Se debe garantizar que el entorno de producción sea reproducible y que el despliegue ocurra de forma automatizada desde el pipeline de CI/CD.

**Despliegue usando k8s**

Como alternativa avanzada, el grupo puede optar por desplegar la plataforma en Kubernetes. Esta decisión debe estar justificada y documentada.

**Empaquetamiento**

- Servicios backend: `Dockerfile` + archivo de dependencias correspondiente al lenguaje elegido.
- Aplicación mobile: APK o equivalente.
- Entorno local: se debe poder levantar el entorno completo de forma reproducible (se recomienda `docker-compose`).

**CI-CD**

- CI: correr automáticamente ante cada push y **bloquear el merge** ante fallas en los tests. Se recomienda incorporar análisis estático de seguridad (SAST).
- CD: despliegue automático al entorno productivo desde el branch principal o mediante tags, documentado.

**Gestión de imágenes y media**

Los archivos multimedia deben almacenarse en un servicio externo de objetos (ej. AWS S3, Google Cloud Storage, Cloudinary o equivalente). No guardar binarios en la base de datos ni en el filesystem del servidor; solo se persiste la URL.

- Imágenes de perfil: JPEG, PNG o WebP, hasta 5 MB.
- Imágenes de producto: JPEG, PNG o WebP, hasta 10 MB por archivo.
- Videos de producto _(opcional)_: MP4 o WebM, hasta 50 MB.

Otros formatos deben rechazarse con un error descriptivo. Las URLs deben ser públicamente accesibles. Se recomienda limpiar archivos huérfanos al reemplazar o eliminar media.

### Observabilidad

**Monitoreo**

Cada servicio debe exponer dos endpoints con semántica diferenciada:

- **`/livez`**: valida que el proceso está vivo. Solo verificaciones locales (ej: el servidor HTTP responde). No debe consultar base de datos ni servicios externos.
- **`/readyz`**: valida que el servicio puede operar correctamente. Debe verificar dependencias críticas (ej: base de datos). Un servicio que responde HTTP pero no puede cumplir su funcionalidad principal no es ready.

**`/livez` y `/readyz` no son equivalentes**: no deben compartir lógica. Un endpoint que responde `200 OK` sin validar lo que corresponde a su semántica no cumple. No usar un único `/health` genérico.

**Cada servicio debe contar además con un sistema de observabilidad** (APM o equivalente) para supervisar su estado operativo y facilitar el diagnóstico de fallas. Se valora incorporar **trazabilidad distribuida** con un trace/correlation ID propagado entre servicios.

**Logs**

Cada servicio debe contar con log estructurado con niveles configurables:

- **Error**: falla que impide ejecutar la funcionalidad.
- **Warn**: condición anómala que no impide la funcionalidad básica.
- **Info**: acción iniciada por el usuario o el sistema, trazable en el historial.
- **Debug**: contexto técnico para diagnóstico sin necesidad del código fuente.

### Seguridad

- Las contraseñas deben almacenarse hasheadas (BCrypt o equivalente).
- Los secretos y credenciales no deben estar en el código fuente; deben gestionarse mediante variables de entorno o un sistema de secretos.
- **Protección de datos personales**: Los datos sensibles de los usuarios (email, dirección, historial de compras) solo deben recolectarse si son estrictamente necesarios para la funcionalidad. No deben exponerse en logs, respuestas de error ni endpoints no autorizados. El acceso a datos de otros usuarios debe estar controlado por autorización explícita en cada operación.
- **Minimización de datos en APIs**: Las respuestas de la API no deben incluir campos innecesarios. En particular, nunca deben retornarse contraseñas, tokens internos ni datos privados de otros usuarios, aunque estén disponibles en la base de datos.

**Lineamientos técnicos de autenticación**

- **Tokens de sesión**: Se recomienda el uso de JWT con tiempo de expiración configurable. El token debe incluir el identificador de usuario y el rol.
- **Tokens de recupero**: Deben generarse con al menos 128 bits de entropía (ej. UUID v4 o equivalente), almacenarse hasheados en la base de datos y expirar en máximo 1 hora.
- **Contraseñas**: Deben cumplir mínimo 8 caracteres e incluir al menos una mayúscula, una minúscula y un número. El almacenamiento debe usar BCrypt u otro algoritmo de hashing adaptativo.
- **Refresh de sesión**: Se debe soportar renovación de token sin requerir re-autenticación mientras la sesión sea válida.
- **Rate limiting**: Los endpoints de login y recupero deben tener límite de intentos por IP y por cuenta.

Para una guía más detallada sobre alternativas de autenticación, manejo de sesión, API Gateway y separación entre auth/authz, consultar la **[Guía de cátedra 2026: API Gateway + Auth/Authz](https://ingenieria-del-software-2.github.io/blog/2026-04-03-auth/)**.

### Documentación

Se debe entregar:

- **README** por repositorio con instrucciones de setup local.
- **Contratos de API** documentados con Swagger/OpenAPI, preferentemente autogenerado.
- **Diagramas de arquitectura** (se recomienda C4 Model: contexto, contenedores y componentes).
- **Registro de Decisiones de Arquitectura (ADRs)** para las decisiones de diseño relevantes. Cada ADR debe incluir: contexto del problema, decisión tomada, alternativas descartadas y consecuencias esperadas.
- **Retrospectiva final del proyecto**.

Se valora positivamente:

- **Guía de usuario** de la aplicación mobile.
- **Guía de usuario** del backoffice.
- **Bitácora de proyecto** con evolución semanal del backlog.

---

## Instancias de entrega

El proyecto se desarrolla en forma iterativa e incremental a lo largo de tres checkpoints y una entrega final. Cada instancia dura aproximadamente 3–4 semanas.


**Dinámica de trabajo**

El corrector asignado a cada grupo actúa como **Product Owner** durante todo el cuatrimestre. Al inicio de cada checkpoint, el grupo acuerda con el corrector el conjunto de historias de usuario a trabajar en ese período. Ese acuerdo queda registrado en el backlog del grupo.

Durante el checkpoint, el grupo trabaja semanalmente de forma iterativa. En cada sesión semanal el corrector evalúa el avance funcional y el estado de las distintas [dimensiones de calidad](#requisitos-no-funcionales) del proyecto. Al finalizar el período, el grupo realiza la entrega formal de las historias acordadas.

**Instancias**

| Instancia    | Duración aprox. | Fecha      | Recomendaciones                                                                                                                                          |
| ------------ | --------------- | ---------- | -------------------------------------------------------------------------------------------------------------------------------------------------------- |
| Checkpoint 0 | —               | 27/03/2026 | Organizar el equipo, reconocer componentes, conocer herramientas. Establecer una matriz de conocimientos del equipo                                      |
| Checkpoint 1 | 3–4 semanas     | 17/04/2026 | Diseñar arquitectura, armar repositorios, automatizar CI/CD en todos los componentes. Al menos un CRUD básico funcional. Presentar prototipos UX (wireframes/mockups) de los flujos principales |
| Checkpoint 2 | 3–4 semanas     | 12/05/2026 | E2E de la plataforma con todos los CRUD básicos al 100% o avanzados. 70% historias requeridas finalizadas, 50% historias optativas finalizadas            |
| Checkpoint 3 | 3–4 semanas     | 05/06/2026 | 100% historias requeridas finalizadas, 80% historias optativas finalizadas                                                                               |
| Entrega      | —               | 26/06/2026 | Trabajo completo más demo funcional                                                                                                                      |

_Las recomendaciones son orientativas y deben revisarse con el ayudante docente asignado al inicio de cada período. El alcance específico de cada checkpoint se acuerda con el corrector._

**Al finalizar el trabajo**, el grupo debe haber implementado:

- **Todas las historias obligatorias**, cumpliendo sus criterios de aceptación.
- **Todos los Requisitos No Funcionales** definidos en este documento.
- **Un mínimo de puntos en historias optativas** según la cantidad de integrantes del grupo (ver [Historias optativas](#historias-optativas)).


## Historias obligatorias

| #   | Historia                         | Épica               | Puntos |
| --- | -------------------------------- | ------------------- | -----: |
| 1   | Registro de usuarios             | Usuarios            |      2 |
| 2   | Login con email y contraseña     | Usuarios            |      2 |
| 3   | Recupero de contraseña           | Usuarios            |      3 |
| 4   | Edición de perfil                | Perfil              |      3 |
| 5   | Visualización de perfil propio   | Perfil              |      1 |
| 6   | Home                             | Catálogo            |      3 |
| 7   | Listado y búsqueda de productos  | Catálogo            |      3 |
| 8   | Detalle de producto              | Catálogo            |      2 |
| 9   | Agregar producto al carrito      | Carrito             |      2 |
| 10  | Gestión del carrito              | Carrito             |      3 |
| 11  | Checkout e inicio de pago        | Checkout y Órdenes  |      8 |
| 12  | Estado y seguimiento de orden    | Checkout y Órdenes  |      5 |
| 13  | Historial de compras             | Checkout y Órdenes  |      2 |
| 14  | Publicar producto                | Vendedor            |      3 |
| 15  | Gestión de stock y publicaciones | Vendedor            |      3 |
| 16  | Historial de ventas              | Vendedor            |      3 |
| 17  | Listar usuarios del sistema      | Administración      |      1 |
| 18  | Bloquear y desbloquear usuario   | Administración      |      2 |
| 19  | Listar y moderar productos       | Administración      |      5 |
| 20  | Listar órdenes del sistema       | Administración      |      2 |
| 21  | Métricas del sistema             | Métricas            |      5 |

**Puntaje total obligatorio: 63 pts.**

## Historias optativas

Cada historia optativa tiene un puntaje asociado. El grupo debe seleccionar las historias que implementará y alcanzar el mínimo de puntos requerido según su cantidad de integrantes.

| #   | Historia                                    | Épica              | Puntos |
| --- | ------------------------------------------- | ------------------ | ------ |
| 22  | Login con proveedor federado                | Usuarios           | 3      |
| 23  | Registro con PIN                            | Usuarios           | 2      |
| 24  | Visualización de perfil público             | Perfil             | 2      |
| 25  | Compartir link de producto                  | Catálogo           | 2      |
| 26  | Productos populares en home                 | Catálogo           | 3      |
| 27  | Filtros avanzados de búsqueda               | Catálogo           | 3      |
| 28  | Ordenamiento de resultados                  | Catálogo           | 2      |
| 29  | Agregar / quitar de wishlist                | Wishlist           | 2      |
| 30  | Visualización de wishlist                   | Wishlist           | 2      |
| 31  | Calificar producto y vendedor               | Reviews            | 5      |
| 32  | Reputación del vendedor en perfil público   | Reviews            | 3      |
| 33  | Crear y gestionar cupones de descuento      | Vendedor           | 5      |
| 34  | Aplicar cupón en checkout                   | Checkout y Órdenes | 3      |
| 35  | Cancelar orden                              | Checkout y Órdenes | 3      |
| 36  | Reembolso simulado al cancelar              | Checkout y Órdenes | 2      |
| 37  | Notificación de cambio de estado de orden   | Notificaciones     | 5      |
| 38  | Notificación de stock bajo al vendedor      | Notificaciones     | 2      |
| 39  | Recomendaciones basadas en historial        | Recomendaciones    | 5      |
| 40  | Métricas por categoría                      | Métricas           | 3      |
| 41  | Exportar datos de métricas                  | Métricas           | 2      |

**Puntaje máximo disponible: 59 pts.**

## Puntaje mínimo por equipo

| Integrantes | Mínimo optativas | Total mínimo | % del total |
| :---------: | :--------------: | :----------: | :---------: |
| 4           | 20 pts           | 83 pts       | 68%         |
| 5           | 26 pts           | 89 pts       | 73%         |
| 6           | 32 pts           | 95 pts       | 78%         |

El total mínimo considera los 63 pts de historias obligatorias más el mínimo de optativas requerido según el tamaño del equipo. El pool disponible de optativas es de 59 pts.

---

## Referencias Técnicas

Este documento centraliza los conceptos técnicos utilizados en el enunciado de Bazaar. Para cada concepto se incluye una descripción de lo que la cátedra entiende por él, qué se espera del grupo al aplicarlo, y referencias para profundizar.

**Arquitectura y Diseño**

**Microservicios**

Un estilo arquitectónico en el que el sistema se descompone en servicios pequeños e independientes, cada uno con su propia base de datos y desplegable de forma autónoma. La cátedra espera que cada servicio tenga responsabilidad bien delimitada, que no comparta base de datos con otros servicios, y que los contratos entre ellos estén documentados.

- [Microservices — Martin Fowler](https://martinfowler.com/articles/microservices.html)
- [Microservices.io — Patterns](https://microservices.io/patterns/index.html)

**Domain-Driven Design (DDD)**

Enfoque de diseño que alinea el modelo de software con el dominio del negocio. Los conceptos clave esperados son: identificación de **Bounded Contexts** (límites del dominio), **Entities** y **Value Objects**, y el uso del lenguaje ubicuo para nombrar los elementos del sistema. No se exige una implementación completa de DDD táctico, pero sí que las decisiones de descomposición en servicios estén justificadas en términos del dominio.

- [DDD — Domain-Driven Design (Martin Fowler)](https://martinfowler.com/bliki/DomainDrivenDesign.html)
- [DDD Reference (Eric Evans)](https://www.domainlanguage.com/ddd/reference/)

**API Gateway**

Componente que actúa como punto único de entrada al sistema desde los clientes (mobile, backoffice). Centraliza el enrutamiento hacia los servicios backend, la validación de tokens de autenticación y el rate limiting. La cátedra lo considera un componente esperado de la arquitectura. Su implementación y decisiones de diseño deben documentarse en un ADR.

- [API Gateway Pattern](https://microservices.io/patterns/apigateway.html)
- [NGINX API Gateway](https://www.nginx.com/learn/api-gateway/)
- [Kong Gateway (open source)](https://konghq.com/products/kong-gateway)

**C4 Model**

Framework para documentar la arquitectura de software en cuatro niveles de abstracción: Contexto, Contenedores, Componentes y Código. La cátedra espera al menos los tres primeros niveles. Se recomienda usar PlantUML o Structurizr para generarlos.

- [C4 Model](https://c4model.com/)
- [Structurizr (herramienta)](https://structurizr.com/)

**Architecture Decision Records (ADR)**

Documento corto que registra una decisión de diseño relevante. Cada ADR debe incluir: contexto del problema, decisión tomada, alternativas descartadas y consecuencias esperadas. La cátedra espera un ADR por cada decisión significativa (elección de tecnología, patrón de comunicación, adopción o no del API Gateway, etc.).

- [ADR GitHub](https://adr.github.io/)
- [Plantilla de ADR (Michael Nygard)](https://github.com/joelparkerhenderson/architecture-decision-record/blob/main/locales/en/templates/decision-record-template-by-michael-nygard/index.md)

**Resiliencia y Patrones Distribuidos**

**Saga Pattern**

Patrón para manejar transacciones distribuidas que involucran múltiples servicios sin usar transacciones ACID globales. Existen dos variantes: **coreografía** (cada servicio reacciona a eventos de otros) y **orquestación** (un coordinador central dirige el flujo). La cátedra espera que los flujos críticos como el checkout definan explícitamente su estrategia de compensación ante fallos parciales.

- [Saga Pattern — Microservices.io](https://microservices.io/patterns/data/saga.html)
- [Saga Orchestration vs Choreography](https://microservices.io/post/microservices/2019/07/09/developing-sagas-part-1.html)

**Circuit Breaker**

Patrón que evita que un servicio siga intentando llamar a otro que está fallando, cortando el circuito temporalmente y fallando rápido. Tiene tres estados: **cerrado** (operación normal), **abierto** (falla rápida sin intentar la llamada) y **semi-abierto** (prueba si el servicio se recuperó). La cátedra espera que las llamadas entre servicios que puedan fallar lo implementen o justifiquen en un ADR por qué no es necesario.

- [Circuit Breaker — Martin Fowler](https://martinfowler.com/bliki/CircuitBreaker.html)
- [Resilience4j (Java)](https://resilience4j.readme.io/docs/circuitbreaker)
- [circuitbreaker (Python)](https://pypi.org/project/circuitbreaker/)

**Retry con backoff exponencial**

Estrategia para reintentar una operación fallida esperando un tiempo creciente entre intentos (ej: 1s, 2s, 4s, 8s...) más un componente aleatorio (jitter) para evitar picos de carga sincronizados. La cátedra espera que las operaciones que se puedan reintentar sin efectos secundarios (idempotentes) usen esta estrategia ante fallos transitorios.

- [Exponential Backoff and Jitter (AWS)](https://aws.amazon.com/blogs/architecture/exponential-backoff-and-jitter/)

**Idempotencia**

Una operación es idempotente si ejecutarla múltiples veces produce el mismo resultado que ejecutarla una sola vez. La cátedra exige idempotencia en operaciones que modifiquen estado y puedan reintentarse: pagos, actualizaciones de stock, emisión de eventos. La implementación típica usa un **idempotency key** por request que el servidor almacena para detectar duplicados.

- [Idempotency — Stripe API Docs](https://stripe.com/docs/api/idempotent_requests)
- [Designing Robust and Predictable APIs with Idempotency](https://multithreaded.stitchfix.com/blog/2017/06/26/patterns-of-soa-idempotency/)

**Fallos transitorios vs. permanentes**

- **Fallo transitorio**: condición temporal que se espera que se resuelva sola (timeout de red, servicio momentáneamente no disponible). La respuesta esperada es reintentar con backoff.
- **Fallo permanente**: condición que no se resolverá sin intervención (pago rechazado por fondos insuficientes, datos inválidos). La respuesta esperada es compensar el flujo o notificar al usuario.

La distinción concreta para cada flujo la define el grupo y la acuerda con su corrector.

**Testing**

**Pirámide de Tests**

La cátedra espera que la suite de tests incluya los tres niveles:
1. **Unitarios**: validan lógica de negocio de cada servicio de forma aislada. Cobertura mínima: 70%.
2. **Integración**: validan la interacción entre servicios core (ej: checkout + stock + pagos).
3. **Contrato**: validan que los contratos entre servicios se cumplen (ver Contract Testing).

- [Test Pyramid — Martin Fowler](https://martinfowler.com/bliki/TestPyramid.html)

**Contract Testing**

Pruebas que verifican que dos servicios que se comunican entre sí cumplen el contrato acordado. El objetivo es detectar incompatibilidades entre servicios sin necesidad de un entorno completo levantado. El nivel mínimo esperado es al menos un contrato definido y verificado entre dos servicios del flujo de checkout.

La cátedra no impone una herramienta específica. Las opciones más comunes son:

- **Pact** — enfoque consumer-driven: el consumer define sus expectativas y el provider las verifica. Mayor expresividad, mayor curva de entrada.
- **Schemathesis** — genera tests automáticamente desde la spec OpenAPI y los ejecuta contra el servicio real. Muy bajo esfuerzo de configuración.
- **Dredd** — valida que la implementación cumpla la spec OpenAPI declarada. Similar a Schemathesis.
- **oasdiff** — detecta breaking changes entre versiones de la spec. Útil para incorporar en CI.

- [Pact — Contract Testing](https://pact.io/)
- [Schemathesis](https://schemathesis.readthedocs.io/)
- [Dredd](https://dredd.org/en/latest/)
- [oasdiff](https://github.com/Tufin/oasdiff)

**Pruebas de carga y estrés (k6 / Artillery)**

Pruebas que evalúan el comportamiento del sistema bajo carga sostenida (load testing) o picos extremos (stress testing). La cátedra exige pruebas sobre los endpoints críticos del flujo de checkout. Los resultados deben presentarse con métricas de latencia (p50, p95, p99) y tasa de errores. Las pruebas pueden ejecutarse localmente; no es requerido integrarlas al pipeline de CI.

- [k6 — Load Testing](https://k6.io/)
- [Artillery](https://www.artillery.io/)

**SAST (Static Application Security Testing)**

Análisis estático del código fuente para detectar vulnerabilidades de seguridad sin ejecutar el programa. La cátedra recomienda incorporarlo al pipeline de CI. Herramientas comunes: Bandit (Python), ESLint security plugin (Node.js), Semgrep (multi-lenguaje).

- [Bandit (Python)](https://bandit.readthedocs.io/)
- [Semgrep](https://semgrep.dev/)

**Observabilidad**

**Health Checks**

Cada servicio debe exponer probes con semántica diferenciada, como se indica en la sección de Monitoreo: **`/livez`** para validar que el proceso está vivo (sin consultar dependencias externas) y **`/readyz`** para confirmar que puede atender requests correctamente (validando dependencias críticas como la base de datos). No usar un único `/health` genérico.

- [Separate Readiness and Liveness Probes](https://learn.microsoft.com/en-us/aspnet/core/host-and-deploy/health-checks?view=aspnetcore-10.0#separate-readiness-and-liveness-probes)

**Logs estructurados**

Los logs deben emitirse en formato estructurado (JSON) con niveles configurables (Error, Warn, Info, Debug).

- [Structured Logging](https://www.structuredlogging.io/)

**Trazabilidad distribuida**

Para rastrear una operación a través de múltiples servicios, cada request debe generar un **trace/correlation ID** que se propaga en los headers entre servicios. Se valora contar con herramientas que permitan consultar estas trazas.

- [Distributed Tracing Pattern](https://microservices.io/patterns/observability/distributed-tracing.html)

**Prometheus y Grafana**

Prometheus recolecta métricas de runtime (latencia, tasa de errores, uso de recursos) que los servicios exponen vía un endpoint `/metrics`. Grafana permite visualizarlas en dashboards. La cátedra los recomienda para observabilidad, pero acepta alternativas equivalentes.

- [Prometheus](https://prometheus.io/docs/introduction/overview/)
- [Grafana](https://grafana.com/docs/grafana/latest/)

**APIs y Contratos**

**OpenAPI / Swagger**

Especificación estándar para documentar APIs REST. La cátedra espera que los contratos de API estén documentados con OpenAPI, preferentemente autogenerado desde el código. Debe incluir todos los endpoints, parámetros, cuerpos de request/response y códigos de error.

- [OpenAPI Specification](https://swagger.io/specification/)
- [Swagger UI](https://swagger.io/tools/swagger-ui/)

**REST**

Estilo arquitectónico para diseño de APIs sobre HTTP. La cátedra espera el uso correcto de verbos HTTP (GET, POST, PUT, PATCH, DELETE), códigos de estado semánticos (200, 201, 400, 401, 403, 404, 409, 500) y recursos nombrados como sustantivos en plural.

- [REST — Wikipedia](https://en.wikipedia.org/wiki/Representational_state_transfer)
- [HTTP Status Codes](https://developer.mozilla.org/en-US/docs/Web/HTTP/Status)

**Frontend y Mobile**

La cátedra recomienda React (para el backoffice web) y React Native (para la app mobile), pero cada grupo puede elegir su stack libremente siempre que cumpla los requisitos funcionales y no funcionales del enunciado.

**React**

Biblioteca de JavaScript para construir interfaces de usuario declarativas basadas en componentes. Para el backoffice del administrador, la cátedra recomienda React con alguna librería de componentes (MUI, Chakra UI, etc.).

- [React — Documentación oficial](https://react.dev/)
- [React Router — Navegación en SPAs](https://reactrouter.com/)

**React Native**

Framework para construir aplicaciones móviles nativas usando React. Permite compartir lógica entre Android e iOS. La cátedra recomienda Expo como punto de entrada por simplificar el setup inicial, pero los grupos pueden optar por el bare workflow si necesitan mayor control nativo.

- [React Native — Documentación oficial](https://reactnative.dev/docs/getting-started)
- [Expo — Getting Started](https://docs.expo.dev/)
- [React Navigation — Navegación en React Native](https://reactnavigation.org/)

**Manejo de estado y datos del servidor**

Para el estado global de la aplicación (sesión, carrito, preferencias), se recomienda una solución explícita. Para el estado derivado de llamadas a la API (productos, órdenes), se recomienda una librería que gestione caché, reintentos y estados de carga, alineándose con el RNF de resiliencia en la capa de presentación.

- [React Query (TanStack Query)](https://tanstack.com/query/latest)
- [Zustand — Estado global liviano](https://zustand-demo.pmnd.rs/)
- [Redux Toolkit](https://redux-toolkit.js.org/)

**Resiliencia en la capa de presentación**

El enunciado exige que la UI maneje explícitamente los estados de error y latencia: indicadores de carga, mensajes accionables ante fallos de red, y comportamiento coherente ante timeouts. React Query y SWR implementan reintentos automáticos y estados de carga/error listos para usar.

- [React Query — Error Handling](https://tanstack.com/query/latest/docs/framework/react/guides/query-retries)
- [Expo Offline Support](https://docs.expo.dev/versions/latest/sdk/netinfo/)

**Gateway de Pagos**

El checkout debe integrarse con un servicio de pagos externo real usando su entorno de pruebas (sandbox). No se acepta simular el pago internamente con un flag o un mock hardcodeado — la llamada al servicio externo debe existir. No es necesario procesar pagos reales.

La cátedra recomienda las siguientes opciones, todas con sandbox gratuito:

**Stripe**

Opción recomendada para proyectos académicos. Tiene excelente documentación, SDKs oficiales para los lenguajes más usados (Node.js, Python, etc.) y un sandbox completo con tarjetas de prueba predefinidas. Su API de idempotency keys es un buen ejemplo práctico del patrón de idempotencia requerido en el enunciado.

- [Stripe — Testing](https://stripe.com/docs/testing)
- [Stripe — Quickstart](https://stripe.com/docs/development/quickstart)
- [Stripe — SDKs](https://stripe.com/docs/libraries)

**MercadoPago**

Relevante para el contexto local (Argentina). Cuenta con sandbox y credenciales de prueba. Los grupos que quieran una integración más cercana al mercado local pueden optar por esta alternativa.

- [MercadoPago — Developers](https://www.mercadopago.com.ar/developers/es)
- [MercadoPago — Sandbox y pruebas](https://www.mercadopago.com.ar/developers/es/docs/checkout-api/integration-test/make-test-purchase)

**Servicio de pagos propio (mock externo)**

Como alternativa, el grupo puede implementar un microservicio propio que simule un gateway de pagos con comportamiento configurable (aprobar, rechazar, timeout). Esta opción es válida si se documenta en un ADR y permite controlar escenarios de fallo para testing. No reemplaza la necesidad de diseñar el flujo como si fuera un servicio externo real.

**Mobile y Notificaciones**

**Firebase Cloud Messaging (FCM)**

Servicio de Google para el envío de notificaciones push a dispositivos móviles Android e iOS. La cátedra lo recomienda para implementar notificaciones push. El servicio backend emite el mensaje a FCM, que se encarga de entregarlo al dispositivo del usuario.

- [Firebase Cloud Messaging](https://firebase.google.com/docs/cloud-messaging)
- [FCM con React Native](https://rnfirebase.io/messaging/usage)

**Seguridad y Privacidad**

**Privacy by Design**

Principio que establece que la protección de datos personales debe incorporarse al diseño del sistema desde el inicio, no como una capa agregada después. La cátedra espera: recolección mínima de datos (solo los necesarios para la funcionalidad), control de acceso explícito por operación, y que los datos sensibles no aparezcan en logs ni respuestas de error.

- [Privacy by Design — Ann Cavoukian](https://student.cs.uwaterloo.ca/~cs492/papers/7foundationalprinciples_longer.pdf)
- [OWASP Privacy Risks](https://owasp.org/www-project-top-10-privacy-risks/)

