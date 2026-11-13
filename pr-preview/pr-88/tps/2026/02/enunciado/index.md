# 2026C2 - Discordia

# Discordia

![Logo](logo.svg)

Armá tu server. Sumá tu gente. Hablá en tiempo real.

**Descripción**

Discordia es la plataforma donde cualquier comunidad encuentra su lugar: creá un servidor, invitá a tu gente y organizá todo en canales de texto y voz. Cada servidor es un espacio propio, con sus roles, sus reglas y su gente.

La mensajería es en tiempo real, con menciones e historial, y los canales de voz permiten sumarse a una conversación en vivo sin fricción. Los roles y permisos dejan que cada comunidad se organice a su manera, mientras que las herramientas de moderación cuidan que ese espacio se mantenga sano.

Para quienes quieren más, Discordia ofrece un plan Premium con beneficios individuales, y puntos que la comunidad puede usar para potenciar su propio servidor — más lugar, mejor calidad, más posibilidades para todos.

## Índice

**1. Usuarios** — Gestión de cuentas: registro, acceso y recuperación.

- [Registro de usuarios](#registro-de-usuarios)
- [Login con email y contraseña](#login-con-email-y-contraseña)
- [Recupero de contraseña](#recupero-de-contraseña)
- [Login con proveedor federado](#login-con-proveedor-federado)
- [Registro con PIN](#registro-con-pin)
- [Autenticación de dos factores (2FA)](#autenticación-de-dos-factores-2fa)

**2. Perfil** — Identidad del usuario dentro de la plataforma.

- [Edición de perfil](#edición-de-perfil)
- [Visualización de perfil propio](#visualización-de-perfil-propio)
- [Visualización de perfil público](#visualización-de-perfil-público)
- [Estado de actividad](#estado-de-actividad)
- [Estado personalizado](#estado-personalizado)

**3. Servidores** — Creación, invitación y administración de comunidades.

- [Crear servidor](#crear-servidor)
- [Generar invitación](#generar-invitación)
- [Unirse a servidor vía invitación](#unirse-a-servidor-vía-invitación)
- [Administrar configuración del servidor](#administrar-configuración-del-servidor)
- [Abandonar servidor](#abandonar-servidor)
- [Eliminar servidor](#eliminar-servidor)
- [Transferir propiedad del servidor](#transferir-propiedad-del-servidor)

**4. Canales** — Organización de un servidor en canales de texto y voz.

- [Crear canal](#crear-canal)
- [Editar canal](#editar-canal)
- [Eliminar canal](#eliminar-canal)
- [Organizar canales en categorías](#organizar-canales-en-categorías)
- [Reordenar canales](#reordenar-canales)

**5. Mensajería** — Mensajes en tiempo real dentro de un canal o en conversaciones directas (DMs), con historial y menciones.

- [Enviar mensaje en un canal](#enviar-mensaje-en-un-canal)
- [Enviar mensaje directo (DM)](#enviar-mensaje-directo-dm)
- [Bloquear y desbloquear usuarios](#bloquear-y-desbloquear-usuarios)
- [Editar mensaje](#editar-mensaje)
- [Eliminar mensaje](#eliminar-mensaje)
- [Historial y reconexión](#historial-y-reconexión)
- [Menciones](#menciones)
- [Adjuntar archivos en mensajes](#adjuntar-archivos-en-mensajes)
- [Reacciones con emoji](#reacciones-con-emoji)
- [Buscar mensajes](#buscar-mensajes)

**6. Canal de Voz** — Unirse y participar de una conversación de voz en vivo, tanto en canales de servidor como en llamadas privadas 1 a 1.

- [Unirse a canal de voz de servidor](#unirse-a-canal-de-voz-de-servidor)
- [Salir de canal de voz](#salir-de-canal-de-voz)
- [Silenciar micrófono propio](#silenciar-micrófono-propio)
- [Ver participantes conectados](#ver-participantes-conectados)
- [Iniciar y recibir llamada de voz privada](#iniciar-y-recibir-llamada-de-voz-privada)
- [Indicador de quién está hablando](#indicador-de-quién-está-hablando)
- [Silenciar a otro participante localmente](#silenciar-a-otro-participante-localmente)
- [Compartir pantalla](#compartir-pantalla)
- [Video en llamada](#video-en-llamada)

**7. Roles y Permisos** — Organización interna de cada servidor.

- [Crear rol](#crear-rol)
- [Editar permisos de un rol](#editar-permisos-de-un-rol)
- [Asignar rol a un miembro](#asignar-rol-a-un-miembro)
- [Definir rol por defecto para nuevos miembros](#definir-rol-por-defecto-para-nuevos-miembros)
- [Eliminar rol](#eliminar-rol)
- [Reordenar jerarquía de roles](#reordenar-jerarquía-de-roles)
- [Sobrescribir permisos de un rol en un canal específico](#sobrescribir-permisos-de-un-rol-en-un-canal-específico)
- [Ver miembros por rol](#ver-miembros-por-rol)

**8. Moderación** — Herramientas para mantener sano un servidor.

- [Expulsar miembro del servidor](#expulsar-miembro-del-servidor)
- [Banear miembro del servidor](#banear-miembro-del-servidor)
- [Revocar baneo](#revocar-baneo)
- [Silenciar temporalmente a un miembro](#silenciar-temporalmente-a-un-miembro)
- [Ver registro de auditoría de moderación](#ver-registro-de-auditoría-de-moderación)
- [Reportar mensaje o usuario](#reportar-mensaje-o-usuario)
- [Filtro automático de palabras prohibidas](#filtro-automático-de-palabras-prohibidas)

**9. Notificaciones** — Menciones, mensajes directos y actividad relevante.

- [Ver notificaciones no leídas](#ver-notificaciones-no-leídas)
- [Marcar notificaciones como leídas](#marcar-notificaciones-como-leídas)
- [Silenciar notificaciones de un canal o servidor](#silenciar-notificaciones-de-un-canal-o-servidor)
- [Configurar preferencias de notificación](#configurar-preferencias-de-notificación)
- [Notificaciones push](#notificaciones-push)
- [Centro de notificaciones con historial](#centro-de-notificaciones-con-historial)

**10. Administración** — Backoffice para la gestión de usuarios, servidores e investigación de la plataforma.

- [Suspender usuario a nivel plataforma](#suspender-usuario-a-nivel-plataforma)
- [Reactivar usuario suspendido](#reactivar-usuario-suspendido)
- [Ver listado de servidores de la plataforma](#ver-listado-de-servidores-de-la-plataforma)
- [Eliminar servidor desde el backoffice](#eliminar-servidor-desde-el-backoffice)
- [Ver listado de usuarios con filtros](#ver-listado-de-usuarios-con-filtros)
- [Suspender servidor completo](#suspender-servidor-completo)
- [Ver expediente de investigación de usuario o servidor](#ver-expediente-de-investigación-de-usuario-o-servidor)

**11. Métricas** — Indicadores de actividad de la plataforma, estado e incidentes.

- [Ver métricas de actividad de un servidor](#ver-métricas-de-actividad-de-un-servidor)
- [Ver métricas globales de la plataforma](#ver-métricas-globales-de-la-plataforma)
- [Gráfico de crecimiento de miembros](#gráfico-de-crecimiento-de-miembros)
- [Exportar métricas a CSV](#exportar-métricas-a-csv)
- [Estado de la plataforma e incidentes](#estado-de-la-plataforma-e-incidentes)

**12. Monetización** — Plan Premium, compra de puntos y boost de servidor.

- [Gestionar emojis personalizados del servidor](#gestionar-emojis-personalizados-del-servidor)
- [Suscribirse a Plan Premium](#suscribirse-a-plan-premium)
- [Cancelar suscripción Premium](#cancelar-suscripción-premium)
- [Comprar puntos](#comprar-puntos)
- [Usar puntos para boostear un servidor](#usar-puntos-para-boostear-un-servidor)
- [Ver beneficios de servidor boosteado](#ver-beneficios-de-servidor-boosteado)

---

# Historias de Usuario

## Épica: Usuarios

### Registro de usuarios

<!-- Status: Obligatoria -->

**Descripción**: Como **persona sin cuenta**, quiero **registrarme en la plataforma con mi correo electrónico** para **poder crear o unirme a servidores y comunicarme con otras personas**.

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
  - Dado que un usuario ingresa una contraseña que no cumple los requisitos mínimos de seguridad (mínimo 8 caracteres, mayúscula, minúscula y número)
  - Cuando intenta continuar con el registro
  - Entonces el sistema indica los requisitos y no permite continuar.

### Login con email y contraseña

<!-- Status: Obligatoria -->

**Descripción**: Como **usuario registrado**, quiero **iniciar sesión con mi correo electrónico y contraseña** para **acceder a mis servidores y conversaciones**.

**Criterios de aceptación**

- CA 1: Login exitoso
  - Dado que un usuario ingresa un email y contraseña correctos
  - Cuando envía el formulario de login
  - Entonces el sistema autentica al usuario y lo redirige a la plataforma con sesión activa.

- CA 2: Contraseña incorrecta
  - Dado que un usuario ingresa un email registrado con una contraseña incorrecta
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

- CA 5: Cierre de sesión
  - Dado que un usuario tiene una sesión activa
  - Cuando elige cerrar sesión
  - Entonces el sistema invalida la sesión actual, lo dirige a la pantalla de login y rechaza reutilizar ese token para acciones autenticadas posteriores.

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

**Descripción**: Como **usuario**, quiero **iniciar sesión con un proveedor externo (por ejemplo, Google)** para **acceder a la plataforma sin necesidad de recordar una contraseña adicional**.

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

### Autenticación de dos factores (2FA)

<!-- Status: Optativa -->

**Descripción**: Como **usuario**, quiero **activar un segundo factor de autenticación** para **proteger mi cuenta aunque mi contraseña se vea comprometida**.

**Criterios de aceptación**

- CA 1: Activación de 2FA
  - Dado que un usuario autenticado quiere activar 2FA
  - Cuando escanea el código QR con una app autenticadora (ej. Google Authenticator) e ingresa el código generado para confirmar
  - Entonces el sistema activa 2FA en la cuenta y muestra códigos de recuperación de un solo uso.

- CA 2: Login con 2FA activo
  - Dado que un usuario con 2FA activo ingresa email y contraseña correctos
  - Cuando el sistema le solicita el código de la app autenticadora y lo ingresa correctamente
  - Entonces el sistema completa el login y otorga la sesión.

- CA 3: Código de 2FA incorrecto
  - Dado que un usuario con 2FA activo está en el paso de verificación
  - Cuando ingresa un código incorrecto o expirado
  - Entonces el sistema rechaza el login y no otorga sesión.

- CA 4: Uso de código de recuperación
  - Dado que un usuario perdió acceso a su app autenticadora
  - Cuando ingresa uno de sus códigos de recuperación de un solo uso en el paso de verificación
  - Entonces el sistema completa el login, invalida ese código de recuperación y le recomienda regenerar la lista.

- CA 5: Desactivación de 2FA
  - Dado que un usuario autenticado con 2FA activo quiere desactivarlo
  - Cuando confirma la desactivación reingresando su contraseña
  - Entonces el sistema desactiva 2FA y ya no solicita el segundo factor en logins futuros.

## Épica: Perfil

### Edición de perfil

<!-- Status: Obligatoria -->

**Descripción**: Como **usuario registrado**, quiero **editar los datos de mi perfil** para **mantener mi identidad actualizada en la plataforma**.

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

**Descripción**: Como **usuario registrado**, quiero **ver mi perfil** para **revisar mi información y acceder a su edición**.

**Criterios de aceptación**

- CA 1: Vista del perfil propio
  - Dado que un usuario tiene una cuenta activa
  - Cuando accede a su perfil
  - Entonces puede ver su nombre, foto, descripción, estado de actividad (historia optativa) y fecha de registro.

- CA 2: Acceso directo a edición
  - Dado que un usuario está viendo su propio perfil
  - Cuando quiere editarlo
  - Entonces tiene acceso directo a la edición del mismo.

### Visualización de perfil público

<!-- Status: Optativa -->

**Descripción**: Como **usuario**, quiero **ver el perfil público de otro usuario** para **conocer quién es antes de interactuar con él en un servidor**.

**Criterios de aceptación**

- CA 1: Vista del perfil público de otro usuario
  - Dado que un usuario quiere ver información de otro usuario
  - Cuando accede a su perfil público
  - Entonces puede ver únicamente los datos públicos: nombre, foto de perfil, descripción, estado de actividad y servidores en común.

- CA 2: Datos privados no expuestos
  - Dado que un usuario está viendo el perfil público de otro usuario
  - Cuando revisa la información disponible
  - Entonces no puede ver datos privados como email ni mensajes directos.

- CA 3: Perfil de usuario suspendido
  - Dado que un usuario fue suspendido por moderación
  - Cuando otro usuario intenta acceder a su perfil
  - Entonces el sistema indica que el perfil no está disponible.

### Estado de actividad

<!-- Status: Optativa -->

**Descripción**: Como **usuario**, quiero **que mi estado de actividad se muestre en tiempo real a otros usuarios** para **que sepan si estoy disponible**.

**Criterios de aceptación**

- CA 1: Estado en línea automático
  - Dado que un usuario se encuentra conectado a la aplicación
  - Cuando otros usuarios ven su perfil o la lista de miembros de un servidor
  - Entonces lo ven marcado como "en línea".

- CA 2: Estado ausente automático
  - Dado que un usuario no interactúa con la plataforma durante un período configurable
  - Cuando el sistema detecta la inactividad
  - Entonces su estado cambia automáticamente a "ausente" y se propaga en tiempo real a quienes lo ven.

- CA 3: Estado manual (no molestar / invisible)
  - Dado que un usuario quiere controlar su visibilidad
  - Cuando selecciona manualmente "no molestar" o "invisible"
  - Entonces el sistema respeta esa elección y no la sobrescribe automáticamente mientras esté activa.

- CA 4: Desconexión
  - Dado que un usuario cierra sesión o pierde la conexión
  - Cuando el sistema detecta la desconexión
  - Entonces su estado cambia a "desconectado" y se propaga en tiempo real.

### Estado personalizado

<!-- Status: Optativa -->

**Descripción**: Como **usuario**, quiero **establecer un texto de estado personalizado** para **comunicar qué estoy haciendo a quienes ven mi perfil**.

**Criterios de aceptación**

- CA 1: Configuración del estado personalizado
  - Dado que un usuario quiere comunicar qué está haciendo
  - Cuando ingresa un texto corto (hasta 64 caracteres) y lo guarda
  - Entonces el texto se muestra junto a su nombre en su perfil y en las listas de miembros donde aparece.

- CA 2: Estado personalizado vacío
  - Dado que un usuario no configuró un estado personalizado
  - Cuando otros usuarios ven su perfil
  - Entonces no se muestra ningún texto de estado.

- CA 3: Eliminar estado personalizado
  - Dado que un usuario tiene un estado personalizado configurado
  - Cuando lo borra
  - Entonces deja de mostrarse inmediatamente.

## Épica: Servidores

### Crear servidor

<!-- Status: Obligatoria -->

**Descripción**: Como **usuario registrado**, quiero **crear un nuevo servidor** para **tener un espacio propio donde organizar una comunidad**.

Al crearse, el servidor debe quedar administrable por su creador y debe proveer un nivel de acceso base para los nuevos miembros. El mecanismo queda a criterio del grupo y debe documentarse.

**Criterios de aceptación**

- CA 1: Creación exitosa
  - Dado que un usuario completa el nombre del servidor (y opcionalmente un ícono)
  - Cuando confirma la creación
  - Entonces el servidor se crea, el usuario queda como owner, y se genera automáticamente un canal de texto y uno de voz por defecto.

- CA 2: Nombre inválido
  - Dado que un usuario ingresa un nombre vacío o que excede el largo máximo permitido
  - Cuando intenta crear el servidor
  - Entonces el sistema indica el error y no lo crea.

- CA 3: Ícono inválido
  - Dado que un usuario sube un ícono con formato o tamaño no soportado
  - Cuando intenta crearlo
  - Entonces el sistema rechaza el archivo con un error descriptivo y permite continuar sin ícono o con uno válido.

### Generar invitación

<!-- Status: Obligatoria -->

**Descripción**: Como **miembro con permisos para invitar**, quiero **generar un link de invitación a mi servidor** para **que otras personas puedan unirse**.

**Criterios de aceptación**

- CA 1: Invitación generada
  - Dado que un usuario con permiso de invitar está en un servidor
  - Cuando genera una invitación
  - Entonces el sistema crea un link único, configurable con o sin expiración y con o sin límite de usos.

- CA 2: Invitación con límite de usos alcanzado
  - Dado que una invitación tiene límite de usos definido
  - Cuando se alcanza ese límite
  - Entonces el link deja de ser válido para nuevos ingresos.

- CA 3: Invitación expirada
  - Dado que una invitación tiene fecha de expiración vencida
  - Cuando alguien intenta usarla
  - Entonces el sistema indica que la invitación ya no es válida.

- CA 4: Revocar invitación
  - Dado que un usuario con permisos ve una invitación activa del servidor
  - Cuando la revoca manualmente
  - Entonces el link deja de funcionar inmediatamente.

### Unirse a servidor vía invitación

<!-- Status: Obligatoria -->

**Descripción**: Como **usuario registrado**, quiero **unirme a un servidor usando un link de invitación** para **participar de esa comunidad**.

**Criterios de aceptación**

- CA 1: Ingreso exitoso
  - Dado que un usuario tiene un link de invitación válido
  - Cuando lo abre y confirma unirse
  - Entonces pasa a ser miembro del servidor y accede a sus canales según el rol por defecto.

- CA 2: Invitación inválida
  - Dado que un usuario tiene un link de invitación expirado, revocado o inexistente
  - Cuando intenta usarlo
  - Entonces el sistema informa que la invitación no es válida.

- CA 3: Usuario ya es miembro
  - Dado que un usuario ya es miembro del servidor
  - Cuando usa nuevamente un link de invitación a ese servidor
  - Entonces el sistema lo dirige directo al servidor sin duplicar la membresía.

- CA 4: Usuario baneado
  - Dado que un usuario fue baneado de un servidor
  - Cuando intenta unirse con una invitación a ese servidor
  - Entonces el sistema rechaza el ingreso.

### Administrar configuración del servidor

<!-- Status: Optativa -->

**Descripción**: Como **miembro con permisos de administración**, quiero **editar la configuración general del servidor** para **mantenerlo actualizado**.

**Criterios de aceptación**

- CA 1: Edición exitosa
  - Dado que un usuario con permisos edita nombre, ícono o banner del servidor con datos válidos
  - Cuando guarda los cambios
  - Entonces se persisten y se reflejan para todos los miembros.

- CA 2: Sin permisos
  - Dado que un usuario sin permisos de administración intenta editar la configuración del servidor
  - Cuando accede a esa sección
  - Entonces el sistema no le permite realizar cambios.

- CA 3: Datos inválidos
  - Dado que un usuario con permisos ingresa datos que no cumplen las validaciones
  - Cuando intenta guardar
  - Entonces el sistema indica el error y no persiste los cambios.

### Abandonar servidor

<!-- Status: Obligatoria -->

**Descripción**: Como **miembro de un servidor**, quiero **abandonarlo** para **dejar de participar en esa comunidad**.

**Criterios de aceptación**

- CA 1: Abandono exitoso
  - Dado que un miembro (no owner) quiere dejar un servidor
  - Cuando confirma la acción
  - Entonces deja de tener acceso a los canales de ese servidor.

- CA 2: Owner no puede abandonar directamente
  - Dado que el owner de un servidor intenta abandonarlo
  - Cuando confirma la acción
  - Entonces el sistema le exige transferir la propiedad o eliminar el servidor antes de poder salir.

### Eliminar servidor

<!-- Status: Optativa -->

**Descripción**: Como **owner de un servidor**, quiero **eliminarlo definitivamente** para **cuando ya no tenga sentido mantenerlo activo**.

**Criterios de aceptación**

- CA 1: Eliminación exitosa
  - Dado que el owner de un servidor confirma su eliminación (ej. reingresando el nombre del servidor)
  - Cuando el sistema procesa la solicitud
  - Entonces el servidor y todos sus canales, mensajes y roles se eliminan de forma permanente.

- CA 2: Solo el owner puede eliminar
  - Dado que un usuario que no es owner intenta eliminar el servidor
  - Cuando accede a esa opción
  - Entonces el sistema no se lo permite.

- CA 3: Confirmación requerida
  - Dado que el owner inicia la eliminación
  - Cuando no completa el paso de confirmación explícita
  - Entonces el servidor no se elimina.

### Transferir propiedad del servidor

<!-- Status: Obligatoria -->

**Descripción**: Como **owner de un servidor**, quiero **transferir la propiedad a otro miembro** para **delegar la administración o dejar de estar a cargo**.

**Criterios de aceptación**

- CA 1: Transferencia exitosa
  - Dado que el owner selecciona a otro miembro del servidor y confirma la transferencia
  - Cuando el otro miembro acepta
  - Entonces ese miembro pasa a ser el nuevo owner y el anterior queda como miembro regular.

- CA 2: Transferencia a no miembro
  - Dado que el owner intenta transferir la propiedad a alguien que no es miembro del servidor
  - Cuando lo intenta
  - Entonces el sistema no lo permite.

- CA 3: Transferencia rechazada
  - Dado que el owner inicia una transferencia y el destinatario la rechaza
  - Cuando esto ocurre
  - Entonces la propiedad no cambia y el owner original la conserva.

## Épica: Canales

### Crear canal

<!-- Status: Obligatoria -->

**Descripción**: Como **miembro con permisos de administración**, quiero **crear un canal de texto o de voz en un servidor** para **organizar la comunicación por tema o actividad**.

**Criterios de aceptación**

- CA 1: Creación exitosa
  - Dado que un usuario con permisos completa el nombre y tipo de canal (texto o voz)
  - Cuando confirma la creación
  - Entonces el canal se crea y queda visible para los miembros con permiso de verlo.

- CA 2: Nombre inválido o duplicado
  - Dado que un usuario ingresa un nombre vacío o ya usado por otro canal en la misma categoría
  - Cuando intenta crearlo
  - Entonces el sistema indica el error y no lo crea.

- CA 3: Sin permisos
  - Dado que un usuario sin permisos de administración intenta crear un canal
  - Cuando accede a esa opción
  - Entonces el sistema no se lo permite.

### Editar canal

<!-- Status: Obligatoria -->

**Descripción**: Como **miembro con permisos de administración**, quiero **editar el nombre y el tema de un canal** para **mantenerlo claro y actualizado**.

**Criterios de aceptación**

- CA 1: Edición exitosa
  - Dado que un usuario con permisos edita el nombre o el tema (topic) de un canal con datos válidos
  - Cuando guarda los cambios
  - Entonces se persisten y se reflejan para todos los miembros.

- CA 2: Sin permisos
  - Dado que un usuario sin permisos de administración intenta editar un canal
  - Cuando accede a esa opción
  - Entonces el sistema no se lo permite.

### Eliminar canal

<!-- Status: Obligatoria -->

**Descripción**: Como **miembro con permisos de administración**, quiero **eliminar un canal** para **cuando ya no tenga sentido mantenerlo**.

**Criterios de aceptación**

- CA 1: Eliminación exitosa
  - Dado que un usuario con permisos confirma la eliminación de un canal
  - Cuando el sistema procesa la solicitud
  - Entonces el canal y su historial de mensajes se eliminan de forma permanente.

- CA 2: Confirmación requerida
  - Dado que un usuario con permisos inicia la eliminación de un canal
  - Cuando no completa el paso de confirmación explícita
  - Entonces el canal no se elimina.

- CA 3: Sin permisos
  - Dado que un usuario sin permisos de administración intenta eliminar un canal
  - Cuando accede a esa opción
  - Entonces el sistema no se lo permite.

### Organizar canales en categorías

<!-- Status: Obligatoria -->

**Descripción**: Como **miembro con permisos de administración**, quiero **agrupar canales dentro de categorías** para **que el servidor quede organizado por tema o sección**.

**Criterios de aceptación**

- CA 1: Crear categoría
  - Dado que un usuario con permisos define un nombre de categoría
  - Cuando confirma su creación
  - Entonces la categoría queda disponible para agrupar canales dentro de ella.

- CA 2: Mover canal a una categoría
  - Dado que un usuario con permisos selecciona un canal existente
  - Cuando lo asigna a una categoría
  - Entonces el canal pasa a mostrarse agrupado bajo esa categoría para todos los miembros.

- CA 3: Canal sin categoría
  - Dado que un canal no está asignado a ninguna categoría
  - Cuando los miembros ven la lista de canales del servidor
  - Entonces el canal se muestra fuera de cualquier agrupación, en una sección general.

### Reordenar canales

<!-- Status: Optativa -->

**Descripción**: Como **miembro con permisos de administración**, quiero **reordenar canales y categorías** para **priorizar los más relevantes en la lista**.

**Criterios de aceptación**

- CA 1: Reorden exitoso
  - Dado que un usuario con permisos arrastra un canal o categoría a una nueva posición
  - Cuando confirma el cambio
  - Entonces el nuevo orden se persiste y se refleja para todos los miembros.

- CA 2: Sin permisos
  - Dado que un usuario sin permisos de administración intenta reordenar canales
  - Cuando lo intenta
  - Entonces el sistema no se lo permite.

## Épica: Mensajería

### Enviar mensaje en un canal

<!-- Status: Obligatoria -->

**Descripción**: Como **miembro de un canal**, quiero **enviar mensajes de texto** para **comunicarme con el resto de la comunidad en tiempo real**.

**Criterios de aceptación**

- CA 1: Envío exitoso
  - Dado que un miembro con permisos escribe un mensaje válido en un canal
  - Cuando lo envía
  - Entonces el mensaje se entrega en tiempo real a todos los miembros conectados a ese canal.

- CA 2: Mensaje vacío
  - Dado que un miembro intenta enviar un mensaje sin contenido ni adjuntos (historia optativa)
  - Cuando lo intenta
  - Entonces el sistema no lo envía.

- CA 3: Sin permisos
  - Dado que un miembro no tiene permiso de enviar mensajes en un canal
  - Cuando lo intenta
  - Entonces el sistema no le permite escribir ahí.

- CA 4: Mensaje muy largo
  - Dado que un miembro escribe un mensaje que excede el largo máximo permitido
  - Cuando intenta enviarlo
  - Entonces el sistema indica el límite y no lo envía.

### Enviar mensaje directo (DM)

<!-- Status: Optativa -->

**Descripción**: Como **usuario**, quiero **enviar mensajes directos a otro usuario** para **tener conversaciones privadas fuera de los servidores**.

**Criterios de aceptación**

- CA 1: Envío exitoso
  - Dado que un usuario inicia o continúa una conversación directa con otro usuario
  - Cuando envía un mensaje
  - Entonces se entrega en tiempo real al destinatario si está conectado, o queda pendiente de lectura si no lo está.

- CA 2: Primer mensaje crea la conversación
  - Dado que dos usuarios nunca tuvieron una conversación directa
  - Cuando uno le envía un mensaje al otro por primera vez
  - Entonces se crea la conversación y queda disponible para ambos.

- CA 3: Bloqueo de usuario
  - Dado que un usuario bloqueó a otro
  - Cuando el usuario bloqueado intenta enviarle un mensaje directo
  - Entonces el sistema no lo entrega.

### Bloquear y desbloquear usuarios

<!-- Status: Optativa -->

**Descripción**: Como **usuario**, quiero **bloquear o desbloquear a otro usuario** para **controlar quién puede contactarme mediante mensajes directos y llamadas privadas**.

**Criterios de aceptación**

- CA 1: Bloqueo exitoso
  - Dado que un usuario selecciona a otro usuario que no está bloqueado
  - Cuando confirma el bloqueo
  - Entonces el usuario bloqueado no puede enviarle nuevos mensajes directos ni iniciar llamadas privadas.

- CA 2: Conversación previa conservada
  - Dado que dos usuarios tenían una conversación directa antes del bloqueo
  - Cuando uno bloquea al otro
  - Entonces el historial previo se conserva para ambos, pero no se permiten nuevos contactos desde el usuario bloqueado.

- CA 3: Desbloqueo exitoso
  - Dado que un usuario había bloqueado a otro
  - Cuando confirma el desbloqueo
  - Entonces ese usuario vuelve a poder enviarle mensajes directos e iniciar llamadas privadas.

### Editar mensaje

<!-- Status: Optativa -->

**Descripción**: Como **autor de un mensaje**, quiero **editarlo** para **corregir errores o actualizar su contenido**.

**Criterios de aceptación**

- CA 1: Edición exitosa
  - Dado que un usuario es autor de un mensaje
  - Cuando lo edita y guarda un nuevo contenido válido
  - Entonces el mensaje se actualiza para todos los miembros y queda marcado como editado.

- CA 2: Solo el autor puede editar
  - Dado que un usuario intenta editar un mensaje que no le pertenece
  - Cuando lo intenta
  - Entonces el sistema no se lo permite.

- CA 3: Edición propagada en tiempo real
  - Dado que un mensaje fue editado
  - Cuando otros miembros tienen el canal abierto
  - Entonces ven el contenido actualizado sin necesidad de recargar.

### Eliminar mensaje

<!-- Status: Optativa -->

**Descripción**: Como **autor de un mensaje o miembro con permisos de moderación**, quiero **eliminar un mensaje** para **retirarlo de la conversación**.

**Criterios de aceptación**

- CA 1: Eliminación por el autor
  - Dado que un usuario es autor de un mensaje
  - Cuando lo elimina
  - Entonces el mensaje deja de mostrarse para todos los miembros.

- CA 2: Eliminación por moderación
  - Dado que un usuario con permisos de gestión de mensajes elimina un mensaje ajeno
  - Cuando lo hace
  - Entonces el mensaje deja de mostrarse para todos los miembros.

- CA 3: Sin permisos
  - Dado que un usuario sin autoría ni permisos de moderación intenta eliminar un mensaje ajeno
  - Cuando lo intenta
  - Entonces el sistema no se lo permite.

### Historial y reconexión

<!-- Status: Obligatoria -->

**Descripción**: Como **miembro de un canal**, quiero **ver el historial de mensajes y no perder mensajes si me desconecto brevemente** para **mantener el contexto de la conversación**. Si el grupo implementa mensajes directos, el mismo comportamiento aplica también a esas conversaciones.

**Criterios de aceptación**

- CA 1: Carga de historial
  - Dado que un usuario abre un canal con mensajes previos
  - Cuando accede
  - Entonces ve los mensajes más recientes con opción de cargar mensajes anteriores mediante paginación.

- CA 2: Reconexión sin pérdida de mensajes
  - Dado que un usuario pierde la conexión en tiempo real por un período breve
  - Cuando se reconecta
  - Entonces recibe los mensajes que se enviaron durante la desconexión.

- CA 3: Orden cronológico
  - Dado que existen múltiples mensajes en un canal
  - Cuando un usuario ve el historial
  - Entonces los mensajes se muestran en orden cronológico.

### Menciones

<!-- Status: Optativa -->

**Descripción**: Como **miembro de un servidor**, quiero **mencionar a un usuario, un rol o a todo el servidor en un mensaje** para **llamar su atención específicamente**.

**Criterios de aceptación**

- CA 1: Mención a un usuario
  - Dado que un miembro menciona a otro usuario en un mensaje
  - Cuando lo envía
  - Entonces el usuario mencionado recibe una notificación destacada.

- CA 2: Mención a un rol
  - Dado que un miembro con permisos menciona a un rol
  - Cuando lo envía
  - Entonces todos los miembros con ese rol reciben una notificación destacada.

- CA 3: Mención a todo el servidor
  - Dado que un miembro con el permiso correspondiente menciona a todo el servidor (@everyone)
  - Cuando lo envía
  - Entonces todos los miembros del canal reciben una notificación destacada.

- CA 4: Mención sin permisos
  - Dado que un miembro sin el permiso de mencionar a todo el servidor intenta usar @everyone
  - Cuando lo intenta
  - Entonces el sistema no se lo permite o lo trata como texto plano.

### Adjuntar archivos en mensajes

<!-- Status: Optativa -->

**Descripción**: Como **miembro de un canal o conversación**, quiero **adjuntar imágenes o archivos a mis mensajes** para **compartir contenido más allá del texto**.

**Criterios de aceptación**

- CA 1: Adjunto exitoso
  - Dado que un usuario adjunta un archivo de un formato y tamaño permitido
  - Cuando envía el mensaje
  - Entonces el archivo se sube, se persiste su URL y se muestra junto al mensaje.

- CA 2: Formato no soportado
  - Dado que un usuario intenta adjuntar un archivo de un formato no permitido
  - Cuando lo intenta
  - Entonces el sistema lo rechaza con un error descriptivo.

- CA 3: Archivo demasiado grande
  - Dado que un usuario intenta adjuntar un archivo que excede el tamaño máximo permitido
  - Cuando lo intenta
  - Entonces el sistema lo rechaza con un error descriptivo.

### Reacciones con emoji

<!-- Status: Optativa -->

**Descripción**: Como **miembro de un canal**, quiero **reaccionar a un mensaje con un emoji** para **expresar una respuesta rápida sin escribir un mensaje nuevo**.

**Criterios de aceptación**

- CA 1: Reacción exitosa
  - Dado que un miembro con acceso al canal selecciona un emoji para reaccionar a un mensaje
  - Cuando confirma
  - Entonces la reacción se agrega y se muestra en tiempo real a todos los miembros del canal.

- CA 2: Quitar reacción propia
  - Dado que un miembro ya reaccionó a un mensaje con un emoji
  - Cuando vuelve a seleccionar ese mismo emoji
  - Entonces su reacción se retira.

- CA 3: Sin permisos
  - Dado que un miembro no tiene permiso de agregar reacciones en el canal
  - Cuando lo intenta
  - Entonces el sistema no se lo permite.

### Buscar mensajes

<!-- Status: Optativa -->

**Descripción**: Como **miembro de un servidor**, quiero **buscar mensajes por texto o autor** para **encontrar información específica sin scrollear todo el historial**.

**Criterios de aceptación**

- CA 1: Búsqueda por texto
  - Dado que un usuario ingresa un término de búsqueda
  - Cuando ejecuta la búsqueda
  - Entonces el sistema devuelve los mensajes que contienen ese término, dentro de los canales a los que tiene acceso.

- CA 2: Filtro por autor
  - Dado que un usuario filtra la búsqueda por un autor específico
  - Cuando ejecuta la búsqueda
  - Entonces los resultados se limitan a mensajes de ese autor.

- CA 3: Sin resultados
  - Dado que una búsqueda no encuentra mensajes coincidentes
  - Cuando se ejecuta
  - Entonces el sistema indica que no hay resultados.

## Épica: Canal de Voz

### Unirse a canal de voz de servidor

<!-- Status: Obligatoria -->

**Descripción**: Como **miembro de un servidor**, quiero **unirme a un canal de voz** para **participar de una conversación en vivo con otros miembros**.

**Criterios de aceptación**

- CA 1: Unión exitosa
  - Dado que un miembro con acceso a un canal de voz lo selecciona
  - Cuando confirma la unión
  - Entonces queda conectado y su audio empieza a transmitirse a los demás participantes.

- CA 2: Sin permisos
  - Dado que un miembro no tiene permiso de conexión sobre un canal de voz
  - Cuando intenta unirse
  - Entonces el sistema no se lo permite.

- CA 3: Cambio de canal de voz
  - Dado que un miembro ya está conectado a un canal de voz
  - Cuando se une a otro canal de voz del mismo servidor
  - Entonces se desconecta del primero y queda conectado al segundo.

### Salir de canal de voz

<!-- Status: Obligatoria -->

**Descripción**: Como **miembro conectado a un canal de voz**, quiero **salir de la conversación** para **dejar de participar cuando ya no la necesito**.

**Criterios de aceptación**

- CA 1: Salida exitosa
  - Dado que un miembro está conectado a un canal de voz
  - Cuando decide desconectarse
  - Entonces deja de transmitir y recibir audio, y los demás participantes ven que se desconectó.

- CA 2: Canal vacío
  - Dado que un miembro era el último participante de un canal de voz
  - Cuando se desconecta
  - Entonces el canal queda vacío y disponible para que otros se unan.

### Silenciar micrófono propio

<!-- Status: Obligatoria -->

**Descripción**: Como **miembro conectado a un canal de voz**, quiero **silenciar mi propio micrófono** para **dejar de transmitir audio sin desconectarme de la conversación**.

**Criterios de aceptación**

- CA 1: Silenciar micrófono
  - Dado que un miembro está conectado a un canal de voz con el micrófono activo
  - Cuando lo silencia
  - Entonces deja de transmitir audio y los demás participantes ven su estado como silenciado.

- CA 2: Reactivar micrófono
  - Dado que un miembro tiene su micrófono silenciado
  - Cuando lo reactiva
  - Entonces vuelve a transmitir audio normalmente.

### Ver participantes conectados

<!-- Status: Obligatoria -->

**Descripción**: Como **miembro de un servidor**, quiero **ver quiénes están conectados a cada canal de voz** para **saber si hay una conversación en curso antes de unirme**.

**Criterios de aceptación**

- CA 1: Listado de participantes
  - Dado que uno o más miembros están conectados a un canal de voz
  - Cuando otro miembro visualiza la lista de canales
  - Entonces ve los nombres de los participantes conectados a cada canal de voz al que tiene acceso.

- CA 2: Actualización en tiempo real
  - Dado que un miembro se une o se va de un canal de voz
  - Cuando otro miembro está viendo la lista de canales
  - Entonces el listado de participantes se actualiza sin necesidad de recargar.

### Iniciar y recibir llamada de voz privada

<!-- Status: Optativa -->

**Descripción**: Como **usuario**, quiero **iniciar una llamada de voz 1 a 1 desde una conversación directa** para **hablar en vivo con otro usuario sin depender de un servidor**.

**Criterios de aceptación**

- CA 1: Iniciar llamada
  - Dado que un usuario tiene una conversación directa abierta con otro usuario
  - Cuando inicia una llamada de voz
  - Entonces el otro usuario recibe una notificación de llamada entrante.

- CA 2: Aceptar llamada
  - Dado que un usuario recibe una llamada de voz entrante
  - Cuando la acepta
  - Entonces ambos usuarios quedan conectados y pueden transmitir y recibir audio.

- CA 3: Rechazar llamada
  - Dado que un usuario recibe una llamada de voz entrante
  - Cuando la rechaza o no responde
  - Entonces la llamada finaliza y quien la inició es notificado.

- CA 4: Finalizar llamada
  - Dado que dos usuarios están en una llamada de voz privada
  - Cuando alguno de los dos la corta
  - Entonces la llamada finaliza para ambos.

### Indicador de quién está hablando

<!-- Status: Optativa -->

**Descripción**: Como **miembro conectado a un canal de voz**, quiero **ver un indicador visual de quién está hablando** para **identificar fácilmente el origen del audio en conversaciones con varios participantes**.

**Criterios de aceptación**

- CA 1: Indicador de actividad de voz
  - Dado que un participante de un canal de voz está emitiendo audio
  - Cuando otro miembro observa la lista de participantes
  - Entonces ve resaltado visualmente a quién está hablando en ese momento.

### Silenciar a otro participante localmente

<!-- Status: Optativa -->

**Descripción**: Como **miembro conectado a un canal de voz**, quiero **silenciar localmente el audio de otro participante** para **dejar de escucharlo sin afectar lo que escuchan los demás**.

**Criterios de aceptación**

- CA 1: Silenciar localmente
  - Dado que un miembro está conectado a un canal de voz junto a otro participante
  - Cuando lo silencia localmente
  - Entonces deja de escuchar su audio, sin afectar la transmisión hacia el resto de los participantes.

- CA 2: Reactivar audio local
  - Dado que un miembro silenció localmente a otro participante
  - Cuando revierte esa acción
  - Entonces vuelve a escuchar su audio normalmente.

### Compartir pantalla

<!-- Status: Optativa -->

**Descripción**: Como **miembro conectado a un canal de voz**, quiero **compartir mi pantalla** para **mostrar contenido visual al resto de los participantes durante la conversación**.

**Criterios de aceptación**

- CA 1: Iniciar compartir pantalla
  - Dado que un miembro está conectado a un canal de voz
  - Cuando comienza a compartir su pantalla
  - Entonces los demás participantes pueden visualizarla en tiempo real.

- CA 2: Detener compartir pantalla
  - Dado que un miembro está compartiendo su pantalla
  - Cuando detiene el compartido
  - Entonces los demás participantes dejan de visualizarla.

### Video en llamada

<!-- Status: Optativa -->

**Descripción**: Como **miembro conectado a un canal de voz o a una llamada privada**, quiero **activar mi cámara** para **comunicarme también con video además de audio**.

**Criterios de aceptación**

- CA 1: Activar cámara
  - Dado que un miembro está conectado a un canal de voz o llamada privada
  - Cuando activa su cámara
  - Entonces los demás participantes ven su video en tiempo real.

- CA 2: Desactivar cámara
  - Dado que un miembro tiene su cámara activa
  - Cuando la desactiva
  - Entonces los demás participantes dejan de ver su video, pero el audio continúa sin interrupciones.

## Épica: Roles y Permisos

### Crear rol

<!-- Status: Obligatoria -->

**Descripción**: Como **miembro con permisos de administración**, quiero **crear un rol dentro de mi servidor** para **agrupar miembros bajo un mismo conjunto de permisos**.

**Criterios de aceptación**

- CA 1: Creación exitosa
  - Dado que un usuario con permisos completa un nombre para el nuevo rol
  - Cuando confirma la creación
  - Entonces el rol se crea con un conjunto de permisos por defecto, se ubica al final de la jerarquía de roles del servidor, y queda disponible para asignar a miembros.

- CA 2: Sin permisos
  - Dado que un usuario sin permisos de administración intenta crear un rol
  - Cuando lo intenta
  - Entonces el sistema no se lo permite.

### Editar permisos de un rol

<!-- Status: Obligatoria -->

**Descripción**: Como **miembro con permisos de administración**, quiero **editar los permisos de un rol** para **definir qué pueden y qué no pueden hacer los miembros que lo tienen**.

**Criterios de aceptación**

- CA 1: Edición exitosa
  - Dado que un usuario con permisos modifica los permisos habilitados de un rol existente
  - Cuando confirma los cambios
  - Entonces los nuevos permisos se aplican de inmediato a todos los miembros que tienen ese rol.

- CA 2: Rol con permisos de administración
  - Dado que un usuario con permisos intenta quitarle a su propio rol el permiso de administración
  - Cuando lo intenta
  - Entonces el sistema no se lo permite, para evitar que el servidor quede sin nadie que pueda administrarlo.

- CA 3: Sin permisos
  - Dado que un usuario sin permisos de administración intenta editar los permisos de un rol
  - Cuando lo intenta
  - Entonces el sistema no se lo permite.

### Asignar rol a un miembro

<!-- Status: Obligatoria -->

**Descripción**: Como **miembro con permisos de administración**, quiero **asignar uno o más roles a un miembro del servidor** para **otorgarle los permisos correspondientes**.

**Criterios de aceptación**

- CA 1: Asignación exitosa
  - Dado que un usuario con permisos selecciona un rol y un miembro del servidor
  - Cuando confirma la asignación
  - Entonces el miembro pasa a tener ese rol y los permisos asociados.

- CA 2: Quitar rol
  - Dado que un miembro tiene un rol asignado
  - Cuando un usuario con permisos se lo quita
  - Entonces el miembro deja de tener los permisos asociados a ese rol, salvo que los obtenga por otro rol.

- CA 3: Sin permisos
  - Dado que un usuario sin permisos de administración intenta asignar o quitar un rol
  - Cuando lo intenta
  - Entonces el sistema no se lo permite.

### Definir rol por defecto para nuevos miembros

<!-- Status: Obligatoria -->

**Descripción**: Como **miembro con permisos de administración**, quiero **definir qué rol reciben automáticamente los nuevos miembros** para **que cada persona que se une al servidor tenga un nivel de acceso base sin intervención manual**.

**Criterios de aceptación**

- CA 1: Asignación automática
  - Dado que un servidor tiene configurado un rol por defecto
  - Cuando un nuevo miembro se une al servidor
  - Entonces recibe automáticamente ese rol junto con los permisos asociados.

- CA 2: Rol por defecto no eliminable
  - Dado que un usuario con permisos intenta eliminar el rol (historia optativa) configurado como rol por defecto
  - Cuando lo intenta
  - Entonces el sistema no se lo permite hasta que se configure otro rol por defecto en su lugar.

### Eliminar rol

<!-- Status: Optativa -->

**Descripción**: Como **miembro con permisos de administración**, quiero **eliminar un rol** para **cuando ya no tenga sentido mantenerlo en el servidor**.

**Criterios de aceptación**

- CA 1: Eliminación exitosa
  - Dado que un usuario con permisos confirma la eliminación de un rol
  - Cuando se ejecuta la acción
  - Entonces el rol se elimina y los miembros que lo tenían dejan de contar con los permisos que ese rol otorgaba.

- CA 2: Sin permisos
  - Dado que un usuario sin permisos de administración intenta eliminar un rol
  - Cuando lo intenta
  - Entonces el sistema no se lo permite.

### Reordenar jerarquía de roles

<!-- Status: Optativa -->

**Descripción**: Como **miembro con permisos de administración**, quiero **definir el orden jerárquico de los roles de mi servidor** para **resolver de forma predecible los conflictos entre permisos de distintos roles asignados a un mismo miembro**.

**Criterios de aceptación**

- CA 1: Reordenamiento exitoso
  - Dado que un usuario con permisos cambia la posición de un rol dentro de la jerarquía
  - Cuando confirma el cambio
  - Entonces el nuevo orden se aplica y se usa para resolver conflictos de permisos entre roles.

- CA 2: Restricción sobre roles superiores
  - Dado que un usuario con permisos intenta reordenar un rol que está por encima del propio en la jerarquía
  - Cuando lo intenta
  - Entonces el sistema no se lo permite.

### Sobrescribir permisos de un rol en un canal específico

<!-- Status: Optativa -->

**Descripción**: Como **miembro con permisos de administración**, quiero **sobrescribir los permisos de un rol para un canal en particular** para **ajustar el acceso a ese canal sin afectar el resto del servidor**.

**Criterios de aceptación**

- CA 1: Sobrescritura exitosa
  - Dado que un usuario con permisos define una excepción de permisos para un rol en un canal específico
  - Cuando confirma el cambio
  - Entonces esa excepción se aplica únicamente en ese canal, sin modificar los permisos generales del rol en el resto del servidor.

- CA 2: Sin permisos
  - Dado que un usuario sin permisos de administración intenta sobrescribir permisos de un canal
  - Cuando lo intenta
  - Entonces el sistema no se lo permite.

### Ver miembros por rol

<!-- Status: Optativa -->

**Descripción**: Como **miembro con permisos de administración**, quiero **ver el listado de miembros que tienen un rol determinado** para **auditar quién tiene acceso a qué dentro del servidor**.

**Criterios de aceptación**

- CA 1: Listado exitoso
  - Dado que un usuario con permisos selecciona un rol existente
  - Cuando consulta sus miembros
  - Entonces el sistema muestra el listado de todos los miembros que tienen ese rol asignado.

## Épica: Moderación

### Expulsar miembro del servidor

<!-- Status: Optativa -->

**Descripción**: Como **miembro con permisos de moderación**, quiero **expulsar a un miembro del servidor** para **removerlo cuando su comportamiento no es adecuado**.

**Criterios de aceptación**

- CA 1: Expulsión exitosa
  - Dado que un usuario con permisos de moderación confirma la expulsión de un miembro
  - Cuando se ejecuta la acción
  - Entonces el miembro pierde el acceso al servidor y a sus canales, pero puede volver a unirse con una nueva invitación.

- CA 2: Restricción por jerarquía
  - Dado que un usuario con permisos de moderación intenta expulsar a un miembro con un rol igual o superior en la jerarquía
  - Cuando lo intenta
  - Entonces el sistema no se lo permite.

- CA 3: Sin permisos
  - Dado que un usuario sin permisos de moderación intenta expulsar a un miembro
  - Cuando lo intenta
  - Entonces el sistema no se lo permite.

### Banear miembro del servidor

<!-- Status: Obligatoria -->

**Descripción**: Como **miembro con permisos de moderación**, quiero **banear a un miembro del servidor** para **impedir que vuelva a unirse mientras el baneo esté activo**.

**Criterios de aceptación**

- CA 1: Baneo exitoso
  - Dado que un usuario con permisos de moderación confirma el baneo de un miembro
  - Cuando se ejecuta la acción
  - Entonces el miembro pierde el acceso al servidor y no puede volver a unirse mediante ninguna invitación mientras el baneo esté activo.

- CA 2: Restricción por jerarquía
  - Dado que un usuario con permisos de moderación intenta banear a un miembro con un rol igual o superior en la jerarquía
  - Cuando lo intenta
  - Entonces el sistema no se lo permite.

- CA 3: Sin permisos
  - Dado que un usuario sin permisos de moderación intenta banear a un miembro
  - Cuando lo intenta
  - Entonces el sistema no se lo permite.

### Revocar baneo

<!-- Status: Obligatoria -->

**Descripción**: Como **miembro con permisos de moderación**, quiero **revocar el baneo de un usuario** para **permitirle volver a unirse al servidor**.

**Criterios de aceptación**

- CA 1: Revocación exitosa
  - Dado que un usuario con permisos de moderación revoca el baneo de un usuario baneado
  - Cuando se ejecuta la acción
  - Entonces ese usuario vuelve a poder unirse al servidor mediante una invitación válida.

- CA 2: Sin permisos
  - Dado que un usuario sin permisos de moderación intenta revocar un baneo
  - Cuando lo intenta
  - Entonces el sistema no se lo permite.

### Silenciar temporalmente a un miembro

<!-- Status: Optativa -->

**Descripción**: Como **miembro con permisos de moderación**, quiero **silenciar temporalmente a un miembro** para **impedirle enviar mensajes o hablar por voz durante un período determinado sin expulsarlo del servidor**.

**Criterios de aceptación**

- CA 1: Silenciamiento exitoso
  - Dado que un usuario con permisos de moderación define una duración y confirma el silenciamiento de un miembro
  - Cuando se ejecuta la acción
  - Entonces el miembro queda impedido de enviar mensajes y de hablar en canales de voz hasta que la duración expire.

- CA 2: Expiración automática
  - Dado que un miembro fue silenciado temporalmente
  - Cuando se cumple la duración definida
  - Entonces recupera automáticamente su capacidad de enviar mensajes y hablar por voz, sin intervención manual.

- CA 3: Levantar silenciamiento manualmente
  - Dado que un miembro está silenciado temporalmente
  - Cuando un usuario con permisos de moderación revierte la acción antes de que expire
  - Entonces el miembro recupera de inmediato su capacidad de enviar mensajes y hablar por voz.

### Ver registro de auditoría de moderación

<!-- Status: Optativa -->

**Descripción**: Como **miembro con permisos de moderación**, quiero **ver un registro de las acciones de moderación realizadas en el servidor** para **tener trazabilidad de quién tomó qué medida y cuándo**.

**Criterios de aceptación**

- CA 1: Consulta del registro
  - Dado que se realizaron acciones de moderación en un servidor
  - Cuando un usuario con permisos de moderación consulta el registro de auditoría
  - Entonces ve el listado de acciones con quién las ejecutó, sobre quién y en qué momento.

- CA 2: Sin permisos
  - Dado que un usuario sin permisos de moderación intenta acceder al registro de auditoría
  - Cuando lo intenta
  - Entonces el sistema no se lo permite.

### Reportar mensaje o usuario

<!-- Status: Optativa -->

**Descripción**: Como **miembro de un servidor**, quiero **reportar un mensaje o un usuario** para **alertar a los moderadores de un comportamiento inadecuado**.

**Criterios de aceptación**

- CA 1: Reporte exitoso
  - Dado que un miembro selecciona un mensaje o un usuario y describe el motivo del reporte
  - Cuando lo envía
  - Entonces los usuarios con permisos de moderación del servidor reciben el reporte para su revisión.

- CA 2: Reporte duplicado
  - Dado que un miembro ya reportó el mismo mensaje o usuario
  - Cuando intenta reportarlo nuevamente
  - Entonces el sistema le indica que ya existe un reporte pendiente de su parte sobre ese contenido.

### Filtro automático de palabras prohibidas

<!-- Status: Optativa -->

**Descripción**: Como **miembro con permisos de moderación**, quiero **definir una lista de palabras prohibidas en mi servidor** para **que los mensajes que las contengan sean bloqueados automáticamente**.

**Criterios de aceptación**

- CA 1: Bloqueo automático
  - Dado que un servidor tiene configurada una lista de palabras prohibidas
  - Cuando un miembro intenta enviar un mensaje que contiene alguna de esas palabras
  - Entonces el mensaje no se envía y se le informa al autor el motivo.

- CA 2: Actualizar lista de palabras
  - Dado que un usuario con permisos de moderación agrega o quita una palabra de la lista
  - Cuando confirma el cambio
  - Entonces la lista actualizada se aplica a los mensajes enviados a partir de ese momento.

## Épica: Notificaciones

### Ver notificaciones no leídas

<!-- Status: Obligatoria -->

**Descripción**: Como **usuario**, quiero **ver un indicador de notificaciones no leídas por canal y servidor** para **identificar rápidamente dónde hay actividad relevante que todavía no revisé**.

**Criterios de aceptación**

- CA 1: Indicador por canal
  - Dado que un canal tiene mensajes nuevos que el usuario no vio
  - Cuando el usuario mira la lista de canales
  - Entonces ve un indicador de no leído en ese canal.

- CA 2: Indicador por servidor
  - Dado que al menos un canal de un servidor tiene contenido no leído
  - Cuando el usuario mira la lista de servidores
  - Entonces ve un indicador de no leído en ese servidor.

- CA 3: Indicador destacado para menciones
  - Dado que un usuario tiene una mención (historia optativa) sin leer en un canal
  - Cuando mira la lista de canales o servidores
  - Entonces el indicador de ese canal se distingue visualmente del de actividad no leída sin mención.

### Marcar notificaciones como leídas

<!-- Status: Obligatoria -->

**Descripción**: Como **usuario**, quiero **marcar como leída la actividad de un canal** para **quitar su indicador de no leído**.

**Criterios de aceptación**

- CA 1: Marcado automático al abrir
  - Dado que un usuario tiene un canal con contenido no leído
  - Cuando abre ese canal y ve los mensajes nuevos
  - Entonces el indicador de no leído de ese canal desaparece.

- CA 2: Marcar todo como leído
  - Dado que un usuario tiene varios canales con contenido no leído
  - Cuando selecciona la opción de marcar todo como leído
  - Entonces todos los indicadores de no leído del usuario desaparecen.

### Silenciar notificaciones de un canal o servidor

<!-- Status: Optativa -->

**Descripción**: Como **usuario**, quiero **silenciar las notificaciones de un canal o de un servidor completo** para **dejar de recibir avisos de una conversación que no me interesa seguir de cerca**.

**Criterios de aceptación**

- CA 1: Silenciar canal
  - Dado que un usuario silencia un canal
  - Cuando llegan nuevos mensajes a ese canal
  - Entonces no genera notificación destacada, aunque sigue contando como actividad no leída.

- CA 2: Silenciar servidor
  - Dado que un usuario silencia un servidor completo
  - Cuando llegan nuevos mensajes a cualquier canal de ese servidor
  - Entonces ninguno genera notificación destacada.

- CA 3: Reactivar notificaciones
  - Dado que un usuario tiene un canal o servidor silenciado
  - Cuando revierte esa acción
  - Entonces vuelve a recibir notificaciones destacadas normalmente.

### Configurar preferencias de notificación

<!-- Status: Optativa -->

**Descripción**: Como **usuario**, quiero **elegir qué tipo de actividad me notifica un canal o servidor (todos los mensajes, solo menciones, o ninguno)** para **ajustar el nivel de aviso a lo que me interesa**.

**Criterios de aceptación**

- CA 1: Configuración por canal o servidor
  - Dado que un usuario selecciona una preferencia de notificación para un canal o servidor
  - Cuando la guarda
  - Entonces esa preferencia reemplaza el comportamiento por defecto para ese canal o servidor.

- CA 2: Prioridad de la configuración más específica
  - Dado que un usuario configuró una preferencia distinta para un canal y para el servidor al que pertenece
  - Cuando llega actividad a ese canal
  - Entonces se aplica la preferencia configurada para el canal, no la del servidor.

### Notificaciones push

<!-- Status: Optativa -->

**Descripción**: Como **usuario**, quiero **recibir notificaciones push en mi dispositivo** para **enterarme de actividad relevante aunque no tenga la aplicación abierta**.

**Criterios de aceptación**

- CA 1: Push por mención o mensaje directo
  - Dado que un usuario no tiene la aplicación abierta
  - Cuando recibe una mención o un mensaje directo
  - Entonces el sistema le envía una notificación push a su dispositivo, respetando sus preferencias de silenciado.

- CA 2: Desactivar notificaciones push
  - Dado que un usuario desactiva las notificaciones push desde su configuración
  - Cuando llega actividad que las generaría
  - Entonces no se envía ninguna notificación push, sin afectar los indicadores dentro de la aplicación.

### Centro de notificaciones con historial

<!-- Status: Optativa -->

**Descripción**: Como **usuario**, quiero **ver un historial de mis notificaciones recientes en un solo lugar** para **repasar actividad relevante sin tener que buscarla canal por canal**.

**Criterios de aceptación**

- CA 1: Listado de notificaciones recientes
  - Dado que un usuario tuvo menciones o mensajes directos en los últimos días
  - Cuando abre el centro de notificaciones
  - Entonces ve un listado cronológico de esa actividad, con acceso directo a cada conversación.

- CA 2: Historial vacío
  - Dado que un usuario no tuvo actividad relevante reciente
  - Cuando abre el centro de notificaciones
  - Entonces el sistema indica que no hay notificaciones para mostrar.

## Épica: Administración

### Suspender usuario a nivel plataforma

<!-- Status: Obligatoria -->

**Descripción**: Como **staff de la plataforma**, quiero **suspender la cuenta de un usuario** para **impedirle usar Discordia cuando su comportamiento viola los términos de la plataforma, más allá de un servidor puntual**.

**Criterios de aceptación**

- CA 1: Suspensión exitosa
  - Dado que un usuario del staff confirma la suspensión de una cuenta
  - Cuando se ejecuta la acción
  - Entonces el usuario suspendido no puede iniciar sesión y su perfil público (historia optativa) deja de estar disponible para el resto de los usuarios.

- CA 2: Sesiones activas invalidadas
  - Dado que un usuario suspendido tiene una sesión activa al momento de la suspensión
  - Cuando el sistema procesa la suspensión
  - Entonces esa sesión se invalida y el usuario es desconectado.

- CA 3: Sin permisos
  - Dado que un usuario sin rol de staff intenta suspender a otro usuario
  - Cuando lo intenta
  - Entonces el sistema no se lo permite.

### Reactivar usuario suspendido

<!-- Status: Obligatoria -->

**Descripción**: Como **staff de la plataforma**, quiero **reactivar la cuenta de un usuario suspendido** para **restituirle el acceso cuando corresponde**.

**Criterios de aceptación**

- CA 1: Reactivación exitosa
  - Dado que un usuario del staff confirma la reactivación de una cuenta suspendida
  - Cuando se ejecuta la acción
  - Entonces el usuario puede volver a iniciar sesión y su perfil vuelve a estar disponible para el resto de los usuarios.

- CA 2: Sin permisos
  - Dado que un usuario sin rol de staff intenta reactivar una cuenta suspendida
  - Cuando lo intenta
  - Entonces el sistema no se lo permite.

### Ver listado de servidores de la plataforma

<!-- Status: Obligatoria -->

**Descripción**: Como **staff de la plataforma**, quiero **ver un listado de todos los servidores existentes** para **tener visibilidad general de la actividad de la plataforma y localizar servidores puntuales**.

**Criterios de aceptación**

- CA 1: Listado exitoso
  - Dado que existen servidores creados en la plataforma
  - Cuando un usuario del staff consulta el listado
  - Entonces ve todos los servidores con su nombre, cantidad de miembros y fecha de creación.

- CA 2: Búsqueda de servidor
  - Dado que un usuario del staff busca un servidor por nombre
  - Cuando ejecuta la búsqueda
  - Entonces el listado se filtra a los servidores que coinciden.

### Eliminar servidor desde el backoffice

<!-- Status: Optativa -->

**Descripción**: Como **staff de la plataforma**, quiero **eliminar un servidor desde el backoffice** para **removerlo cuando incumple los términos de la plataforma, sin depender de sus administradores**.

**Criterios de aceptación**

- CA 1: Eliminación exitosa
  - Dado que un usuario del staff confirma la eliminación de un servidor
  - Cuando se ejecuta la acción
  - Entonces el servidor y todos sus canales, mensajes y roles se eliminan de forma permanente.

- CA 2: Sin permisos
  - Dado que un usuario sin rol de staff intenta eliminar un servidor desde el backoffice
  - Cuando lo intenta
  - Entonces el sistema no se lo permite.

### Ver listado de usuarios con filtros

<!-- Status: Obligatoria -->

**Descripción**: Como **staff de la plataforma**, quiero **ver un listado de usuarios con filtros de búsqueda** para **encontrar cuentas puntuales cuando investigo un reporte o una consulta**.

**Criterios de aceptación**

- CA 1: Búsqueda por email o nombre
  - Dado que un usuario del staff busca por email o nombre
  - Cuando ejecuta la búsqueda
  - Entonces el listado se filtra a los usuarios que coinciden.

- CA 2: Filtro por estado
  - Dado que un usuario del staff filtra el listado por estado (activo o suspendido)
  - Cuando aplica el filtro
  - Entonces el listado muestra únicamente los usuarios en ese estado.

### Suspender servidor completo

<!-- Status: Optativa -->

**Descripción**: Como **staff de la plataforma**, quiero **suspender un servidor sin eliminarlo** para **bloquear su actividad temporalmente mientras se investiga una denuncia, conservando su contenido**.

**Criterios de aceptación**

- CA 1: Suspensión exitosa
  - Dado que un usuario del staff confirma la suspensión de un servidor
  - Cuando se ejecuta la acción
  - Entonces ningún miembro puede acceder al servidor mientras la suspensión esté activa, pero su contenido se conserva.

- CA 2: Levantar suspensión
  - Dado que un servidor está suspendido
  - Cuando un usuario del staff revierte la suspensión
  - Entonces sus miembros recuperan el acceso normal.

### Ver expediente de investigación de usuario o servidor

<!-- Status: Optativa -->

**Descripción**: Como **staff de la plataforma**, quiero **consultar un expediente consolidado de un usuario o un servidor** para **investigar reportes y decidir medidas de moderación con contexto completo**.

El expediente reúne información de distintos servicios en una única vista, bajo la autorización de staff definida en los Requisitos No Funcionales. Se valora integrar el acceso directo desde un reporte al expediente de lo reportado, y poder suspender o eliminar desde el propio expediente.

**Criterios de aceptación**

- CA 1: Expediente de usuario
  - Dado que un usuario del staff selecciona un usuario
  - Cuando consulta su expediente
  - Entonces ve su estado de cuenta, fecha de registro, servidores a los que pertenece, actividad reciente, reportes recibidos y acciones de moderación aplicadas sobre él.

- CA 2: Expediente de servidor
  - Dado que un usuario del staff selecciona un servidor
  - Cuando consulta su expediente
  - Entonces ve su fecha de creación, cantidad de miembros, actividad de mensajería reciente, reportes y acciones de moderación del servidor.

- CA 3: Sin permisos
  - Dado que un usuario sin rol de staff intenta acceder a un expediente
  - Cuando lo intenta
  - Entonces el sistema no se lo permite.

## Épica: Métricas

### Ver métricas de actividad de un servidor

<!-- Status: Optativa -->

**Descripción**: Como **miembro con permisos de administración**, quiero **ver métricas de actividad de mi servidor** para **entender cómo lo está usando la comunidad**.

**Criterios de aceptación**

- CA 1: Métricas básicas
  - Dado que un usuario con permisos consulta las métricas de su servidor
  - Cuando selecciona un período de tiempo
  - Entonces ve la cantidad de miembros activos, mensajes enviados y nuevos miembros en ese período.

- CA 2: Servidor sin actividad
  - Dado que un servidor no tuvo actividad en el período seleccionado
  - Cuando un usuario con permisos consulta las métricas
  - Entonces el sistema indica que no hubo actividad, en lugar de mostrar un gráfico vacío sin contexto.

- CA 3: Sin permisos
  - Dado que un usuario sin permisos de administración intenta ver las métricas del servidor
  - Cuando lo intenta
  - Entonces el sistema no se lo permite.

### Ver métricas globales de la plataforma

<!-- Status: Optativa -->

**Descripción**: Como **staff de la plataforma**, quiero **ver métricas globales de uso de Discordia** para **entender el estado y la evolución de la plataforma en su conjunto**.

**Criterios de aceptación**

- CA 1: Métricas globales
  - Dado que un usuario del staff consulta las métricas de la plataforma
  - Cuando selecciona un período de tiempo
  - Entonces ve la cantidad de usuarios activos, servidores creados y mensajes enviados en ese período, agregados de todos los servidores.

- CA 2: Sin permisos
  - Dado que un usuario sin rol de staff intenta ver las métricas globales de la plataforma
  - Cuando lo intenta
  - Entonces el sistema no se lo permite.

### Gráfico de crecimiento de miembros

<!-- Status: Optativa -->

**Descripción**: Como **miembro con permisos de administración**, quiero **ver un gráfico de la evolución de miembros de mi servidor a lo largo del tiempo** para **identificar tendencias de crecimiento o caída**.

**Criterios de aceptación**

- CA 1: Gráfico de evolución
  - Dado que un servidor tuvo altas y bajas de miembros a lo largo del tiempo
  - Cuando un usuario con permisos consulta el gráfico de crecimiento
  - Entonces ve la cantidad de miembros del servidor día a día dentro del período seleccionado.

### Exportar métricas a CSV

<!-- Status: Optativa -->

**Descripción**: Como **miembro con permisos de administración**, quiero **exportar las métricas de mi servidor a un archivo CSV** para **analizarlas con otras herramientas fuera de la plataforma**.

**Criterios de aceptación**

- CA 1: Exportación exitosa
  - Dado que un usuario con permisos solicita exportar las métricas de un período
  - Cuando confirma la exportación
  - Entonces el sistema genera un archivo CSV descargable con los datos de ese período.

### Estado de la plataforma e incidentes

<!-- Status: Optativa -->

**Descripción**: Como **staff de la plataforma**, quiero **publicar el estado de la plataforma y gestionar incidentes (degradación o mantenimiento)** para **informar a los usuarios dentro de la aplicación cuando algo no funciona bien**.

Los servicios afectados deben corresponderse con los servicios que exponen health checks (ver Requisitos No Funcionales). Se valora positivamente que el backoffice sugiera crear un incidente cuando un servicio reporta degradación a través de sus health checks.

**Criterios de aceptación**

- CA 1: Publicar incidente
  - Dado que un usuario del staff publica un incidente con título, descripción y servicios afectados
  - Cuando lo confirma
  - Entonces los usuarios autenticados ven un aviso de estado en la aplicación mientras el incidente esté activo.

- CA 2: Resolver incidente
  - Dado que existe un incidente activo
  - Cuando un usuario del staff lo marca como resuelto
  - Entonces el aviso desaparece para todos los usuarios.

- CA 3: Consulta del estado
  - Dado que un usuario quiere conocer el estado de la plataforma
  - Cuando lo consulta
  - Entonces ve el estado actual (operativo, degradado o en mantenimiento) y los incidentes activos.

- CA 4: Sin permisos
  - Dado que un usuario sin rol de staff intenta publicar o resolver un incidente
  - Cuando lo intenta
  - Entonces el sistema no se lo permite.

## Épica: Monetización

### Gestionar emojis personalizados del servidor

<!-- Status: Optativa -->

**Descripción**: Como **miembro con permisos de administración**, quiero **cargar y eliminar emojis personalizados de mi servidor** para **que sus miembros puedan usarlos en mensajes y reacciones dentro de la capacidad disponible**.

**Criterios de aceptación**

- CA 1: Carga exitosa
  - Dado que un usuario con permisos selecciona una imagen PNG, WebP o GIF válida de hasta 5 MB y el servidor tiene capacidad disponible
  - Cuando confirma la carga con un nombre válido y no repetido
  - Entonces el emoji queda disponible para los miembros autorizados del servidor.

- CA 2: Archivo o capacidad inválidos
  - Dado que un usuario intenta cargar un formato no permitido, un archivo que supera el límite o un emoji cuando no quedan lugares disponibles
  - Cuando confirma la carga
  - Entonces el sistema rechaza la operación con un error descriptivo y no persiste el archivo.

- CA 3: Eliminación exitosa
  - Dado que un usuario con permisos selecciona un emoji personalizado existente
  - Cuando confirma su eliminación
  - Entonces el emoji deja de estar disponible para nuevos mensajes y reacciones sin alterar el contenido histórico.

- CA 4: Sin permisos
  - Dado que un miembro sin permisos de administración intenta cargar o eliminar un emoji personalizado
  - Cuando lo intenta
  - Entonces el sistema no se lo permite.

### Suscribirse a Plan Premium

<!-- Status: Optativa -->

**Descripción**: Como **usuario**, quiero **suscribirme al Plan Premium pagando una tarifa periódica** para **acceder a beneficios personales exclusivos**.

El Plan Premium otorga, mientras esté activo:
- Límite de adjuntos propio ampliado de 10 MB a 50 MB por archivo (el límite general está definido en Requisitos No Funcionales).
- Uso de emojis animados (GIF) en reacciones y mensajes.
- Uso de los emojis personalizados de cualquier servidor del que sea miembro, no solo los del servidor donde escribe.
- Insignia "Premium" visible en su perfil.

**Criterios de aceptación**

- CA 1: Suscripción exitosa
  - Dado que un usuario confirma el pago de la suscripción Premium
  - Cuando el pago se procesa correctamente
  - Entonces el plan queda activo y sus beneficios se habilitan de inmediato.

- CA 2: Pago rechazado
  - Dado que un usuario intenta suscribirse al Plan Premium
  - Cuando el pago es rechazado
  - Entonces la suscripción no se activa y el sistema informa el error.

- CA 3: Renovación automática
  - Dado que un usuario tiene el Plan Premium activo
  - Cuando llega la fecha de renovación y el pago se procesa correctamente
  - Entonces la suscripción se extiende por un nuevo período sin interrupción de beneficios.

- CA 4: Renovación fallida
  - Dado que un usuario tiene el Plan Premium activo
  - Cuando llega la fecha de renovación y el pago falla
  - Entonces la suscripción no se renueva y sus beneficios se desactivan.

### Cancelar suscripción Premium

<!-- Status: Optativa -->

**Descripción**: Como **usuario con Plan Premium activo**, quiero **cancelar mi suscripción** para **dejar de pagar la tarifa periódica cuando ya no me interesa mantenerla**.

**Criterios de aceptación**

- CA 1: Cancelación exitosa
  - Dado que un usuario con Plan Premium activo confirma la cancelación
  - Cuando se ejecuta la acción
  - Entonces la suscripción no se renueva en el próximo ciclo, pero los beneficios se mantienen activos hasta la fecha ya paga.

### Comprar puntos

<!-- Status: Optativa -->

**Descripción**: Como **usuario**, quiero **comprar un paquete de puntos con dinero real** para **tener saldo disponible para gastar en beneficios de la plataforma, como boostear un servidor**.

**Criterios de aceptación**

- CA 1: Compra exitosa
  - Dado que un usuario confirma la compra de un paquete de puntos
  - Cuando el pago se procesa correctamente
  - Entonces los puntos se acreditan de inmediato a su saldo.

- CA 2: Pago rechazado
  - Dado que un usuario intenta comprar un paquete de puntos
  - Cuando el pago es rechazado
  - Entonces no se acredita ningún punto y el sistema informa el error.

- CA 3: Ver saldo e historial
  - Dado que un usuario tiene compras de puntos realizadas
  - Cuando consulta su saldo
  - Entonces ve el total disponible y el historial de compras.

### Usar puntos para boostear un servidor

<!-- Status: Optativa -->

**Descripción**: Como **miembro de un servidor**, quiero **gastar puntos de mi saldo para boostear el servidor** para **contribuir a que alcance beneficios especiales para toda la comunidad**.

Los boosts de un servidor se acumulan de forma permanente (no expiran) y definen su nivel:
- **Nivel 1** (5 boosts acumulados): +20 slots de emojis personalizados para el servidor, ícono de servidor animado.
- **Nivel 2** (15 boosts acumulados): banner de servidor personalizado, límite de adjuntos del servidor ampliado a 25 MB por archivo para todos los miembros. Si un miembro además tiene Premium personal, se aplica el límite más alto entre ambos.
- **Nivel 3** (30 boosts acumulados): URL de invitación personalizada (vanity URL), insignia "Servidor Boosteado" visible para todos los miembros.

Un miembro puede boostear un mismo servidor más de una vez; cada boost es una unidad independiente, con su propio costo en puntos, que se descuenta y se retira por separado. El costo en puntos de un boost individual queda a criterio del grupo y debe documentarse.

**Criterios de aceptación**

- CA 1: Boost exitoso
  - Dado que un miembro con saldo suficiente confirma boostear un servidor
  - Cuando se ejecuta la acción
  - Entonces se descuentan los puntos de su saldo y se suman al contador de boosts del servidor de forma permanente.

- CA 2: Saldo insuficiente
  - Dado que un miembro no tiene saldo suficiente de puntos
  - Cuando intenta boostear un servidor
  - Entonces el sistema no se lo permite e informa el saldo faltante.

- CA 3: Servidor alcanza un nuevo nivel
  - Dado que un servidor acumula boosts hasta alcanzar el umbral de un nivel (5, 15 o 30)
  - Cuando se registra el boost que cumple ese umbral
  - Entonces el servidor sube a ese nivel y desbloquea sus beneficios para todos los miembros.

- CA 4: Retirar boost propio
  - Dado que un miembro boosteó un servidor
  - Cuando decide retirar su boost
  - Entonces se resta del contador de boosts del servidor, sin reembolso de los puntos gastados, y el servidor pierde el nivel si cae por debajo del umbral correspondiente.

### Ver beneficios de servidor boosteado

<!-- Status: Optativa -->

**Descripción**: Como **miembro de un servidor**, quiero **ver el nivel de boost del servidor y los beneficios que desbloquea** para **entender las ventajas que obtiene la comunidad y cuánto falta para el próximo nivel**.

**Criterios de aceptación**

- CA 1: Ver nivel y beneficios actuales
  - Dado que un servidor tiene un nivel de boost alcanzado
  - Cuando un miembro consulta su información
  - Entonces ve el nivel actual y el detalle de los beneficios desbloqueados.

- CA 2: Ver progreso al siguiente nivel
  - Dado que un servidor no alcanzó el umbral del siguiente nivel de boost
  - Cuando un miembro consulta su información
  - Entonces ve cuántos boosts tiene acumulados y cuántos faltan para el próximo nivel.

---

## Requisitos No Funcionales

**Red Lines**

Los siguientes incumplimientos **bloquean la evaluación** del proyecto y requieren corrección inmediata:

- **Pipeline de CI roto**: La rama principal debe estar en estado ejecutable en todo momento. Un CI en rojo que no se atiende en la sesión siguiente es un bloqueante.
- **Secretos en el código fuente o historial de Git**: Cualquier credencial, token o secret que aparezca en el repositorio (incluso en commits anteriores) requiere rotación inmediata y limpieza del historial.

### Componentes

La plataforma debe construirse como un conjunto de servicios con responsabilidades bien delimitadas y bases de datos independientes. La identificación de los dominios, la descomposición en servicios y los contratos entre ellos quedan a criterio del grupo y deben justificarse mediante decisiones de arquitectura documentadas. Se espera que el diseño garantice consistencia ante fallos parciales en los flujos que involucran múltiples servicios.

Cada grupo debe desarrollar:

- Un conjunto de **servicios backend**.
- Una **aplicación mobile**.
- Un **cliente web** para la aplicación.
- Un **backoffice web** para administración de la plataforma.
- Un **API Gateway** como punto único de entrada al sistema, que centralice el enrutamiento hacia los servicios backend, la validación de tokens de sesión y el rate limiting. Su diseño e implementación deben justificarse en un ADR. En caso excepcional de no adoptarlo, el grupo debe documentar el mecanismo alternativo con la misma rigurosidad y justificar la decisión.

**Tecnologías**

- Servicios backend: **lenguaje a elección del grupo**; se sugiere Python, Node.js o Go por ser los lenguajes donde la cátedra tiene más expertise para acompañar. Frameworks y bases de datos libres (se recomienda PostgreSQL y/o MongoDB). Se requiere que al menos dos microservicios estén implementados en lenguajes distintos entre sí. Se requiere además utilizar al menos dos tecnologías de base de datos distintas: una relacional (SQL) y una no relacional (NoSQL); la elección de qué tecnología usa cada servicio queda a criterio del grupo y debe justificarse en la documentación.
- Aplicación mobile: React Native (recomendado).
- Cliente web: React (recomendado).
- Backoffice web: React (recomendado).

De forma optativa, el grupo puede ofrecer además un cliente desktop, empaquetando el cliente web con Electron u otra tecnología equivalente.

La elección tecnológica debe quedar justificada en la documentación técnica del proyecto.

**Mensajería en tiempo real y Voz**

Discordia introduce dos requisitos de comunicación en tiempo real que no estaban presentes en cuatrimestres anteriores:

- **Mensajería**: la entrega de mensajes en canales debe ser en tiempo real (se recomienda WebSockets o un protocolo equivalente), con reconexión y entrega de mensajes perdidos durante una desconexión breve. Si el grupo implementa la historia optativa de mensajes directos, estas mismas propiedades aplican también a los DMs. La propagación de mensajes entre instancias del servicio de mensajería debe implementarse mediante un mecanismo de pub/sub (ej. Redis Pub/Sub, RabbitMQ, Kafka, NATS), de forma que el sistema funcione correctamente con múltiples instancias del servicio corriendo en paralelo. La tecnología concreta queda a criterio del grupo y debe justificarse en un ADR.
- **Canal de voz**: la implementación de voz real queda a elección del grupo (WebRTC gestionado como servicio — LiveKit, Daily.co, Agora — o un SFU propio como mediasoup). Dado que es la épica de mayor riesgo técnico del cuatrimestre, contará con acompañamiento reforzado del ayudante docente durante las weeklies. La decisión tecnológica debe documentarse en un ADR, incluyendo alternativas evaluadas y por qué se descartaron.

### UX

La experiencia de usuario es parte del producto. Antes de escribir código de interfaz, el equipo debe pensar cómo se ve, cómo se navega y por qué. Se espera:

- **Prototipado**: wireframes o mockups de los flujos principales (se recomienda Figma o equivalente), incluyendo la app mobile, el cliente web y el backoffice. Pueden apoyarse en herramientas como Stitch de Google o similares, y en sistemas de diseño ya probados.
- **Sistema de diseño**: elegir un sistema de diseño (ej. Material Design, Apple HIG u otro) y mantenerlo consistente en toda la interfaz.
- **Decisiones de UX**: cómo se comporta el usuario en la aplicación, cómo se ve y cómo se navega son decisiones creativas del equipo. Lo importante es que puedan explicar por qué tomaron esas decisiones.
- **Feedback temprano**: los prototipos deben presentarse en el Checkpoint 1. A partir de ahí, el diseño se itera en las weeklies con acompañamiento del ayudante.
- **Accesibilidad básica**: las interfaces deben contemplar contraste de color legible y tamaños de texto adecuados para uso en dispositivos móviles.

### Integridad y Flujo de Datos

Los flujos que involucran múltiples servicios deben garantizar consistencia ante fallos parciales. En particular:

- **Consistencia distribuida**: Si un flujo toca varios servicios y uno falla, los pasos anteriores no pueden quedar en un estado inconsistente. El grupo decide la estrategia y la documenta en un ADR. Por ejemplo, si el pago de un plan Premium o de puntos se confirma pero falla la activación del beneficio, el sistema debe revertir o compensar el cobro.
- **Idempotencia**: Las operaciones donde duplicar tiene consecuencias graves (cobrar dos veces, aplicar un boost dos veces, enviar un mensaje duplicado) deben ser idempotentes: si el mismo request llega dos veces, el resultado es el mismo sin repetir side effects. No todo necesita idempotencia explícita — un update de perfil ya es idempotente, un registro duplicado se resuelve con unique constraint. La clave explícita es para flujos donde el reintento es esperable y duplicar duele.
- **Manejo de errores distribuidos**: Los servicios deben diferenciar entre fallos transitorios (reintentar) y permanentes (compensar o notificar). No se acepta silenciar errores ni propagar estados inconsistentes. La definición concreta de qué constituye un fallo transitorio o permanente en cada flujo queda a criterio del grupo y debe acordarse con el corrector asignado.
- **Eventos y asincronía**: La comunicación *entre servicios* backend debe ser asíncrona (eventos/colas) por defecto, salvo que el flujo necesite una respuesta inmediata para completar la operación solicitada por el usuario (ej. login, crear un recurso que el cliente necesita referenciar de inmediato). Una llamada sincrónica entre dos servicios debe justificarse en un ADR. Por ejemplo: al banear a un miembro, la desconexión de sus sesiones activas en Mensajería/Voz y el registro en Auditoría se esperan como reacciones asíncronas a un evento de moderación, no como llamadas sincrónicas encadenadas. Los consumidores de eventos deben ser idempotentes y el sistema debe manejar mensajes duplicados o fuera de orden.
- **Resiliencia en la comunicación entre servicios**: Las llamadas entre servicios deben contemplar estrategias ante fallos transitorios. Se recomienda aplicar patrones como Retry (con backoff exponencial) y Circuit Breaker para evitar cascadas de fallo. La elección y justificación de estos patrones debe quedar documentada en los ADRs correspondientes.
- **Resiliencia en la capa de presentación**: La aplicación mobile, el cliente web y el backoffice deben manejar explícitamente los estados de error y latencia: indicadores de carga, mensajes de error accionables ante fallos de red, y comportamiento coherente ante respuestas parciales o timeout del backend. No se acepta que un fallo de red deje la interfaz en un estado inconsistente o sin feedback al usuario.

### Testing

El desarrollo debe incluir:

- **Pruebas unitarias** por servicio.
- **Pruebas de integración** entre servicios core.
- **Contratos de API** entre servicios definidos con OpenAPI/Swagger como fuente de verdad para la comunicación. Se valora positivamente la verificación automatizada de estos contratos (ej: Pact, Schemathesis, Dredd).
- **Pruebas de carga y estrés**: ejecutar al menos un escenario de carga simulando usuarios concurrentes sobre los endpoints críticos, incluyendo la entrega de mensajes en tiempo real. Documentar los resultados, cuellos de botella identificados y acciones tomadas (se recomienda k6 o Artillery).
- Cobertura de tests de al menos **70%** en los servicios backend.
- **Mutation Testing (opcional)**: ejecutar un análisis de mutación sobre al menos un servicio core, para medir la calidad real de la suite de tests más allá del porcentaje de cobertura (ej. mutmut para Python, Stryker para JS/TS, PIT para Java). Se espera reportar el mutation score obtenido y un breve análisis de los mutantes sobrevivientes no triviales. No es necesario integrarlo al pipeline de CI en cada push, dado su costo de tiempo de ejecución — alcanza con correrlo puntualmente y documentar el resultado.

### Gestión de Ingeniería

- **Trazabilidad backlog-repositorio**: Cada pull request debe referenciar la historia o tarea que lo origina. Se esperan mensajes de commit descriptivos; no se exige un formato estricto ni referencia a tickets en cada commit individual, pero no se aceptan commits genéricos sin contexto ("fix", "changes", "wip").
- **Atomicidad en Git**: Cada pull request debe representar un cambio lógico coherente. No deben mezclarse features no relacionadas en un mismo PR.
- **Uso de herramientas de IA**: Se espera que los equipos utilicen herramientas de asistencia con IA como parte natural del desarrollo. Lo que se evalúa no es si se usó IA, sino la calidad de la dirección: evidencia de flujos estructurados de trabajo con IA (ej.`AGENTS.md`, `.agents/skills` o equivalentes), y **capacidad de cada integrante de explicar y defender cualquier parte del código en la defensa del proyecto**. Las decisiones de arquitectura deben ser del equipo, no defaults aceptados sin criterio; los ADRs deben reflejar alternativas evaluadas. El equipo es responsable final del código independientemente de la herramienta que lo produjo.
- **Backlog actualizado**: El backlog debe reflejar el estado real del proyecto en cada sesión de seguimiento. Deben existir tareas explícitas para trabajo de infraestructura, testing e integración, no solo para funcionalidades de negocio.

### Despliegue en la Nube

Los servicios deben desplegarse en la nube utilizando una **plataforma como servicio (PaaS)**, o un **orquestador de contenedores gestionado** o directamente un **cloud provider** para grupos que prefieran mayor control de infraestructura. La elección queda a criterio del grupo y debe estar documentada y justificada en un ADR.

Se debe elegir una alternativa que cuente con un plan gratuito o de bajo costo vigente. Para un análisis detallado de las opciones disponibles (proveedores, free tiers, stacks recomendados y consejos de presupuesto), consultar la **[Guía de cátedra: Cloud Computing](https://ingenieria-del-software-2.github.io/blog/2025-09-11-cloud-computing/)**.

Se debe garantizar que el entorno de producción sea reproducible y que el despliegue ocurra de forma automatizada desde el pipeline de CI/CD.

Si el grupo opta por un SFU propio para el canal de voz, debe además resolver y documentar la infraestructura adicional que eso implica (servidores TURN/STUN, exposición de puertos UDP, escalado del media server).

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

- Avatares de usuario e íconos de servidor: JPEG, PNG o WebP, hasta 5 MB.
- Adjuntos en mensajes (imágenes/archivos): JPEG, PNG, WebP o PDF, hasta 10 MB por archivo.
- Emojis personalizados y animados: PNG, WebP o GIF, hasta 5 MB por archivo.

Otros formatos deben rechazarse con un error descriptivo. Las URLs deben ser públicamente accesibles. Se recomienda limpiar archivos huérfanos al reemplazar o eliminar media.

### Observabilidad

**Monitoreo**

Cada servicio debe exponer dos endpoints con semántica diferenciada:

- **`/livez`**: valida que el proceso está vivo. Solo verificaciones locales (ej: el servidor HTTP responde). No debe consultar base de datos ni servicios externos.
- **`/readyz`**: valida que el servicio puede operar correctamente. Debe verificar dependencias críticas (ej: base de datos). Un servicio que responde HTTP pero no puede cumplir su funcionalidad principal no es ready.

**`/livez` y `/readyz` no son equivalentes**: no deben compartir lógica. Un endpoint que responde `200 OK` sin validar lo que corresponde a su semántica no cumple. No usar un único `/health` genérico.

**Cada servicio debe contar además con un sistema de observabilidad** (APM o equivalente) para supervisar su estado operativo y facilitar el diagnóstico de fallas. Se valora incorporar **trazabilidad distribuida** con un trace/correlation ID propagado entre servicios, incluyendo las conexiones de mensajería en tiempo real.

**Logs**

Cada servicio debe contar con log estructurado con niveles configurables:

- **Error**: falla que impide ejecutar la funcionalidad.
- **Warn**: condición anómala que no impide la funcionalidad básica.
- **Info**: acción iniciada por el usuario o el sistema, trazable en el historial.
- **Debug**: contexto técnico para diagnóstico sin necesidad del código fuente.

### Seguridad

- Las contraseñas deben almacenarse hasheadas (BCrypt o equivalente).
- Los secretos y credenciales no deben estar en el código fuente; deben gestionarse mediante variables de entorno o un sistema de secretos.
- **Protección de datos personales**: Los datos sensibles de los usuarios (email, mensajes privados, historial de pagos) solo deben recolectarse si son estrictamente necesarios para la funcionalidad. No deben exponerse en logs, respuestas de error ni endpoints no autorizados. El acceso a datos de otros usuarios debe estar controlado por autorización explícita en cada operación, incluyendo mensajes directos y canales privados.
- **Minimización de datos en APIs**: Las respuestas de la API no deben incluir campos innecesarios. En particular, nunca deben retornarse contraseñas, tokens internos ni datos privados de otros usuarios, aunque estén disponibles en la base de datos.

**Lineamientos técnicos de autenticación**

- **Tokens de sesión**: Se recomienda el uso de JWT con tiempo de expiración configurable. El token debe incluir el identificador de usuario y el rol.
- **Tokens de recupero**: Deben generarse con al menos 128 bits de entropía (ej. UUID v4 o equivalente), almacenarse hasheados en la base de datos y expirar en máximo 1 hora.
- **Contraseñas**: Deben cumplir mínimo 8 caracteres e incluir al menos una mayúscula, una minúscula y un número. El almacenamiento debe usar BCrypt u otro algoritmo de hashing adaptativo.
- **Refresh de sesión**: Se debe soportar renovación de token sin requerir re-autenticación mientras la sesión sea válida.
- **Rate limiting**: Los endpoints de login y recupero deben tener límite de intentos por IP y por cuenta.
- **Autorización para unirse a un canal**: El acceso a un canal (texto o voz) de un servidor debe validarse contra los roles/permisos del usuario en ese servidor antes de admitir la conexión. El acceso a una llamada de voz privada debe validarse contra los participantes de esa conversación directa. Ambos casos incluyen la negociación de la sesión de voz.
- **Rol de staff de la plataforma**: es un rol global, independiente de los roles definidos dentro de cada servidor (épica Roles y Permisos). No existe una historia para auto-asignarse este rol: el grupo debe proveer un mecanismo para otorgarlo a al menos un usuario por fuera de la interfaz normal (ej. seed script, variable de entorno, flag en base de datos), de forma que el corrector pueda acceder al backoffice durante la evaluación.

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

| Instancia    | Duración aprox. | Fecha         |
| ------------ | --------------- | ------------- |
| Checkpoint 0 | —               | Viernes 04/09 |
| Checkpoint 1 | 3–4 semanas     | Viernes 25/09 |
| Checkpoint 2 | 3–4 semanas     | Viernes 23/10 |
| Checkpoint 3 | 3–4 semanas     | Viernes 13/11 |
| Entrega      | —               | Viernes 04/12 |

_El alcance específico de cada checkpoint se acuerda con el corrector asignado al inicio de cada período._

**Al finalizar el trabajo**, el grupo debe haber implementado:

- **Todas las historias obligatorias** (ver [Historias obligatorias](#historias-obligatorias)), cumpliendo sus criterios de aceptación.
- **Todos los Requisitos No Funcionales** definidos en este documento.
- **Un mínimo de puntos en historias optativas** según la cantidad de integrantes del grupo (ver [Historias optativas](#historias-optativas)).

---

## Historias obligatorias

Este catálogo define el alcance funcional obligatorio. Los puntos expresan complejidad relativa con escala Fibonacci y contemplan la implementación de las historias de usuario final en la aplicación mobile y el cliente web, y las historias de staff en el backoffice.

Los puntos no reemplazan los Requisitos No Funcionales: todos los RNF del enunciado, incluidos los tres clientes, forman parte obligatoria de la entrega y fueron considerados al calibrar este núcleo.

| #  | Historia                                      | Épica            | Puntos | Motivo de obligatoriedad                              |
| -- | ---------------------------------------------- | ---------------- | -----: | ----------------------------------------------------- |
| 1  | Registro de usuarios                          | Usuarios         |      3 | Identidad base del sistema                            |
| 2  | Login con email y contraseña                 | Usuarios         |      2 | Acceso, cierre de sesión y continuidad de la sesión   |
| 3  | Recupero de contraseña                       | Usuarios         |      3 | Recuperación segura, no enumeración y rate limiting   |
| 4  | Edición de perfil                            | Perfil           |      2 | Gestión de la identidad visible                       |
| 5  | Visualización de perfil propio               | Perfil           |      1 | Acceso a los datos y preferencias propios             |
| 6  | Crear servidor                               | Servidores       |      3 | Entrada al flujo central de comunidades               |
| 7  | Generar invitación                           | Servidores       |      5 | Ingreso con expiración, límite de usos y revocación   |
| 8  | Unirse a servidor vía invitación             | Servidores       |      3 | Crecimiento y membresía de comunidades                |
| 9  | Abandonar servidor                           | Servidores       |      2 | Control del usuario sobre su membresía                |
| 10 | Transferir propiedad del servidor            | Servidores       |      3 | Salida coherente del owner y continuidad del servidor |
| 11 | Crear canal                                  | Canales          |      3 | Organización mínima del servidor                      |
| 12 | Editar canal                                 | Canales          |      2 | Gestión del espacio de comunicación                   |
| 13 | Eliminar canal                               | Canales          |      2 | Ciclo de vida completo de canales                     |
| 14 | Organizar canales en categorías              | Canales          |      3 | Navegación de servidores con múltiples canales        |
| 15 | Enviar mensaje en un canal                   | Mensajería       |      8 | Comunicación central en tiempo real y multiinstancia  |
| 16 | Historial y reconexión                       | Mensajería       |     13 | Persistencia, paginación y recuperación sin pérdidas  |
| 17 | Unirse a canal de voz de servidor            | Canal de Voz     |     11 | Riesgo técnico principal y comunicación de voz real   |
| 18 | Salir de canal de voz                        | Canal de Voz     |      1 | Ciclo básico de una sesión de voz                     |
| 19 | Silenciar micrófono propio                   | Canal de Voz     |      1 | Control mínimo durante una sesión                     |
| 20 | Ver participantes conectados                 | Canal de Voz     |      3 | Presencia sincronizada en la sesión                   |
| 21 | Crear rol                                    | Roles y Permisos |      3 | Base del modelo de autorización del servidor          |
| 22 | Editar permisos de un rol                    | Roles y Permisos |      5 | Autorización efectiva y consistente                   |
| 23 | Asignar rol a un miembro                     | Roles y Permisos |      3 | Aplicación del modelo de permisos                     |
| 24 | Definir rol por defecto para nuevos miembros | Roles y Permisos |      2 | Permisos seguros desde el ingreso                     |
| 25 | Banear miembro del servidor                  | Moderación       |      3 | Prevención de reingreso de usuarios abusivos          |
| 26 | Revocar baneo                                | Moderación       |      2 | Reversibilidad de las decisiones de moderación        |
| 27 | Ver notificaciones no leídas                 | Notificaciones   |      3 | Seguimiento de actividad relevante                    |
| 28 | Marcar notificaciones como leídas            | Notificaciones   |      1 | Gestión del estado de lectura                         |
| 29 | Suspender usuario a nivel plataforma         | Administración   |      3 | Control global de abuso y revocación de sesiones      |
| 30 | Reactivar usuario suspendido                 | Administración   |      1 | Reversibilidad de la suspensión                       |
| 31 | Ver listado de usuarios con filtros          | Administración   |      2 | Entrada operativa para gestionar cuentas              |
| 32 | Ver listado de servidores de la plataforma   | Administración   |      2 | Visibilidad operativa del backoffice                  |

**Puntaje total obligatorio: 104 pts.**

---

## Historias optativas

Este catálogo define el alcance funcional optativo. Cada historia tiene puntos de complejidad relativa en escala Fibonacci. El grupo puede elegir libremente las historias que le resulten más convenientes, siempre que alcance el mínimo correspondiente según su tamaño y respete todas las dependencias.

Salvo que una historia indique expresamente una plataforma particular, las optativas de usuario final seleccionadas deben implementarse tanto en la aplicación mobile como en el cliente web. Las optativas de staff deben implementarse en el backoffice. Cualquier excepción debe acordarse con el corrector al comprometer el alcance y quedar registrada en el backlog.

| #  | Historia                                              | Épica            | Puntos | Dependencias |
| -- | ----------------------------------------------------- | ---------------- | -----: | ------------ |
| 33 | Login con proveedor federado                         | Usuarios         |      5 | Login con email y contraseña |
| 34 | Registro con PIN                                     | Usuarios         |      2 | Registro de usuarios y aplicación mobile |
| 35 | Autenticación de dos factores (2FA)                   | Usuarios         |      5 | Login con email y contraseña |
| 36 | Visualización de perfil público                      | Perfil           |      2 | Visualización de perfil propio |
| 37 | Estado de actividad                                  | Perfil           |      5 | Mensajería en tiempo real y sesiones autenticadas |
| 38 | Estado personalizado                                 | Perfil           |      2 | Edición de perfil |
| 39 | Administrar configuración del servidor               | Servidores       |      3 | Crear servidor |
| 40 | Eliminar servidor                                    | Servidores       |      5 | Administrar configuración del servidor |
| 41 | Reordenar canales                                    | Canales          |      2 | Organizar canales en categorías |
| 42 | Enviar mensaje directo (DM)                          | Mensajería       |      8 | Bloquear y desbloquear usuarios; sesiones e historial de mensajería |
| 43 | Bloquear y desbloquear usuarios                      | Mensajería       |      3 | Usuarios; complementa mensajes directos |
| 44 | Editar mensaje                                       | Mensajería       |      3 | Enviar mensaje en un canal o DM |
| 45 | Eliminar mensaje                                     | Mensajería       |      3 | Enviar mensaje en un canal o DM |
| 46 | Menciones                                            | Mensajería       |      5 | Mensajería, roles y notificaciones |
| 47 | Adjuntar archivos en mensajes                        | Mensajería       |      5 | Mensajería y almacenamiento externo de objetos |
| 48 | Reacciones con emoji                                 | Mensajería       |      3 | Enviar mensaje en un canal |
| 49 | Buscar mensajes                                      | Mensajería       |      5 | Historial y reconexión; autorización por canal o DM |
| 50 | Iniciar y recibir llamada de voz privada             | Canal de Voz     |     13 | Mensajes directos y flujo de voz operativo |
| 51 | Indicador de quién está hablando                     | Canal de Voz     |      3 | Unirse a canal de voz de servidor |
| 52 | Silenciar a otro participante localmente             | Canal de Voz     |      2 | Unirse a canal de voz de servidor |
| 53 | Compartir pantalla                                   | Canal de Voz     |      8 | Flujo de voz operativo |
| 54 | Video en llamada                                     | Canal de Voz     |      8 | Flujo de voz operativo |
| 55 | Eliminar rol                                         | Roles y Permisos |      3 | Crear, asignar y editar roles |
| 56 | Reordenar jerarquía de roles                         | Roles y Permisos |      3 | Crear rol y asignar rol a un miembro |
| 57 | Sobrescribir permisos de un rol en un canal específico | Roles y Permisos |    5 | Editar permisos de un rol y gestión de canales |
| 58 | Ver miembros por rol                                 | Roles y Permisos |      2 | Asignar rol a un miembro |
| 59 | Expulsar miembro del servidor                        | Moderación       |      3 | Roles y membresía del servidor |
| 60 | Silenciar temporalmente a un miembro                 | Moderación       |      5 | Roles, mensajería y voz |
| 61 | Ver registro de auditoría de moderación              | Moderación       |      3 | Acciones de moderación |
| 62 | Reportar mensaje o usuario                           | Moderación       |      5 | Mensajería y backoffice |
| 63 | Filtro automático de palabras prohibidas            | Moderación       |      3 | Enviar mensaje en un canal |
| 64 | Silenciar notificaciones de un canal o servidor      | Notificaciones   |      3 | Notificaciones obligatorias |
| 65 | Configurar preferencias de notificación             | Notificaciones   |      3 | Notificaciones obligatorias |
| 66 | Notificaciones push                                  | Notificaciones   |      5 | Configurar preferencias y aplicación mobile |
| 67 | Centro de notificaciones con historial               | Notificaciones   |      5 | Notificaciones obligatorias |
| 68 | Eliminar servidor desde el backoffice                | Administración   |      5 | Listado de servidores y eliminación en cascada |
| 69 | Suspender servidor completo                          | Administración   |      5 | Listado de servidores de la plataforma |
| 70 | Ver métricas de actividad de un servidor             | Métricas         |      5 | Eventos de membresía y mensajería |
| 71 | Ver métricas globales de la plataforma               | Métricas         |      5 | Eventos globales y acceso de staff |
| 72 | Gráfico de crecimiento de miembros                   | Métricas         |      3 | Métricas de actividad de un servidor |
| 73 | Exportar métricas a CSV                              | Métricas         |      3 | Métricas de servidor o globales |
| 74 | Estado de la plataforma e incidentes                 | Métricas         |      5 | Backoffice y health checks de los RNF |
| 75 | Gestionar emojis personalizados del servidor         | Monetización     |      5 | Administración del servidor y almacenamiento de objetos |
| 76 | Suscribirse a Plan Premium                           | Monetización     |     13 | Adjuntos, perfil, reacciones, emojis y pagos externos |
| 77 | Cancelar suscripción Premium                         | Monetización     |      3 | Suscribirse a Plan Premium |
| 78 | Comprar puntos                                       | Monetización     |      8 | Integración con pagos externos |
| 79 | Usar puntos para boostear un servidor                | Monetización     |     13 | Comprar puntos y membresía de servidor |
| 80 | Ver beneficios de servidor boosteado                 | Monetización     |      3 | Usar puntos para boostear y gestionar emojis |
| 81 | Ver expediente de investigación de usuario o servidor | Administración   |      5 | Reportar mensaje o usuario |

**Puntaje optativo disponible: 229 pts.**

---

## Mínimo de puntos por tamaño de equipo

| Integrantes | Mínimo optativas | % del pool optativo | Total mínimo |
| :---------: | :--------------: | :-----------------: | :----------: |
| 4           | 48 pts           | 21,0%               | 152 pts      |
| 5           | 80 pts           | 34,9%               | 184 pts      |
| 6           | 112 pts          | 48,9%               | 216 pts      |

El total mínimo considera los 104 puntos obligatorios. Los RNF completos, la aplicación mobile, el cliente web de usuario final y el backoffice también son obligatorios y no otorgan puntos adicionales.

