---

title: "20252C - Melodia"
subtitle: "Grupal"
---

# Melodia

Descubrí más. Escuchá mejor.

<img width="1260" height="763" alt="melodia-banner" src="https://github.com/user-attachments/assets/6e0887ca-ed38-4583-8114-e865b46fe6ba" />


## Descripción

Melodia no es solo un botón de play: ordena el caos infinito de música y lo convierte en algo simple. Canciones, colecciones y playlists aparecen justo donde tienen que estar, con un catálogo que se acomoda como si te conociera desde siempre. No hace falta rebuscar demasiado: lo que más te atrapa llega primero, lo nuevo se asoma en el momento justo y lo clásico siempre queda a mano. Todo se guarda, todo se comparte fácil, y siempre hay lugar para sorpresas que te cambien las vibras.

## Índice

### 1. Usuarios

Creación de usuarios básica, tanto para oyentes como artistas.

- [Registro de usuarios](#registro-de-usuarios)
- [Login con email y contraseña](#login-con-email-y-contraseña)
- [Login con proveedor federado](#login-con-proveedor-federado)
- [Recuperación de contraseña](#recuperación-de-contraseña)

### 2. Perfil

Visualización de perfil propio o de otros usuarios de la plataforma.

- [Edición de perfil](#edición-de-perfil)
- [Visualización de perfil propio](#visualización-de-perfil-propio)
- [Visualización de perfil de otros usuarios](#visualización-de-perfil-de-otros-usuarios)

### 3. Artistas

Vista de detalle del artista, incluyendo su información, contenido multimedia y catálogo de música. Subida de contenido como artista, manejo de su estado de publicación.

- [Perfil del artista](#perfil-del-artista)
- [Discografía](#discografía)
- [Colaboraciones (Aparece en)](#colaboraciones-aparece-en)
- [Popular (Top del artista)](#popular-top-del-artista)
- [Artistas relacionados (Similares a)](#artistas-relacionados-similares-a)
- [Gestión de perfil del artista](#gestión-de-perfil-del-artista)
- [Publicación de lanzamientos](#publicación-de-lanzamientos)
- [Disponibilidad por ventana](#disponibilidad-por-ventana)
- [Autocompletar metadatos (Fast Complete) [IA]](#autocompletar-metadatos-fast-complete-ia)

### 4. Administración de Contenido

Creación y administración de contenido para los artistas: subida de canciones, edición de metadatos.

- [Catálogo — Explorar y buscar contenido](#catálogo--explorar-y-buscar-contenido)
- [Catálogo — Detalle y trazabilidad](#catálogo--detalle-y-trazabilidad)
- [Disponibilidad por región y ventana](#disponibilidad-por-región-y-ventana)
- [Bloqueo y desbloqueo con alcance](#bloqueo-y-desbloqueo-con-alcance)
- [Transiciones y estado efectivo del catálogo](#transiciones-y-estado-efectivo-del-catálogo)

### 5. Administración de Usuarios

Administración de la plataforma desde un backoffice web: control de usuarios, y de contenido subido.

- [Listar usuarios del sistema](#listar-usuarios-del-sistema)
- [Visualizar perfil de usuario](#visualizar-perfil-de-usuario)
- [Bloquear usuario](#bloquear-usuario)

### 6. Explorar

Exploración de contenido disponible en la plataforma: búsqueda y recomendaciones básicas (contenido más escuchado).

- [Home](#home)
- [Búsqueda unificada por tipo de contenido](#búsqueda-unificada-por-tipo-de-contenido)
- [Navegación a vistas de detalle](#navegación-a-vistas-de-detalle)
- [Made For You](#made-for-you)

### 7. Reproducción

Reproductor de contenido, con controles, cola de reproducción, administración de favoritos, autoplay.

- [Reproducción y Controles Básicos](#reproducción-y-controles-básicos)
- [Controles avanzados del Player](#controles-avanzados-del-player)
- [Gestión de cola](#gestión-de-cola)
- [Marcado de Liked Songs desde el Player](#marcado-de-liked-songs-desde-el-player)
- [Videos Musicales Asociados](#videos-musicales-asociados)
- [Reproducción On Demand](#reproducción-on-demand)
- [Reproducción Continua (autoplay) [IA]](#reproducción-continua-autoplay-ia)

### 8. Métricas

Rendimiento de negocio de la plataforma para administradores, incluyendo métricas de usuarios (actividad) y de contenido (más escuchado)

- [Métricas de canciones y álbumes](#métricas-de-canciones-y-álbumes)
- [Métricas de usuario](#métricas-de-usuario)
- [Métricas de artistas](#métricas-de-artistas)

### 9. Biblioteca

Playlists, favoritos, biblioteca personalizada para cada usuario.

- [Creación y Gestión de Playlists](#creación-y-gestión-de-playlists)
- [Reordenamiento de Contenido en Playlists](#reordenamiento-de-contenido-en-playlists)
- [Historial de Reproducción](#historial-de-reproducción)
- [Liked Songs](#liked-songs)
- [Creación Asistida de 'Mood Mixes' (IA)](#creación-asistida-de-mood-mixes-ia)

### 10. Notificaciones

Notificaciones push para alertar a usuario sobre nuevas actualizaciones de contenido o de actividad dentro de la plataforma.

- [Notificación por nuevo contenido y actividad seguida](#notificación-por-nuevo-contenido-y-actividad-seguida)
- [Enrutamiento al hacer clic en notificaciones (Deep Link)](#enrutamiento-al-hacer-clic-en-notificaciones-deep-link)

### 11. Social

Actividades sociales: seguir usuarios, ver su historial de reproducción, compartir música interna y externamente.

- [Seguimiento de Perfiles de Usuario](#seguimiento-de-perfiles-de-usuario)
- [Visualización de Actividad de Amigos](#visualización-de-actividad-de-amigos)
- [Compartir Canciones y Playlists](#compartir-canciones-y-playlists)

### 12. Vibras

Recomendaciones: radios de artista, contenidos similares, playlists custom para ciertas horas del día o _moods_

- [Playlists temáticas por contexto [IA]](#playlists-temáticas-por-contexto-ia)
- [Radio por Canción [IA]](#radio-por-canción-ia)
- [Auto Play (nuevo contexto) [IA]](#auto-play-nuevo-contexto-ia)

### 13. Onboarding Usuario

Preferencias custom para usuarios, así pueden indicar qué artistas o géneros les gustan antes de usar la plataforma y asistirlos en el descubrimiento de contenido que les guste.

- [Captura Inicial de Géneros Favoritos](#captura-inicial-de-géneros-favoritos)
- [Asistente de Artistas Favoritos](#asistente-de-artistas-favoritos)
- [Personalización de Notificaciones Iniciales](#personalización-de-notificaciones-iniciales)

---

## Historias de Usuario

## Épica: Usuarios

### Registro de usuarios

<!-- Status: Obligatoria -->

**Descripción**: Como **nuevo usuario**, quiero **registrarme en la plataforma con mi correo electrónico** para **crear una cuenta y acceder a sus funcionalidades**.

**Criterios de aceptación**

- CA 1: Registro exitoso con datos válidos
  - Dado un nuevo usuario accede a la página de registro.
  - Entonces el usuario puede ingresar un nombre de usuario, correo electrónico y contraseña válidos y completar el registro.

- CA 2: Validación de correo electrónico duplicado
  - Dado un usuario intenta registrarse con un correo electrónico que ya está en uso.
  - Entonces el sistema muestra un mensaje de error indicando que el correo electrónico ya está registrado y el registro falla.

- CA 3: Validación de formato de correo electrónico
  - Dado un usuario intenta registrarse con un correo electrónico que no tiene un formato válido (ej. sin '@' o dominio).
  - Entonces el sistema muestra un mensaje de error indicando que el formato del correo electrónico es inválido y el registro falla.

- CA 4: Validación de fortaleza de contraseña
  - Dado un usuario intenta registrarse con una contraseña que no cumple con los requisitos de fortaleza (ej. muy corta, sin caracteres especiales).
  - Entonces el sistema muestra un mensaje de error indicando los requisitos de contraseña y el registro falla.

- CA 5: Selección de tipo de cuenta (Oyente / Artista)
  - Dado el formulario de registro
  - Cuando elijo **“Soy artista”**
  - Entonces la cuenta se crea con el **rol Artista** y queda habilitado el acceso a **Gestión de perfil del artista** y **Publicación de lanzamientos**.

- CA 6: Datos mínimos si elijo “Soy artista”
  - Dado que seleccioné **“Soy artista”** en el registro
  - Cuando completo el alta
  - Entonces se me solicita (o luego en el primer ingreso) **Nombre artístico**; si lo omito, el rol se crea igualmente y podré completarlo después en **Gestión de perfil del artista**.

### Login con email y contraseña

<!-- Status: Obligatoria -->

**Descripción**: Como **usuario registrado**, quiero **iniciar sesión con mi correo electrónico y contraseña** para **acceder de forma segura a mi cuenta**.

**Criterios de aceptación**

- CA 1: Inicio de sesión exitoso con credenciales válidas
  - Dado un usuario registrado accede a la página de inicio de sesión.
  - Entonces el usuario puede ingresar su correo electrónico y contraseña válidos y acceder a su cuenta.

- CA 2: Fallo de inicio de sesión con contraseña incorrecta
  - Dado un usuario registrado intenta iniciar sesión con su correo electrónico pero una contraseña incorrecta.
  - Entonces el sistema muestra un mensaje de error indicando que las credenciales son incorrectas y el inicio de sesión falla.

- CA 3: Fallo de inicio de sesión con correo electrónico no registrado
  - Dado un usuario intenta iniciar sesión con un correo electrónico que no está registrado en el sistema.
  - Entonces el sistema muestra un mensaje de error indicando que el correo electrónico no se encuentra y el inicio de sesión falla.

- CA 4: Opción de 'Olvidé mi contraseña'
  - Dado un usuario que olvidó su contraseña accede a la página de inicio de sesión.
  - Entonces el usuario puede hacer clic en un enlace de 'Olvidé mi contraseña' para iniciar el proceso de recuperación.

### Login con proveedor federado

<!-- Status: Opcional | Puntos: 2 | Pack: U2 — Acceso Federado -->

**Descripción**: Como **usuario**, quiero **iniciar sesión o registrarme usando una cuenta de un proveedor federado como Google** para **acceder a la plataforma de forma rápida y sin crear nuevas credenciales**.

**Criterios de aceptación**

- CA 1: Inicio de sesión exitoso con proveedor federado (ej. Google)
  - Dado un usuario que ha vinculado su cuenta social accede a la página de inicio de sesión.
  - Entonces el usuario puede hacer clic en el botón de inicio de sesión social (ej. 'Iniciar sesión con Google') y ser redirigido al proveedor para autenticación.

- CA 2: Registro y inicio de sesión con proveedor federado
  - Dado un nuevo usuario que no tiene cuenta en Melodia utiliza el inicio de sesión social.
  - Entonces el sistema crea automáticamente una nueva cuenta para el usuario utilizando la información del proveedor social y lo inicia sesión.

- CA 3: Manejo de errores de autenticación del proveedor
  - Dado el proveedor federado (ej. Google) devuelve un error durante el proceso de autenticación.
  - Entonces el sistema muestra un mensaje de error al usuario indicando que no se pudo completar el inicio de sesión a través del proveedor.

- CA 4: Vinculación de cuenta social a cuenta existente
  - Dado un usuario existente en Melodia intenta vincular su cuenta social a su cuenta.
  - Entonces el usuario puede vincular exitosamente su cuenta social a su cuenta de Melodia para futuros inicios de sesión.

### Recuperación de contraseña

<!-- Status: Obligatoria -->

**Descripción**: Como **usuario registrado**, quiero **recuperar el acceso a mi cuenta si olvido mi contraseña** para **restablecerla de forma segura y volver a iniciar sesión**.

**Criterios de aceptación**

- CA 1: Solicitud de restablecimiento de contraseña exitosa
  - Dado un usuario registrado que ha olvidado su contraseña
  - Entonces el usuario recibe un correo electrónico con un enlace para restablecer su contraseña.

- CA 2: Restablecimiento de contraseña con enlace válido
  - Dado un usuario que hace clic en el enlace de restablecimiento de contraseña recibido por correo electrónico
  - Entonces se le presenta una página segura donde puede ingresar una nueva contraseña.

- CA 3: Restablecimiento de contraseña con éxito
  - Dado un usuario que ingresa y confirma una nueva contraseña válida
  - Entonces la contraseña del usuario se actualiza y puede iniciar sesión con la nueva contraseña.

- CA 4: Intento de restablecimiento de contraseña con enlace expirado
  - Dado un usuario que intenta usar un enlace de restablecimiento de contraseña que ha expirado
  - Entonces se le informa que el enlace ha expirado y se le ofrece la opción de solicitar un nuevo restablecimiento.

---

## Épica: Perfil

### Edición de perfil

<!-- Status: Obligatoria -->

**Descripción**: Como **usuario**, quiero **editar la información de mi perfil, incluyendo mi foto y preferencias** para **mantener mis datos actualizados y personalizar mi experiencia**.

**Criterios de aceptación**

- CA 1: Edición exitosa de información básica del perfil
  - Dado un usuario autenticado que navega a la sección de edición de perfil
  - Entonces el usuario puede modificar su nombre, apellido y correo electrónico.

- CA 2: Actualización de información de contacto
  - Dado un usuario autenticado que edita su perfil
  - Entonces el usuario puede actualizar su número de teléfono y dirección.

- CA 3: Cambio de foto de perfil
  - Dado un usuario autenticado que edita su perfil
  - Entonces el usuario puede subir una nueva foto de perfil.

- CA 4: Guardado de cambios en el perfil
  - Dado un usuario autenticado que ha realizado cambios en su perfil
  - Entonces al hacer clic en el botón 'Guardar', los cambios se reflejan en su perfil.

- CA 5: Cancelación de edición de perfil
  - Dado un usuario autenticado que ha realizado cambios en su perfil pero no desea guardarlos
  - Entonces al hacer clic en el botón 'Cancelar', los cambios no se guardan y el perfil permanece sin modificaciones.

- CA 6: Preferencias de contenido
  - Dado un usuario autenticado en la edición de perfil
  - Cuando cambia la preferencia **Filtro ON/OFF**
  - Entonces esa preferencia se guarda en su perfil y afecta la reproducción y listados.

### Visualización de perfil propio

<!-- Status: Obligatoria -->

**Descripción**: Como **usuario**, quiero **ver mi propio perfil** para **consultar mi información y acceder a las opciones de edición**.

**Criterios de aceptación**

- CA 1: Visualización de información básica del perfil
  - Dado un usuario autenticado que navega a su página de perfil
  - Entonces se muestra su nombre, apellido y correo electrónico.

- CA 2: Visualización de información de contacto
  - Dado un usuario autenticado que visualiza su perfil
  - Entonces se muestra su número de teléfono y dirección.

- CA 3: Visualización de la foto de perfil
  - Dado un usuario autenticado que visualiza su perfil
  - Entonces se muestra su foto de perfil actual.

- CA 4: Acceso a la opción de edición de perfil
  - Dado un usuario autenticado que visualiza su perfil
  - Entonces existe un botón o enlace visible para editar su perfil.

### Visualización de perfil de otros usuarios

<!-- Status: Opcional | Puntos: 2 | Pack: P3. Social + Notificaciones -->

**Descripción**: Como **usuario**, quiero **ver el perfil de otros usuarios** para **conocer su actividad reciente y decidir si quiero seguirlos**.

**Criterios de aceptación**

- CA 1: Visualización de información básica del perfil
  - Dado un usuario está viendo el perfil de otro usuario
  - Entonces debe poder ver el nombre de usuario, foto de perfil y una breve biografía.

 - CA 2: Actividad reciente del usuario
   - Dado un usuario está viendo el perfil de otro usuario
   - Entonces debe poder ver una lista de la actividad reciente (p. ej., 'Me Gusta', playlists públicas) de ese usuario.

- CA 3: Botón de acción en el perfil
  - Dado un usuario está viendo el perfil de otro usuario
  - Entonces debe existir un botón para seguir/dejar de seguir.

---

## Épica: Artistas

### Perfil del artista

<!-- Status: Obligatoria -->

**Descripción**: Como oyente, quiero ver el perfil del artista con su identidad, métrica clave y acciones principales para empezar a escuchar o seguirlo.

**Criterios de aceptación**

- CA 1: Identidad visual
  - Dado el perfil del artista
  - Cuando carga el header y el avatar
  - Entonces veo **nombre del artista**, **imagen/cover** (o fallback) si aplica.

- CA 2: Métrica de oyentes mensuales
  - Dado el perfil del artista
  - Cuando hay dato disponible
  - Entonces se muestra **oyentes mensuales**.
  - Y la métrica se **actualiza diariamente** (valor mensual).

- CA 3: Acciones principales
  - Dado el perfil del artista
  - Cuando uso los controles
  - Entonces puedo **Seguir/Dejar de seguir**, **Play** y **Shuffle**.
  - **Play** inicia desde el **#1 de Popular** y **Shuffle** mezcla las **10 populares**.

- CA 4: Estructura de la página del perfil
  - Dado el perfil del artista
  - Cuando scrolleo el contenido
  - Entonces encuentro los módulos en este orden: **Popular → Liked Songs -> Artist Pick -> Discography → → About -> Appears On → Similar Artists**.

- CA 5: Liked songs del artista
  - Dado que tengo **≥1** canción de este artista en **Liked Songs**
  - Cuando abro su perfil
  - Entonces veo un bloque “Liked songs (N)” que abre una colección filtrada por el artista (orden: más reciente).

### Discografía

<!-- Status: Obligatoria -->

**Descripción**: Como oyente, quiero ver la discografía oficial del artista (sus lanzamientos propios) desde su perfil para encontrar rápido qué escuchar.

**Criterios de aceptación**

- CA 1: Pestañas y alcance
  - Dado el perfil de un artista
  - Cuando abro la sección **Discografía**
  - Entonces veo las pestañas **Popular releases · Albums · Singles & EPs**; se listan **solo releases del artista como primario** (no playlists ni colaboraciones).

- CA 2: Orden por pestaña
  - Dado cada pestaña de la sección
  - Cuando se muestran sus ítems
  - Entonces:
    - **Popular releases** usa el **ranking de popularidad reciente** del catálogo.
    - **Albums** se ordena por **fecha de publicación descendente**.
    - **Singles & EPs** se ordena por **fecha de publicación descendente**.
    - En todos los casos, a igualdad de criterios, se **desempata alfabéticamente** y, si corresponde, el ítem más nuevo muestra el **badge “Latest release”**.

- CA 3: Tarjetas y navegación
  - Dado un lanzamiento en cualquier pestaña
  - Cuando se renderiza su tarjeta
  - Entonces muestra **portada, título, año** y **chip de tipo** (*Album/EP/Single*), y **al tocar imagen o título** navego a la **ficha del release**.
  - Y para **Single**, se trata como **colección** (de **1 canción**).

- CA 4: Próximos (programados)
  - Dado que existen lanzamientos con **fecha futura** del artista
  - Cuando consulto **Albums** o **Singles & EPs**
  - Entonces aparece un bloque **Próximos** con cada tarjeta mostrando **fecha/hora** (y **cuenta regresiva** si aplica) y, si está configurado, **Pre-save**; la **reproducción** está **deshabilitada** hasta la vigencia, excepto **canciones liberadas anticipadamente**, que sí son reproducibles.



### Colaboraciones (Aparece en)

<!-- Status: Opcional | Puntos: 3 | Pack: A3 — “Aparece en” -->

**Descripción**: En el perfil del artista, muestra lanzamientos y playlists donde el artista participa (primario o creditado) para descubrir rápidamente esas apariciones.

**Criterios de aceptación**

- CA 1: Fuentes y alcance
  - Dado el perfil de un artista
  - Entonces la sección **Aparece en** incluye **Álbum/EP/Single** y **Playlists públicas** que contengan ≥1 canción del artista (como principal o en créditos).

- CA 2: Presentación y navegación
  - Dado un ítem de la sección
  - Cuando se renderiza su tarjeta
  - Entonces muestra **portada**, **título**, **chip de tipo** (*Álbum/EP* o *Playlist* o *Single*) y **año**; al tocar **imagen o título** navego al **detalle** con la **lista en el formato correspondiente**.

- CA 3: Cantidad visible y orden
  - Dado que hay resultados
  - Cuando se compone el carrusel/grilla
  - Entonces se listan **4–6** tarjetas y se ordenan así:
    - **Releases (Álbum/EP/Single):** **fecha de publicación descendente** (desempate alfabético).
    - **Playlists públicas:** **popularidad reciente** con **desempate alfabético**.


### Popular (Top del artista)

<!-- Status: Obligatoria -->  

**Descripción**: En el **perfil del artista**, muestra una lista **automática** de sus canciones más escuchados para empezar a reproducir rápido.

**Criterios de aceptación**

- CA 1: Fuente y alcance del ranking
  - Dado el perfil de un artista
  - Cuando se calcula **popularidad reciente**
  - Entonces devuelve un set de **canciones del artista** (como principal o creditado) ordenadas por **escucha real y señales de interacción** (reproducciones, guardados, compartidos); el ranking se **actualiza periódicamente** con la actividad más reciente.

- CA 2: Presentación
  - Dado la sección **Popular**
  - Entonces muestra **5 ítems** por defecto y cada fila incluye **# de posición**, **título**, **badges** (p. ej., **video** si aplica) y **duración**.

- CA 3: Reproducción desde Popular
  - Dado la lista **Popular**
  - Cuando toco una canción
  - Entonces se **reproduce ahora** y el **contexto** pasa a ser **Popular de {Artista}**; los **Siguientes** son el resto de la lista en el **orden mostrado** (o **Shuffle** si está activo).


### Artistas relacionados (Similares a)

<!-- Status: OPTATIVA (como piensan hacer esto????) -->

**Descripción**: En el perfil del artista, muestra **solo artistas** afines para descubrir artistas similares.

**Criterios de aceptación**

- CA 1: Fuente de similitud
  - Dado el artista en foco
  - Entonces devuelve una **lista de artistas** (no playlists/álbumes) basada en el **género** de las sus canciones y colaboraciones, ponderadas por **actividad reciente**.

- CA 2: Presentación y navegación
  - Dado la grilla “Similares a {Artista}”
  - Entonces se muestran tarjetas con **avatar** y **nombre**; **al tocar la imagen o el nombre navego al perfil del artista**.

- CA 3: Orden y variación controlada
  - Dado el ranking de similares
  - Cuando hay empates
  - Entonces se desempata por **popularidad reciente**; que cambia periodicamente, solo **desde la posición 3 en adelante** para variar exposición sin alterar el **top 3**.

### Gestión de perfil del artista

<!-- Status: Obligatoria -->

**Descripción**: Como **artista**, quiero **gestionar mi perfil público** para **presentar mi proyecto y dirigir a mis fans a mis redes oficiales**.

**Criterios de aceptación**

- CA 1: Identidad visual del perfil (header)
  - Dado que soy artista autenticado
  - Cuando subo/actualizo **imagen de perfil (avatar)** y/o **banner** y guardo
  - Entonces el **header** del perfil muestra las nuevas imágenes.

- CA 2: About — Bio
  - Dado que edito la sección **About**
  - Cuando actualizo el **texto de bio y los links a mis redes** y guardo
  - Entonces la bio se muestra en **About** con el formato básico y los links de las redes oficiales (párrafos/saltos de línea).

- CA 3: About — Carrusel de imágenes
  - Dado que gestiono **About**
  - Cuando **selecciono hasta 5 imágenes** destacadas, puedo **reordenarlas** y **definir una principal**
  - Entonces en el perfil se muestra un **carrusel** navegable con esas imágenes (toca/clic para ampliar); si no hay imágenes seleccionadas, **no se muestra el carrusel**.

- CA 4: Artist Pick (destacado único — álbum/EP/single/playlist)
  - Dado que soy artista, en mi perfil
  - Cuando elijo un contenido relacionado de mi catálogo o una playlist hecha por el artista.
  - Entonces puedo fijarlo como Artist pick.

<!-- revisar si tenemos que agregar la gestion de playlist como ca's-->

### Publicación de lanzamientos

<!-- Status: Obligatoria -->

**Descripción**: Como artista, quiero cargar metadatos y assets y elegir **Publicar ahora** o **Programar** una fecha para que mi música quede disponible según las políticas de disponibilidad.

**Criterios de aceptación**

- CA 1: Alta guiada y validaciones
  - Dado que inicio un lanzamiento
  - Cuando completo **título, genero(s) , créditos (artistas colaboradores), portada y audio**
  - Entonces puedo **Publicar ahora** o **Programar**; si falta algún requisito, no permite continuar y muestra el motivo.

- CA 2: Publicar ahora / Programar
  - Dado que elijo **Publicar ahora**
  - Entonces el lanzamiento queda **Publicado** respetando territorios configurados.
  - Dado que elijo **Programar** (fecha/hora + zona)
  - Entonces el lanzamiento queda **Programado** hasta la vigencia.

- CA 3: Canciones anticipadas y Pre-save (opcional)
  - Dado un singles/álbum/EP **Programado**
  - Cuando marco **canciones anticipadas**
  - Entonces esas canciones son **reproducibles** antes de la fecha; la colección sigue **Programado** y admite **Pre-save** si se configuró.

- CA 4: Edición posterior
  - Dado un lanzamiento **Programado o Publicado**
  - Cuando edito metadatos no críticos (p. ej., créditos, portada, descripción, fecha de lanzamiento, territorios, etc.)
  - Entonces los cambios se guardan

- CA 5: Ubicación de la canción
  - Dado que cargo una canción
  - Cuando defino su destino
  - Entonces puedo:
    - **Single**: crear/usar un **colección tipo Single** (1 canción).
    - **EP/Álbum**: agregarla a un **release del artista no publicado o programado** (o crear uno nuevo) y definir **orden**. *Si el release ya está publicado, no se admiten nuevas canciones.*
    - **Playlists hecha por el artista**: añadir **solo si la canción está Publicada** (o **anticipada**).

### Disponibilidad por ventana

<!-- Status: Opcional | Puntos: 3 | Pack: C8 — Creator Autogestión + IA -->

**Descripción**: Como artista, quiero definir una **ventana de publicación** para controlar cuándo se expone mi lanzamiento.

**Criterios de aceptación**

- CA 1: Configuración
  - Dado el editor de disponibilidad
  - Cuando selecciono una **fecha/hora** con zona
  - Entonces guardo una **política** que determina **No-disponible** y/o **Programado**.

- CA 2: Activación automática y prioridad
  - Dado un lanzamiento **Programado**
  - Cuando llega la **vigencia**
  - Entonces pasa a **Publicado** automáticamente y se registra en **auditoría**.
  - Si existe **Bloqueado-admin**, la reproducción permanece **deshabilitada** hasta levantar el bloqueo.
  - El **estado efectivo** respeta siempre la prioridad: **Bloqueado-admin > No-disponible-región > Programado > Publicado**.

- CA 4: Cambios posteriores
  - Dado que modifico **la fecha**
  - Cuando guardo
  - Entonces el **estado efectivo** se recalcula de inmediato en todas las superficies y se registra en **auditoría**.

### Autocompletar metadatos (“Fast Complete”) [IA]

<!-- Status: Opcional | Puntos: 5 | Pack: C8 — Creator Autogestión + IA -->

**Descripción**: Como **artista** que está dando de alta un canción, quiero **ingresar una referencia rápida** (p. ej., *"Artista – Título"*) para que el sistema **proponga automáticamente los metadatos** y yo solo **revise y ajuste** antes de guardar.

**Criterios de aceptación**

- CA 1: Entrada flexible
  - Dado el formulario de alta de canción
  - Cuando uso el campo **Fast Complete**
  - Entonces acepta formatos comunes (*"Artista – Título"*, *"Título – Artista"* o solo título).

- CA 2: Propuesta de metadatos
  - Dado que confirmo la entrada en **Fast Complete**
  - Entonces el sistema propone **título**, **artista(s) primarios**, **creditos (colaboradores)**, **género(s)**, **moods/temáticas**, **año** y **créditos** básicos.

- CA 3: Revisión y fusión por campo
  - Dado que se muestran sugerencias
  - Entonces puedo **aceptar/editar** cada campo; **nada se publica sin confirmación**.

- CA 4: Desambiguación guiada
  - Dado que la referencia es ambigua
  - Entonces se muestran **hasta 3 opciones** con detalles para seleccionar o continuar manualmente.

- CA 5: Persistencia y fallback
  - Dado que acepto las sugerencias
  - Entonces se **rellenan en el formulario**; puedo **re-ejecutar** Fast Complete manteniendo cambios confirmados; si la sugerencia falla, se muestra un **mensaje breve** y continúo en **modo manual**.


---

## Épica: Administración de Usuarios

### Listar usuarios del sistema

<!-- Status: Obligatoria -->

**Descripción**: Como **administrador**, quiero **ver un listado de usuarios con su información básica y acciones disponibles** para **gestionar roles, estados y operaciones comunes**.

**Criterios de aceptación**

- CA 1: Listado de todos los usuarios
  - Dado un usuario con rol de administrador accede a la sección de gestión de usuarios
  - Entonces debe poder ver una lista de todos los usuarios registrados en el sistema.

- CA 2: Información básica del usuario en la lista
  - Dado un usuario con rol de administrador está viendo la lista de usuarios
  - Entonces cada usuario en la lista debe mostrar su nombre de usuario, correo electrónico y rol.

- CA 3: Acciones de administración
  - Dado un usuario con rol de administrador está viendo la lista de usuarios
  - Entonces debe poder realizar acciones como editar rol, desactivar o eliminar un usuario.

### Visualizar perfil de usuario

<!-- Status: Opcional | Puntos: 2 | Pack: P11. Backoffice Usuarios Plus -->

**Descripción**: Como **administrador**, quiero **ver el perfil detallado de un usuario** para **revisar su estado (activo/bloqueado), fechas clave y rol**, incluso cuando no hay usuarios.

**Criterios de aceptación**

- CA 1: Visualizar información básica del usuario
  - Dado como administrador, estoy en la página de gestión de usuarios
  - Entonces puedo ver una lista de todos los usuarios registrados con su nombre, correo electrónico y estado (activo/bloqueado).

- CA 2: Ver detalles completos del perfil de un usuario específico
  - Dado como administrador, estoy viendo la lista de usuarios y selecciono un usuario específico
  - Entonces se me redirige a una página de perfil detallado donde puedo ver toda la información del usuario, incluyendo su fecha de registro, última conexión y rol.

- CA 3: Manejar la ausencia de usuarios
  - Dado como administrador, estoy en la página de gestión de usuarios y no hay usuarios registrados
  - Entonces se muestra un mensaje indicando que no hay usuarios disponibles.

### Bloquear usuario

<!-- Status: Obligatoria -->

**Descripción**: Como **administrador**, quiero **bloquear o desbloquear usuarios** para **controlar el acceso y prevenir abusos**, con confirmación y trazabilidad.

**Criterios de aceptación**

- CA 1: Bloquear un usuario activo
  - Dado como administrador, estoy viendo el perfil de un usuario activo
  - Entonces puedo hacer clic en un botón 'Bloquear usuario', y el estado del usuario cambia a 'Bloqueado'.

- CA 2: Desbloquear un usuario bloqueado
  - Dado como administrador, estoy viendo el perfil de un usuario bloqueado
  - Entonces puedo hacer clic en un botón 'Desbloquear usuario', y el estado del usuario cambia a 'Activo'.

- CA 3: Confirmación de la acción de bloqueo/desbloqueo
  - Dado como administrador, intento bloquear o desbloquear un usuario
  - Entonces aparece un mensaje de confirmación antes de que la acción se complete, y una notificación de éxito o error después de la acción.

- CA 4: Impedir acciones para usuarios bloqueados
  - Dado un usuario está bloqueado
  - Entonces el usuario no puede iniciar sesión ni realizar ninguna acción dentro de la aplicación.

---

## Épica: Administración de Contenido

### Catálogo — Explorar y buscar contenido

<!-- Status: Obligatoria -->

**Descripción**: Como **administrador**, quiero **listar y encontrar rápidamente** contenido del catálogo (**Canciones** y **Colecciones**) para **ver su estado y accionar**.

**Criterios de aceptación**

- CA 1: Tabla de catálogo
  - Dado que ingreso a **Administración → Catálogo**
  - Cuando carga la vista
  - Entonces veo una tabla con: **Tipo (Canción/Colección)**, **Título**, **Artista principal**, **Colección** (si es Canción), **Fecha de publicación** (si aplica), **Estado efectivo** (Programado / Publicado / No-disponible-región / Bloqueado-admin) y **Acciones** (Abrir detalle, Editar metadatos, Editar disponibilidad, Bloquear/Desbloquear).

- CA 2: Búsqueda
  - Dado el campo de búsqueda
  - Cuando ingreso un término
  - Entonces busca por **título**, **artista** y **colección**, y **resalta** coincidencias.

- CA 3: Filtros y orden
  - Dado que necesito acotar resultados
  - Cuando filtro por **Tipo**, **Estado efectivo**, **Rango de fecha de publicación**, **Tiene video** (sí/no) y **Región**
  - Entonces la tabla muestra solo los ítems que cumplen y **filtros/orden** **persisten en la URL**.

### Catálogo — Detalle y trazabilidad

<!-- Status: Obligatoria -->

**Descripción**: Como **administrador**, quiero ver el **detalle** de una **Canción** o **Colección** para **entender metadatos, disponibilidad, apariciones y los cambios relevantes**.

**Criterios de aceptación**

- CA 1: Pestañas
  - Dado que abro un detalle
  - Entonces veo **Resumen**, **Disponibilidad**, **Apariciones** y **Auditoría**.

- CA 2: Resumen
  - Dado la pestaña **Resumen**
  - Entonces:
    - **Canción** → **título**, **artista(s)**, **colección + año** (si aplica), **posición** en la **lista de canciones**, **duración**, **explícito/video** (si aplica); **acciones**: *Editar metadatos*, *Abrir detalle de Colección*.
    - **Colección** → **cover**, **título**, **tipo** (Álbum/EP/Single/Playlist), **año** (si aplica), **owner/privacidad** (si es Playlist), **lista de canciones** (posición + duración), **explícito/video** (si aplica); **acciones**: *Editar metadatos*.

- CA 3: Disponibilidad
  - Dado la pestaña **Disponibilidad**
  - Entonces veo el **Estado efectivo** aplicando la prioridad **Bloqueado-admin > No-disponible-región > Programado > Publicado**, el **detalle por región** y, si está **Programado**, la **fecha/hora**.

- CA 4: Apariciones
  - Dado la pestaña **Apariciones**
  - Entonces:
    - **Canción** → veo las **Colecciones** (Álbum/EP/Single/Playlist pública) que la incluyen, con **Tipo**, **Título**, **Posición** y **Owner** (si es Playlist). **Clic** en fila → **Detalle de la Colección**.
    - **Colección** → veo las **Playlists** que contienen **canciones** de esa Colección, con **Título**, **Owner** y **Cantidad incluida** (p. ej., “X de N”). **Clic** en fila → **Detalle de la Playlist**.

- CA 5: Auditoría
  - Dado la pestaña **Auditoría**
  - Entonces solo las canciones tienen auditoría y se listan solo los **últimos cambios de Bloqueado-admin** (bloqueo/desbloqueo) y **cambios de disponibilidad por región** (altas/bajas que deriven en **No-disponible-región**), con **usuario**, **timestamp**, **evento** y **alcance/región**.

### Disponibilidad por región y ventana

<!-- Status: Opcional | Puntos: 5 | Pack: BO8 — Backoffice Contenido+Moderación -->

**Descripción**: Como **administrador**, quiero **configurar territorios y vigencias** para controlar **dónde** y **cuándo** está disponible un contenido.

**Criterios de aceptación**

- CA 1: Crear/editar política
  - Dado un contenido en el backoffice
  - Cuando defino **territorios** (allow/deny, con **Global** por defecto) y **vigencia** (**fecha/hora desde** y/o **hasta**, opcional)
  - Entonces la **política se guarda** y queda asociada al contenido.

- CA 2: Efectos y prioridad
  - Dado un contenido con política guardada
  - Cuando llega la **fecha/hora de vigencia**
  - Entonces el estado pasa a **Publicado** en las **regiones permitidas** y a **No-disponible-región** en el resto.
  - Y si existe **Bloqueado-admin**, **prevalece** (no reproducible) hasta ser levantado.
  - Y el **estado efectivo** respeta siempre la prioridad: **Bloqueado-admin > No-disponible-región > Programado > Publicado**.

- CA 3: Auditoría
  - Dado que creo o edito una política
  - Cuando guardo
  - Entonces se registra en **Auditoría**: **usuario**, **timestamp**, **cambios** (territorios y/o vigencias) y **alcance/región**.


### Bloqueo y desbloqueo con alcance

<!-- Status: Opcional | Puntos: 3 | Pack: BO8 — Backoffice Contenido+Moderación -->

**Descripción**: Como administrador, quiero bloquear o desbloquear contenido definiendo el alcance con prioridad sobre otras políticas.

**Criterios de aceptación**

- CA 1: Bloqueo — Alcance y motivo
  - Dado que voy a bloquear un ítem
  - Cuando confirmo
  - Entonces elijo **alcance** (global/regiones) y **reason code**.

- CA 2: Efecto inmediato (reflejo en producto)
  - Dado que confirmo un **Bloqueado-admin**
  - Entonces el ítem:
    - En **Popular / Popular releases / Appears On / Búsqueda / Explorar**: **no se muestra** (sale de rankings y listados).
    - En **Colecciones**: **se mantiene visible** pero con **acciones deshabilitadas** e **indicador**.

- CA 3: Desbloqueo
  - Dado un ítem **bloqueado-admin**
  - Cuando confirmo **Desbloquear**
  - Entonces se **revierte** el override y aplica la **disponibilidad** vigente (publicado/programado o no-disponible-región).

- CA 4: Auditoría
  - Dado la acción de bloqueo/desbloqueo
  - Entonces queda **usuario, timestamp, alcance y motivo** en el historial.

### Transiciones y estado efectivo del catálogo

<!-- Status: Obligatoria -->

**Descripción**: Como **administrador**, quiero reglas simples de **estados, transiciones y prioridad** para reflejar la disponibilidad real.

**Criterios de aceptación**

- CA 1: Estados
  - Dado el modelo del catálogo
  - Cuando consulto estados posibles
  - Entonces existen **solo**: **Programado**, **Publicado**, **No-disponible-región**, **Bloqueado-admin**.

- CA 2: Transiciones
  - Dado un lanzamiento
  - Cuando ocurren eventos de disponibilidad
  - Entonces se permiten:
    - **Programado → Publicado** (automático al llegar la fecha/hora).
    - **Publicado ↔ No-disponible-región** (según territorios).
    - **Publicado/Programado ↔ Bloqueado-admin** (aplicar/quitar bloqueo).
    - **Publicación directa por artistas**: **Publicar ahora** o **Programar** sin revisión.

- CA 3: Prioridad y consumo
  - Dado políticas/estados solapados
  - Cuando se calcula el **estado efectivo**
  - Entonces la prioridad es **Bloqueado-admin > No-disponible-región > Programado > Publicado**, y las superficies **solo consumen el estado efectivo** (mostrar/ocultar o **deshabilitar** acciones según corresponda).

- CA 4: Auditoría
  - Dado una transición aplicada
  - Cuando se confirma
  - Entonces se registra **usuario**, **timestamp**, **estado previo→nuevo** y **reason code/alcance**.

## Épica: Explorar

### Home

<!-- Status: Obligatorio -->

**Descripción**: Como **oyente**, quiero una página de **Explorar** para **empezar a escuchar rápido**.

**Criterios de aceptación**

- CA 1: Estructura y estilo general
  - Dado que ingreso a **Explorar**
  - Entonces veo las secciones en este orden: **Tus atajos → New release from {Artist} → Recently played → Discover more from {Artist}**, con títulos.

- CA 2: “Tus atajos”
  - Dado que se presenta la sección **Tus atajos**
  - Entonces muestra **hasta 8 ítems**: la tarjeta fija **Liked Songs** y **hasta 7** tarjetas de **playlists, álbumes, artistas** que más escucho; cada tarjeta muestra **portada y título**.

- CA 3: “New release from {Artist}"
  - Dado que sigo artistas con lanzamientos vigentes
  - Cuando existe al menos un lanzamiento
  - Entonces aparece una seccion con **cover**, **nombre del álbum/single/EP** y acciones **Play (▶︎)** y **Guardar (+)**; al tocar **imagen o título** voy al detalle.

- CA 4: “Recently played”
  - Dado que tengo historial de reproducción
  - Cuando se presenta la sección
  - Entonces veo un carrusel/grilla con ítems **ordenados por recencia de escucha**; cada tarjeta navega a su **detalle**.

- CA 5: “Discover more from {Artist}” (opcional)
  - Dado que sigo al menos un artista
  - Cuando carga esta sección
  - Entonces se elige **aleatoriamente un artista seguido** y se muestran tarjetas de **playlists o álbumes** relacionados, **oficiales o de la comunidad (públicos)**.

- CA 6: “Made for you” (opcional)
  - Dado que se muestra la sección **New release from {Artist}**
  - Entonces aparece **inmediatamente debajo** una sección **Made for you** con **3 a 6** tarjetas (p. ej., *Discover Weekly*, *Daily Mix*, *Because you listened to…*, *Mood Mix*);.

### Búsqueda unificada por tipo de contenido

<!-- Status: Obligatoria -->

**Descripción**: Como usuario, quiero buscar canciones, álbumes, artistas, playlists desde un único buscador para encontrar rápidamente lo que quiero escuchar.

**Criterios de aceptación**

- CA 1: Pestañas por tipo
  - Dado que abro el buscador
  - Cuando ingreso un término
  - Entonces veo pestañas **Todo, Canciones, Álbumes, Artistas, Playlists, Perfiles, Géneros & Moods** y la pestaña **Géneros & Moods**.

- CA 2: Filtro por tipo
  - Dado que quiero acotar la búsqueda
  - Cuando selecciono un tipo de contenido
  - Entonces los resultados se filtran dejando **solo** ese tipo activo.

- CA 3: “Top result”
  - Dado una consulta con **alta coincidencia**
  - Cuando se muestran resultados
  - Entonces aparece un bloque **encabezado “Top result”** (tipo variable: canción/álbum/artista/playlist), si no hay coincidencia fuerte, **no se muestra**. 

- CA 4: Campos visibles en resultados
  - Dado que se muestran resultados
  - Cuando corresponda por tipo
  - Entonces cada ítem exhibe **nombre, imagen de portada, tipo** y **duración** (si aplica).

- CA 5: Orden por defecto
  - Dado que el catálogo provee el **orden por relevancia + popularidad recientes**
  - Cuando se listan los resultados
  - Entonces la vista **solo consume** ese orden.

### Navegación a vistas de detalle

<!-- Status: Obligatoria -->

**Descripción**: Como oyente, quiero que al tocar un resultado en Explorar o Búsqueda se abra la ficha correcta con una interfaz consistente —ficha unificada de Colección (Álbum/EP/Single/Playlist)— para ver datos clave, la lista de canciones y poder reproducir o guardar rápidamente.

**Criterios de aceptación**

- CA 1: Acceso desde tarjetas/resultados
  - Dado un ítem en **Explorar** o **Búsqueda**
  - Cuando toco **imagen** o **título**
  - Entonces navego a la **vista de detalle** del **tipo correcto** (Álbum/EP/Single/Playlist)

- CA 2: Ficha unificada
  - Dado que abro una Colección
  - Entonces veo:
    - **Header**: cover, **título**, **subtítulo** (artista u **owner/privacidad**), **chip de tipo** y **año** (si aplica).
    - **Acciones**: **Play**, **Shuffle**, **Guardar (+)** y **Compartir** (sí aplica).
    - **Lista de canciones**: **#**, **título**, **artista(s)** (si corresponde) y **badges** (ej. video) (si aplica).
    - Nota: **Single** = Colección de **1 canción**; en **Playlist** el subtítulo muestra **owner/privacidad**.

- CA 3: Estados y disponibilidad
  - Dado que se muestran la lista de canciones
  - Entonces se muestran y respetan **Bloqueado-admin / No-disponible-región / Publicado** (con **indicador** y **acciones deshabilitadas** cuando corresponda).
  - **Programado** solo para **Álbum/EP/Single**: **fecha/estado**, **Pre-save** en Biblioteca (si aplica) y **canciones anticipadas** sí reproducibles.

- CA 4: Reproducción y cola
  - Dado la ficha de una **Colección**
  - Cuando pulso **Play**
  - Entonces el **contexto** pasa a esa **Colección** y la **cola** se define por el **orden mostrado** (o **Shuffle** si está activo).
  - Cuando toco en una **canción** de la lista
  - Entonces **si** el contexto activo ya es esa **Colección**, se **salta** a esa canción **dentro de la misma cola**; **si no**, el **contexto** pasa a esa **Colección** y la **cola** se define **desde esa canción** según el **orden mostrado** (o **Shuffle** si está activo).

- CA 5: Menú contextual “⋮” (por canción)
  - Dado que abro **⋮** en una canción
  - Entonces veo: **Compartir** (de forma externa), **Me gusta**, **Añadir a playlist** (picker), **Añadir a la cola** (encola tras la actual; **no** cambia el contexto), **Ir al álbum**, **Ir al artista**, **Radio de la canción** (sí aplica).

### Made For You

<!-- Status: Opcional | Puntos: 8 | Pack: P2 -->

**Descripción**: Como **oyente**, quiero un bloque **Made For You** en **Explorar** con playlists generadas por **Melodia** (*Discover Weekly* y *Daily Mix*) para **empezar a escuchar rápido**.

**Criterios de aceptación**

- CA 1: Presencia y cantidad
  - Dado que se carga **Explorar**
  - Cuando existe señal mínima (historial o favoritos)
  - Entonces veo el bloque **Made For You** con **3–6 tarjetas** compuestas por **Discover Weekly** (si existe) y **2–6 Daily Mix**.

- CA 2: Presentación y navegación
  - Dado que estoy en la sección **Made For You**
  - Cuando se muestran las playlists generadas por **Melodia**
  - Entonces cada item exhibe **portada**, **título**, **subtítulo con artistas representativos** y un **badge “Made for {usuario}”**; al tocar **imagen o título** abro el **detalle de la playlist**. El contenido se **actualiza periodicamente** según **afinidad del oyente** y **popularidad reciente**.

- CA 3: Discover Weekly
  - Dado que el set incluye **Discover Weekly**
  - Cuando llega su **actualización semanal**
  - Entonces existe **una única** playlist **por usuario** que reemplaza a la anterior
  - Y prioriza **canciones no reproducidos** previamente por ese usuario.

- CA 4: Daily Mix (clúster de gusto)
  - Dado que el set incluye **Daily Mix**
  - Cuando se generan los mixes
  - Entonces aparecen **2–6** listas **numeradas** (**01, 02, …**) y **nombradas** por su **clúster de afinidad** (p. ej., “Daily Mix 01”).
  - Y cada subtítulo lista **2–4 artistas** representativos.
  - Y cada mix se **refresca al menos 1 vez al día**.
  - Y mantiene **alta familiaridad** (predominio de artistas/canciones reproducidos) con **pequeñas adiciones**, (p. ej., 10–20% de canciones nuevos de un artista que sigo).

---

## Épica: Reproducción

### Reproducción y Controles Básicos

<!-- Status: Obligatoria -->

**Descripción**: Como **oyente**, quiero **controlar la reproducción de música con acciones básicas como play, pausa y siguiente** para **gestionar mi experiencia de escucha de forma intuitiva**.

**Criterios de aceptación**

- CA 1: Reproducción de canción individual
  - Dado que estoy navegando por el catálogo de música
  - Cuando selecciono una canción para reproducir
  - Entonces la canción comienza a sonar y se muestran los controles de reproducción básicos.

- CA 2: Navegación en la cola de reproducción
  - Dado que estoy escuchando una canción y tengo una cola de reproducción activa
  - Cuando utilizo los controles 'siguiente' o 'anterior'
  - Entonces la reproducción salta a la siguiente o anterior canción en la cola respectivamente.

- CA 3: Pausa y reanudación de reproducción
  - Dado que una canción se está reproduciendo
  - Cuando presiono el botón de pausa
  - Entonces la reproducción se detiene y puedo reanudarla desde el mismo punto (si es on-demand).

- CA 4: Modo aleatorio (Shuffle)
  - Dado que tengo una lista de canciones (álbum, playlist) para reproducir
  - Cuando activo el modo aleatorio
  - Entonces las canciones se reproducen en un orden no secuencial.

### Controles avanzados del Player

<!-- Status: Obligatoria -->

**Descripción**: Como **oyente**, quiero **usar controles avanzados como la barra de progreso (seek) y el modo de repetición** para **gestionar mi reproducción con mayor precisión**.

**Criterios de aceptación**

- CA 1: Seek/Scrub
  - Dado que una canción se está reproduciendo
  - Cuando arrastro el control de tiempo a un timestamp
  - Entonces la reproducción continúa desde ese punto.

- CA 2: Repetición
  - Dado que estoy escuchando música
  - Cuando alterno el control de repetición
  - Entonces el modo cambia entre: sin repetición, repetir uno, repetir todos.

### Gestión de cola

<!-- Status: Obligatoria -->

**Descripción**: Como **oyente**, quiero **ver y gestionar mi cola de reproducción** para **controlar el orden de lo que suena sin interrumpir la canción actual**.

**Criterios de aceptación**

- CA 1: Ver cola actual
  - Dado que abro la vista de cola
  - Cuando se carga
  - Entonces veo el **canción actual** y el **listado de siguientes**.

- CA 2: Reordenar y eliminar
  - Dado que veo la cola
  - Cuando arrastro un ítem o toco **Eliminar**
  - Entonces el orden se actualiza al instante y el ítem eliminado no será reproducido.

- CA 3: Limpiar cola (fallback definido)
  - Dado que quiero vaciar la cola
  - Cuando toco **Limpiar** y confirmo
  - Entonces se vacían los siguientes; si no quedan siguientes:
    - Si **Vibras** (Reproducción Continua - autoplay / radio) está activo, continúa con sugerencias.
    - Si no, el reproductor **se detiene** al terminar el canción actual.

- CA 4: Reproducir siguiente
  - Dado que estoy escuchando
  - Cuando toco **Siguiente**
  - Entonces salta al próximo de la cola; si no hay próximo, aplica el fallback del criterio anterior.

### Marcado de Liked Songs desde el Player

<!-- Status: Obligatoria -->

**Descripción**: Como **oyente**, quiero **marcar o desmarcar una canción como favorita directamente desde el reproductor** para **actualizar mi biblioteca personal de forma rápida y contextual**.

**Criterios de aceptación**

- CA 1: Lectura del estado inicial
  - Dado que estoy reproduciendo una canción en el Player
  - Cuando carga la vista
  - Entonces el icono de 'Me Gusta' refleja si la canción existe o no en Biblioteca > Liked Songs.

- CA 2: Toggle que persiste en Biblioteca
  - Dado que veo el icono de 'Me Gusta' en el Player
  - Cuando pulso para marcar o desmarcar
  - Entonces se actualiza el icono inmediatamente y la operación se persiste en Liked Songs (añadir o eliminar de Liked Songs).

- CA 3: Visualización en Biblioteca
  - Dado que acabo de marcar/desmarcar en el Player
  - Cuando navego a la sección Biblioteca > Liked Songs
  - Entonces veo el resultado de la operación reflejado sin acciones adicionales del usuario.

- CA 4: Actualización optimista
  - Dado que pulso el icono de 'Me Gusta'
  - Cuando la operación de añadir o eliminar se está procesando
  - Entonces el icono cambia inmediatamente para reflejar la acción del usuario, incluso si la operación de backend aún no ha finalizado.
  - Si la operación falla, el icono vuelve a su estado original y se muestra un breve error.

### Videos Musicales Asociados

<!-- Status: Opcional | Puntos: 3 | Pack: P8 — Player Avanzado -->

**Descripción**: Como **oyente**, quiero **acceder a videos musicales asociados a una canción** para **enriquecer mi experiencia de escucha con contenido visual**.

**Criterios de aceptación**

- CA 1: Acceso al Video Musical
  - Dado el usuario está reproduciendo una canción que tiene un video asociado
  - Cuando selecciona un icono o botón visible en la interfaz de reproducción
  - Entonces se abre una vista o reproductor de video integrado que muestra el video musical oficial.

- CA 2: Reproducción Sincronizada
  - Dado el video musical está en reproducción
  - Cuando la canción se reproduce en segundo plano o se pausa
  - Entonces la reproducción del video se sincroniza con el estado de la canción de audio, o se pausa automáticamente si la canción se detiene.

- CA 3: Navegación Fluida entre Audio y Video
  - Dado el usuario está viendo el video musical
  - Cuando cierra la vista del video
  - Entonces regresa a la interfaz de reproducción de audio sin perder el progreso ni el estado de la canción.

- CA 4: Indicador de Video Disponible
  - Dado el usuario navega por canciones o playlists
  - Cuando visualiza la lista de canciones
  - Entonces se muestra un indicador visual claro (ej. un icono) junto a las canciones que tienen un video musical disponible.


### Reproducción On Demand

<!-- Status: Opcional | Puntos: 5 | Pack: P8 — Player Avanzado -->

**Descripción**: Como **oyente**, quiero **reanudar mi sesión de escucha entre diferentes dispositivos sin interrupciones** para **tener una experiencia de reproducción continua y fluida**.

**Criterios de aceptación**

- CA 1: Guardar estado al salir
  - Dado que estoy escuchando música
  - Cuando cierro la app o pierdo conexión
  - Entonces se guarda automáticamente el punto exacto de la canción y la cola activa.

- CA 2: Reanudar al abrir
  - Dado que tenía música reproduciéndose antes de cerrar la app
  - Cuando la vuelvo a abrir y estoy logueado con la misma cuenta
  - Entonces me ofrece continuar desde donde lo dejé (misma canción y posición) o empezar de nuevo.

- CA 3: Persistencia multi-sesión
  - Dado que cierro sesión o cambio de dispositivo móvil (pero con misma cuenta)
  - Cuando inicio sesión en otro móvil
  - Entonces puedo reanudar la última sesión de escucha desde el punto guardado.

- CA 4: Sincronización de cola
  - Dado que la reproducción se reanuda
  - Cuando continúa
  - Entonces también recupera la cola de canciones que seguían pendientes antes de la pausa.

- CA 5: Fallback
  - Dado que no se pudo recuperar el estado anterior (por ejemplo, error en sincronización)
  - Cuando abro la app
  - No se muestra un mensaje de error, simplemente inicio en estado fresco (sin reproducción activa).
 
### Reproducción Continua (autoplay) [IA]

<!-- Status: Opcional | Puntos: 3 | Pack: V9 — Vibras Core -->

**Descripción**: Como **oyente**, quiero **que al terminar una canción la música continúe automáticamente con canciones afines** para **no interrumpir mi experiencia de escucha cuando no he definido una cola**.

**Criterios de aceptación**

- CA 1: Solicitud automática de siguiente
  - Dado que termina la canción y no hay siguientes en la cola
  - Cuando ocurre
  - Entonces el Player solicita a Catálogo/Ranking un siguiente canción afín usando como semilla el contexto de origen (último canción, playlist temática o radio por artista).

- CA 2: Indicador visible
  - Dado que suena un canción por Reproducción Continua (autoplay)
  - Cuando se muestra el Player
  - Entonces se indica claramente que es una sugerencia automática.

- CA 3: Control del usuario
  - Dado que suena un canción por Reproducción Continua (autoplay)
  - Cuando toco Siguiente o Desactivar autoplay
  - Entonces salta a otra sugerencia o se desactiva la continuidad automática.
  - El estado del autoplay se guarda como preferencia del usuario.

- CA 4: Coherencia con el origen
  - Dado que la Reproducción Continua (autoplay) viene de una playlist temática o radio por artista
  - Cuando continúe
  - Entonces mantiene la coherencia con esa temática o artista base durante el primer tramo de reproducción.

---


## Épica: Biblioteca

### Creación y Gestión de Playlists

**Descripción**: Como oyente o Artista, quiero crear y gestionar mis propias playlists para organizar mi música.

<!-- Status: Obligatoria -->

**Criterios de aceptación**

- CA 1: Creación de Nueva Playlist
  - Dado un usuario en su biblioteca musical
  - Cuando selecciona la opción 'Crear Playlist'
  - Entonces puede darle un nombre y una portada a su nueva playlist.

- CA 2: Añadir Canciones a Playlist
  - Dado un usuario está reproduciendo una canción o navegando
  - Cuando selecciona 'Añadir a Playlist' para una canción
  - Entonces puede elegir una playlist existente o la playlist recién creada para añadirla.

- CA 3: Visualización de Playlists
  - Dado un usuario accede a su biblioteca
  - Cuando selecciona la sección de 'Playlists'
  - Entonces se muestra un listado de todas sus playlists creadas, con su título y número de canciones.

- CA 4: Eliminar Canciones de Playlist
  - Dado un usuario está viendo el contenido de una playlist
  - Cuando selecciona una canción y elige 'Eliminar de Playlist'
  - Entonces la canción se remueve de esa playlist específica.
 
- CA 5: Privacidad de playlist
  - Dado que edito una playlist
  - Cuando cambio su estado a **Pública/Privada**
  - Entonces el enlace compartible sólo funciona si es **Pública**; si es **Privada**, el enlace no funciona.
 
- CA 6: Ficha de playlist
  - Dado que abro una playlist
  - Cuando se muestra su detalle
  - Entonces veo portada, owner y lista de canciones con acciones **Reproducir** y **Guardar**.

### Reordenamiento de Contenido en Playlists

<!-- Status: Obligatoria -->

**Descripción**: Como usuario, quiero **reordenar y gestionar el contenido de mis playlists** para **definir el orden de reproducción y organizar mejor mis listas** sin interrumpir lo que suena.

**Criterios de aceptación**

- CA 1: Activar Modo Edición de Playlist
  - Dado un usuario está visualizando una de sus playlists
  - Cuando selecciona la opción 'Editar Playlist'
  - Entonces se activa el modo de edición que permite reordenar o eliminar canciones.

- CA 2: Reordenar Canciones mediante Arrastrar y Soltar
  - Dado el modo de edición de playlist está activo
  - Cuando el usuario arrastra y suelta una canción a una nueva posición
  - Entonces la posición de la canción se actualiza dentro de la playlist.

- CA 3: Guardar Cambios de Orden
  - Dado el usuario ha reordenado canciones en una playlist
  - Cuando selecciona 'Guardar Cambios'
  - Entonces el nuevo orden de las canciones se persiste y se mantiene para futuras reproducciones.

- CA 4: Cola futura y reordenamiento
  - Dado que esa playlist está sonando
  - Cuando guardo el nuevo orden
  - Entonces el contexto actual **no cambia** (siguientes siguen igual).

### Historial de Reproducción

<!-- Status: Obligatoria -->

**Descripción**
Como oyente, quiero acceder a mi historial de reproducción con información enriquecida para poder redescubrir canciones que escuché recientemente, continuar donde las dejé y explorar de forma más fácil mi actividad musical.

**Criterios de aceptación**

- CA 1: Acceso rápido al historial
  - Dado que he reproducido varias canciones
  - Cuando accedo a la sección "Historial" desde mi perfil
  - Entonces veo inmediatamente la lista de canciones reproducidas recientemente, con la más reciente en primer lugar.

- CA 2: Información enriquecida en cada entrada
  - Dado que estoy viendo el historial
  - Cuando observo cada canción
  - Entonces cada entrada muestra título, artista, portada, nombre de la playlist o álbum (si aplica).

- CA 3: Filtros y búsqueda dentro del historial
  - Dado que tengo muchas canciones en mi historial
  - Cuando uso el buscador o filtro
  - Entonces el historial se actualiza mostrando solo los resultados que cumplen con el filtro o la búsqueda.

- CA 4: Continuar reproducción desde historial
  - Dado que estoy viendo el historial
  - Cuando selecciono una canción
  - Entonces la reproducción comienza desde el inicio de esa canción o, si estaba a medio escuchar y aún está en progreso, me ofrece continuar desde donde la dejé.

- CA 5: Limpiar historial / Pausar historial
  - Dado que quiero gestionar mi privacidad
  - Cuando selecciono **Limpiar historial** o **Pausar historial**
  - Entonces se elimina el historial existente o se detiene indefinidamente la recolección hasta reactivar.

### Liked Songs

**Descripción**: Como **oyente**, quiero **guardar canciones como favoritas** para **acceder rápidamente a ellas en el futuro**.

<!-- Status: Obligatoria -->

**Criterios de aceptación**

- CA 1: Añadir a Liked Songs
  - Dado que el usuario pulsa **Me Gusta** (corazón) en una canción (desde cualquier vista o desde el Player)
  - Entonces la canción queda **añadida a Liked Songs** en su Biblioteca.

- CA 2: Quitar de Liked Songs
  - Dado que una canción ya está en Liked Songs
  - Cuando el usuario vuelve a pulsar **Me Gusta**
  - Entonces la canción se **elimina de Liked Songs**.

- CA 3: Acceso y visualización
  - Dado que el usuario abre **Biblioteca > Liked Songs**
  - Entonces ve el listado de sus canciones marcadas, **ordenadas por agregado más reciente** (si no hay canciones, se muestra estado vacío).

- CA 4: Reproducción desde Liked Songs
  - Dado que el usuario está en **Liked Songs**
  - Cuando hace click/tap en una canción
  - Entonces la canción **se reproduce ahora** y el **contexto** pasa a ser **Liked Songs**; los “Siguientes” son el **resto de Liked Songs** según el orden actual o **Shuffle** si está activo.

### Creación Asistida de 'Mood Mixes' (IA)

<!-- Status: Opcional | Puntos: 5 | Pack: L10 — Biblioteca/IA -->

**Criterios de aceptación**

- CA 1: Generación de Mood Mix Sugerido
  - Dado un usuario explora la creación de una nueva playlist temática
  - Cuando selecciona la opción de 'Crear Mood Mix'
  - Entonces se le presenta una selección de canciones sugeridas por el sistema, basadas en su historial y 'Me Gusta'.

- CA 2: Afinidad de Sugerencias
  - Dado el sistema genera sugerencias para un Mood Mix
  - Cuando el usuario revisa las canciones sugeridas
  - Entonces las sugerencias deben tener una alta afinidad semántica o de estilo con las canciones que el usuario ha marcado como favoritas o ha escuchado repetidamente.

- CA 3: Añadir Sugerencias a Mix
  - Dado el usuario visualiza las canciones sugeridas
  - Cuando selecciona añadir una o varias canciones sugeridas a su Mood Mix
  - Entonces las canciones se añaden correctamente a la playlist en creación.

- CA 4: Alternativa sin LLM
  - Dado un usuario intenta crear un Mood Mix
  - Cuando el servicio de sugerencias no está disponible
  - Entonces el usuario puede proceder a crear una playlist manualmente sin sugerencias.


## Épica: Notificaciones

### Notificación por nuevo contenido y actividad seguida

<!-- Status: Obligatoria -->

**Descripción**: Como **usuario**, quiero **recibir notificaciones sobre lanzamientos de artistas que sigo, actividad de perfiles que sigo** para **mantenerme al día con lo que me interesa**.

**Criterios de aceptación**

- CA 1: Lanzamiento de artista seguido
  - Dado un usuario sigue a un artista
  - Entonces recibe una notificación cuando el artista **publica** un álbum/single o cuando **entra en vigencia** un lanzamiento **programado** (respetando región), con acceso directo a la ficha del lanzamiento.

- CA 2: Actividad de perfiles seguidos
  - Dado un usuario sigue a otro usuario
  - Entonces recibe una notificación cuando ese perfil **publica una playlist pública** o **comparte** una canción/playlist con él.
  - Opcionalmente, cuando **recibe un nuevo seguidor** o **un “me gusta”** en una playlist propia pública.

- CA 3: Configuración de notificaciones
  - Dado un usuario desea gestionar sus notificaciones
  - Entonces puede habilitar o deshabilitar **tipos/categorías** (Contenido, Social, Biblioteca) y fuentes (p. ej., artistas seguidos específicos).

- CA 4: Notificaciones por defecto
  - Dado el usuario omite la configuración de notificaciones
  - Cuando completa el onboarding
  - Entonces se activan por defecto las notificaciones **esenciales** (p. ej., lanzamientos de artistas seguidos y compartidos directos).

### Enrutamiento al hacer clic en notificaciones (Deep Link)

<!-- Status: Opcional | Puntos: 5 | Pack: N5 — Notifs Deep Links -->

**Descripción**: Como **usuario**, quiero que **al tocar una notificación** se abra **directamente la pantalla de destino correcta** (lanzamiento, playlist o perfil), para **actuar al instante sin tener que buscar**.

**Criterios de aceptación**

- CA 1: Lanzamiento de artista seguido → Ficha de lanzamiento
  - Dado que recibo una notificación por un **álbum/single publicado** o que **entra en vigencia** uno programado
  - Cuando toco la notificación
  - Entonces navego a la **ficha del lanzamiento**; si está **programado** aún no vigente, veo estado y **reproducción deshabilitada**; si es **no-disponible-región**, veo **indicador** y acciones deshabilitadas.

- CA 2: Actividad de perfiles seguidos → Destino por tipo
  - Dado que sigo a un perfil y recibo una notificación de actividad
  - Cuando toco la notificación
  - Entonces:
    - **Nueva playlist pública** → voy a la **ficha de la playlist**.
    - **Compartido directo** (canción/playlist) → voy al **detalle del contenido compartido**.
    - **Nuevo seguidor** → voy al **perfil del seguidor**.
    - **“Me gusta” en mi playlist pública** → voy a la **ficha de mi playlist** con foco en actividad.

- CA 3: Lectura y trazabilidad
  - Dado que ingreso al destino desde una notificación
  - Cuando la pantalla carga
  - Entonces la notificación queda **marcada como leída** en el **centro de notificaciones** y se registra **notification\_id, tipo, canal y timestamp** para métricas.

- CA 4: Contenido no disponible o retirado
  - Dado que el destino ya no existe o está retirado
  - Cuando toco la notificación
  - Entonces veo una **pantalla de fallback** con mensaje claro y accesos a **Explorar** o **perfil del artista** según corresponda.

- CA 5: Volver con estado
  * Dado que navegué al destino desde una notificación
  * Cuando regreso
  * Entonces vuelvo al **centro de notificaciones** manteniendo **posición y filtros** previamente aplicados.

---


## Épica: Métricas

### Métricas de canciones y álbumes

<!-- Status: Obligatoria | Puntos: 3 | Pack: P10. Métricas & Analítica -->

**Descripción**: Como **administrador o analista**, quiero **visualizar métricas clave de canciones y álbumes** para **entender su rendimiento y tomar decisiones informadas**.

**Criterios de aceptación**

- CA 1: Métricas de canciones
  - Dado el usuario está viendo los detalles de una canción
  - Entonces debe poder ver métricas asociadas a esa canción, como número de reproducciones, 'me gusta' y veces compartida.

- CA 2: Métricas de álbumes
  - Dado el usuario está viendo los detalles de un álbum
  - Entonces debe poder ver métricas asociadas a ese álbum, como número total de reproducciones de sus canciones, número de 'me gusta' del álbum y veces compartido.

- CA 3: Actualización de métricas
  - Dado una canción o álbum es reproducido o interactuado
  - Entonces las métricas correspondientes deben actualizarse en tiempo real o con una frecuencia razonable.

- CA 4: Visualización de métricas
  - Dado el usuario accede a la sección de métricas
  - Entonces las métricas deben presentarse de forma clara y comprensible, posiblemente con gráficos o resúmenes.

### Métricas de usuario

<!-- Status: Obligatoria | Puntos: 5 | Pack: P10. Métricas & Analítica -->

**Descripción**: Como **administrador o analista**, quiero **ver métricas de uso, crecimiento y retención** para **evaluar la salud del producto y detectar oportunidades**.

**Criterios de aceptación**

- CA 1: Visualización de métricas de usuario
  - Dado como administrador, quiero ver un panel con las métricas clave de uso de la aplicación (usuarios activos, nuevos registros, retención)
  - Entonces el panel debe mostrar claramente estas métricas con gráficos actualizados en tiempo real y la posibilidad de filtrar por período de tiempo (diario, semanal, mensual).

- CA 2: Exportación de métricas
  - Dado como administrador, necesito poder exportar los datos de las métricas de usuario
  - Entonces debería existir una opción para exportar las métricas en formato CSV o Excel, permitiendo su análisis posterior.

- CA 3: Detalle de métricas
  - Dado como analista, quiero poder profundizar en las métricas de usuario para entender patrones
  - Entonces al hacer clic en una métrica específica, debería poder ver un desglose más detallado, como la demografía de los usuarios o su actividad principal.

---

### Métricas de artistas

<!-- Status: Opcional | Puntos: 5 | Pack: P10. Métricas & Analítica -->

**Descripción**:  **administrador**, quiero **ver un panel con las métricas clave del artista** para **entender el desempeño del catálogo, los mercados donde crece y qué contenidos impulsan la escucha**.

**Criterios de aceptación**

- CA 1: KPIs principales
  - Dado que abro el panel del artista
  - Entonces veo **oyentes mensuales** (valor mensual actualizado diariamente), **seguidores**, **reproducciones del período**, **guardados** y **compartidos**, con **variación vs. período anterior** (∆ y %).

- CA 2: Filtros por período y región
  - Dado el panel
  - Cuando aplico filtros **diario/semanal/mensual** o **rango custom** y **región/país**
  - Entonces todos los gráficos y tablas se **actualizan** al instante respetando esos filtros.

- CA 3: Desgloses navegables
  - Dado el panel filtrado
  - Entonces veo:
    - **Top canciones del artista** (por reproducciones y/o guardados).
    - **Top mercados** (país/región por reproducciones).
    - **Top playlists** que incluyen canciones del artista.
  - Y **al hacer clic** en una canción/playlist/mercado, navego al **detalle correspondiente** (o se aplica el filtro).

- CA 4: Actualización y sello de frescura
  - Dado el panel visible
  - Entonces cada vista indica **“Última actualización: {timestamp}”** y los datos se **actualizan en tiempo razonable** (al menos **diariamente**).

- CA 5: Exportación
  - Dado un desglose (canciones, mercados, playlists)
  - Cuando selecciono **Exportar**
  - Entonces descargo **CSV o Excel** con los resultados del filtro aplicado.

---

## Épica: Social

### Seguimiento de Perfiles de Usuario

**Descripción**: Como usuario, quiero seguir y dejar de seguir a otros usuarios para poder ver su actividad y recibir actualizaciones relacionadas con ellos.

<!-- Status: Opcional | Puntos: 2 | Pack: P3. Social + Notificaciones -->

**Criterios de aceptación**

- CA 1: Seguir a un usuario
  - Dado que estoy viendo el perfil de otro usuario
  - Cuando selecciono la opción 'Seguir'
  - Entonces el perfil del usuario se añade a mi lista de seguidos y yo aparezco en su lista de seguidores.

- CA 2: Dejar de seguir a un usuario
  - Dado que estoy siguiendo a otro usuario
  - Cuando selecciono la opción 'Dejar de seguir'
  - Entonces el perfil del usuario se elimina de mi lista de seguidos y yo desaparezco de su lista de seguidores.

- CA 3: Visualización de lista de seguidos
  - Dado que estoy en mi perfil
  - Cuando accedo a la sección 'Seguidos'
  - Entonces veo una lista de todos los usuarios a los que estoy siguiendo.

- CA 4: Visualización de seguidores
  - Dado que estoy en mi perfil
  - Cuando accedo a la sección 'Seguidores'
  - Entonces veo una lista de todos los usuarios que me siguen.

### Visualización de Actividad de Amigos

<!-- Status: Opcional | Puntos: 3 | Pack: S7 — Social Base -->

**Criterios de aceptación**

- CA 1: Feed de actividad de amigos
  - Dado que sigo a otros usuarios
  - Cuando accedo a la sección 'Inicio' o 'Feed'
  - Entonces veo un resumen de la actividad reciente de mis amigos (ej. canciones que les gustaron, playlists creadas).

- CA 2: Detalle de actividad de amigo
  - Dado que veo una actividad de un amigo en el feed
  - Cuando selecciono la actividad
  - Entonces se me redirige al contenido asociado (ej. a la canción, a la playlist).

- CA 3: Filtrar actividad por tipo
  - Dado que veo el feed de actividad
  - Cuando selecciono un filtro (ej. 'Canciones favoritas')
  - Entonces la vista se actualiza para mostrar solo las actividades del tipo seleccionado.

### Compartir Canciones y Playlists

<!-- Status: Opcional | Puntos: 2 | Pack: S7 — Social Base -->

**Criterios de aceptación**

- CA 1: Compartir canción en el feed de actividad
  - Dado que estoy escuchando una canción
  - Cuando selecciono la opción 'Compartir' y elijo un amigo.
  - Entonces la canción se compartirá en su feed de actividad y podrán acceder a ella.

- CA 2: Compartir playlist públicamente
  - Dado que he creado una playlist
  - Cuando selecciono la opción 'Compartir' y elijo hacerla pública
  - Entonces la playlist estará disponible en mi perfil para que otros usuarios la vean y escuchen.

- CA 3: Compartir externamente
  - Dado que quiero compartir una canción o playlist
  - Cuando selecciono la opción 'Compartir' y elijo una red social o app de mensajería
  - Entonces se genera un enlace que puedo pegar o enviar a través de la plataforma externa seleccionada.

## Épica: Vibras

### Playlists temáticas por contexto [IA]

<!-- Status: Opcional | Puntos: 3 | Pack: V9 — Vibras Core -->

**Descripción**: Como oyente, quiero ver playlists temáticas (p. ej., Chill, Energía AM, Focus, Workout) ajustadas a la franja horaria o efemérides/temporadas (p. ej., Halloween, Navidad, verano) para poner música rápido sin buscar.

**Criterios de aceptación**

- CA 1: Selección por hora/fecha
  - Dado que abro **Explorar**
  - Cuando hay una **franja horaria** activa o una **efeméride/temporada** vigente
  - Entonces veo **2–4 playlists** temáticas alineadas a ese contexto (por ej. si coinciden Navidad + mañana, prioriza navidad).

- CA 2: Ocultar playlist temática
  - Dado una playlist contextual mostrada
  - Cuando se indica su **motivo** ("Mañana", "Halloween") y la **oculto**
  - Entonces esa playlist **no vuelve a priorizarse por 30 días**.

### Radio por Canción \[IA]

<!-- Status: Opcional | Puntos: 3 | Pack: V9 — Vibras Core -->

**Descripción**: Como **oyente**, quiero **iniciar una radio desde una canción** para **descubrir música similar de forma continua y sin esfuerzo**.

**Criterios de aceptación**

- CA 1: Inicio
  - Dado la ficha de una canción o el Player
  - Cuando selecciono **Iniciar radio desde esta canción**
  - Entonces se crea una nueva **cola** *“Radio de {Canción}”* con la canción semilla (si ya suena, continúa) y los **siguientes**.

- CA 2: Composición
  - Dado la radio activa
  - Cuando se generan los siguientes
  - Entonces incluyen canciones del **artista de la semilla**, **artistas similares** y **afines**; **no duplica** canciones recientes de la sesión.

- CA 3: Feedback
  - Dado que escucho la radio
  - Cuando marco **Me Gusta** canción/artista
  - Entonces las **siguientes selecciones se ajustan** en la sesión y se **registran** como señal para futuras Radios por Canción.

- CA 4: Controles y contexto
  - Dado la radio en curso
  - Cuando abro Player/cola
  - Entonces veo el **indicador** *“Radio de {Canción}”* ; si inicio manualmente otro contexto (álbum/playlist), la **radio se detiene**
  - Dado que el contexto se cambia nuevamente a la radio, se crea una **nueva Radio por Canción**.

### Auto Play (nuevo contexto) \[IA]

<!-- Status: Opcional | Puntos: 3 | Pack: P1. Descubrimiento & Vibras Core -->

**Descripción**: Como **oyente**, quiero que **al terminar mi contexto actual** (playlist/álbum/EP/single/radio) se **inicie una nueva sesión “Auto Play”** con **15 canciones afines**, **independiente del contexto original**, para **seguir escuchando sin interrupciones**.

**Criterios de aceptación**

- CA 1: Disparo y corte de contexto
  - Dado que termina la última canción y **no hay siguientes**
  - Cuando Auto Play está **activado**
  - Entonces se **cierra** el contexto original y se crea un **nuevo contexto**, que no es una Colección, con **15 canciones** añadidos a la cola.

- CA 2: Señalización clara
  - Dado que inicia Auto Play
  - Entonces el Player/cola muestran **“Auto Play”** como **contexto activo**; **no** se muestra el nombre del contexto anterior.

- CA 3: Composición de la cola
  - Dado el bloque de Auto Play
  - Entonces las 15 canciones son **afines al gusto del oyente y a la última canción** y **respetan** disponibilidad, bloqueos, etc.

- CA 4: Control del usuario
  - Dado Auto Play activo
  - Cuando el usuario **desactiva Auto Play** y se termina la cola.
  - Entonces se **detiene** la autogeneración (sesión efímera).

- CA 5: Continuidad y fallback
  - Dado que se consumen las 15 y Auto Play sigue **activado**
  - Entonces se **genera otro bloque** de hasta 15; si no hay sugerencias, la reproducción **se detiene** sin error.

---

## Épica: Onboarding Usuario

### Captura Inicial de Géneros Favoritos

<!-- Status: Opcional | Puntos: 2 | Pack: P9. Onboarding + Acceso Rápido -->

**Descripción**: Como **nuevo usuario**, quiero **seleccionar mis géneros musicales favoritos durante el onboarding** para **recibir recomendaciones iniciales que se ajusten a mis gustos**.

**Criterios de aceptación**

- CA 1: Selección de Géneros
  - Dado un nuevo usuario inicia sesión por primera vez
  - Cuando se le presenta la pantalla de configuración inicial
  - Entonces puede seleccionar hasta 5 géneros musicales de una lista predefinida.

- CA 2: Guardado de Preferencias
  - Dado el usuario ha seleccionado sus géneros favoritos
  - Cuando confirma la selección
  - Entonces sus preferencias de géneros se guardan en su perfil de usuario.

- CA 3: Uso para Recomendaciones Iniciales
  - Dado las preferencias de géneros han sido guardadas
  - Cuando el usuario navega a la sección de descubrimiento
  - Entonces las recomendaciones iniciales se basan en los géneros seleccionados y se usan como semillas iniciales del Catálogo/Ranking.

- CA 4: Omitir Selección
  - Dado un nuevo usuario no desea seleccionar géneros en ese momento
  - Cuando llega a la pantalla de configuración inicial
  - Entonces puede omitir este paso y proceder a la aplicación sin preferencias iniciales registradas.

### Asistente de Artistas Favoritos

<!-- Status: Opcional | Puntos: 2 | Pack: P9. Onboarding + Acceso Rápido -->

**Descripción**: Como **nuevo usuario**, quiero **seleccionar algunos de mis artistas favoritos durante el onboarding** para **ayudar a la plataforma a entender mis preferencias musicales desde el principio**.

**Criterios de aceptación**

- CA 1: Búsqueda y Selección de Artistas
  - Dado el usuario se encuentra en el flujo de onboarding
  - Cuando se le presenta la opción de buscar artistas
  - Entonces puede buscar artistas y añadir hasta 3 a su lista de favoritos.

- CA 2: Visualización de Artistas Añadidos
  - Dado el usuario ha seleccionado sus artistas favoritos
  - Cuando revisa la pantalla de onboarding
  - Entonces ve una lista clara de los artistas que ha añadido.

- CA 3: Integración con Motor de Recomendación
  - Dado los artistas favoritos han sido registrados
  - Cuando se generan las primeras recomendaciones
  - Entonces estas recomendaciones consideran la afinidad con los artistas seleccionados.

- CA 4: Opción de Saltarse Paso
  - Dado el usuario no recuerda artistas o no desea añadirlos
  - Cuando se le presenta la pantalla de artistas favoritos
  - Entonces puede continuar el onboarding sin añadir artistas.

### Personalización de Notificaciones Iniciales

<!-- Status: Opcional | Puntos: 1 | Pack: P9. Onboarding + Acceso Rápido -->

**Descripción**: Como **nuevo usuario**, quiero **configurar mis preferencias de notificación durante el onboarding** para **controlar qué tipo de alertas recibiré de la plataforma**.

**Criterios de aceptación**

- CA 1: Opciones de Notificaciones
  - Dado el usuario está en el flujo de onboarding
  - Cuando se le presenta la pantalla de configuración de notificaciones
  - Entonces puede activar o desactivar notificaciones sobre nuevas recomendaciones, actualizaciones de artistas seguidos y playlists.

- CA 2: Guardado de Preferencias de Notificación
  - Dado el usuario ha seleccionado sus preferencias de notificación
  - Cuando confirma la configuración
  - Entonces estas preferencias se guardan en su perfil y se configuran las notificaciones correspondientes.

- CA 3: Notificaciones por Defecto
  - Dado el usuario omite la configuración de notificaciones
  - Cuando completa el onboarding
  - Entonces se le activan un conjunto predeterminado de notificaciones consideradas esenciales.

- CA 4: Acceso Posterior a Configuración
  - Dado el usuario ha completado el onboarding
  - Cuando accede a la configuración de su cuenta
  - Entonces puede modificar sus preferencias de notificación en cualquier momento.


---

## Entrega y Requerimientos del TP

Se pide **implementar un proyecto que cumpla las historias de usuario mencionadas anteriormente**. A continuación detallamos algunos atributos característicos que debe cumplir este proyecto.

### Componentes

La plataforma constará de los siguientes componentes:

### Aplicación mobile

Una aplicación mobile, el cual será utilizado por los usuarios.
_Las tecnologías a utilizar son detalladas en la sección [tecnologías](#tecnologias)_

### Backoffice web

Un backoffice web, el cual será utilizado por los administradores. 

_Las tecnologías a utilizar son detalladas en la sección [tecnologías](#tecnologias)_

### Servicios backend

Distintos servicios de backend para brindar soporte a la plataforma. Como enfoque se recomienda orientar estos servicios hacia una arquitectura de [microservices](https://martinfowler.com/articles/microservices.html). Dicha arquitectura propuesta deberá ser convalidada junto al ayudante. 
_Las tecnologías a utilizar son detalladas en la sección [tecnologías](#tecnologias)_

Pedimos que tengan por lo menos **dos** microservicios, cada uno hecho en **distintos lenguajes de programación**. También les pedimos que utilicen al menos **dos** tecnologías distintas para la base de datos, una SQL y otra NoSQL.
___

### Tecnologias

Stack de tecnologías recomendadas para el desarrollo de los distintos componentes.

#### Aplicación mobile

Para el desarrollo de la App recomienda usar [React Native](https://reactnative.dev/). Se puede optar por usar **Expo** encima de React Native, o no.

___

#### Servicios backend

Para el desarrollo de los servicios backend se recomienda utilizar como lenguajes de programación:
- [Python](https://www.python.org/)
- [JavaScript](https://developer.mozilla.org/es/docs/Web/JavaScript)
- [Go](https://go.dev/)

Junto con sus respectivos frameworks. La cátedra recomienda alguno de estos
- Python:
  - [FastAPI](https://fastapi.tiangolo.com/)
  - [Flask](https://flask.palletsprojects.com/en/1.1.x/)
  - [Django](https://www.djangoproject.com/)
  - [Tornado](https://www.tornadoweb.org/en/stable/)
  
- JavaScript:
  - [NodeJs](https://nodejs.org/es/)
  - [Express](https://expressjs.com/)
  - [Fastify](https://www.fastify.io/)
  - [Nest.js](https://nestjs.com/)

 - GO:
   - [Gin](https://github.com/gin-gonic/gin)

Se recomiendan como base de datos alguna de las siguientes 
- [PostgreSQL](https://www.postgresql.org/)
- [MongoDB](https://www.mongodb.com/es)

Esta elección será responsabilidad del grupo y la misma deberá estar consensuada junto al ayudante. Además quedará justificada en la documentación técnica que formará parte del TP.

___

#### Backoffice web
Para el desarrollo del backoffice web se podrán utilizar las siguientes herramientas
  - [React](https://reactjs.org/)
  - [Vue.js](https://vuejs.org/)
  - [Next.js](https://nextjs.org/)

___

#### Contenido multimedia
Para el uso de contenido multimedia se recomienda utilizar el servicio provisto por Supabase Storage. 

Alternativamente se puede optar por firebase [Storage](https://firebase.google.com/docs/storage?hl=es)

___

#### Chat
Para el uso del chat en tiempo real se recomienda utilizar el servicio provisto por Supabase Realtime. 

Alternativamente se puede optar por firebase [Real time database](https://firebase.google.com/docs/database?hl=es)

___

#### Notificaciones 

##### Push
Para el uso de notificaciones push se recomienda utilizar el servicio provisto por firebase [Cloud Messaging](https://firebase.google.com/docs/cloud-messaging?hl=es)


##### Mensajeria whatsapp/SMS
Para el uso de mensajería con SMS se recomienda utilizar el servicio provisto por [Twilio](https://www.twilio.com/docs/sms)

___

### Log

Los servidores deben contar con un sistema de log en donde se registren los eventos que se generen durante la ejecución. El sistema de log debe permitir configurar el nivel de los eventos que desean registrar. Estos niveles son:

| Nivel | Condiciones |
| ----- | ----------- |
| Error | Condición de falla catastrófica, el sistema no puede funcionar. (criterio de las 2 a.m.) Condición que haga que la aplicación no pueda ejecutar una funcionalidad. Ejemplo: No es posible conectarse con la base de datos |
| Warn | Cualquier condición anómala que afecte el funcionamiento del sistema, pero no impida la funcionalidad básica Ejemplos: Uso de APIs deprecadas, Mal uso de APIs |
| Info | Cualquier acción correspondiente a un caso de uso iniciada por el usuario o el sistema. Información que permita trazar el historial de las entidades. Ejemplos: Conexión a la base de datos exitosa, Conexión de nuevo cliente |
| Debug | Información de contexto que permita resolver un problema técnico. Debe ser útil incluso sin el código fuente Ejemplo:  Datos de login para la DB |


Estos logs deberán ser almacenados de tal manera que puedan ser accedidos en cualquier momento


___

### Monitoreo

Para el monitoreo de los servicios se recomiendan alguna de las siguientes librerías/plataformas

- [Datadog](https://www.datadoghq.com/blog/datadog-github-student-developer-pack/)
- [New Relic](https://blog.newrelic.com/product-news/simple-pricing/)
- [Prometheus](https://prometheus.io/)
- [Grafana](https://grafana.com/)

___

### Empaquetamiento

Cada uno de los desarrollos solicitados debe empaquetarse a través de Docker, soportando las mejores prácticas para armar imágenes ligeras y fácilmente desplegables en la plataforma elegida.

___

### Testing

El desarrollo de la aplicación se deberá adaptar a los estándares de calidad utilizados por AppMaker©. Dentro de estos estándares se encuentran:

* Pruebas unitarias
* Métricas: code coverage debe ser mayor a 75%
* Respetar estándar para estilo de codificación: Lint
* Pruebas de integración.
* Todas aquellas que se consideren convenientes para garantizar la calidad de las aplicaciones desarrolladas.
 
**Nota:** Esta sección hace sólo referencia a los servicios de backend No se toma como requerimiento el realizar pruebas sobre el cliente Android, aunque es recomendado como una buena práctica.

___

### CI-CD

Las pruebas y métricas anteriormente mencionadas deberán correr bajo una plataforma de integración continua. 

Se sugiere el uso de [GitHub Actions](https://github.com/features/actions) o [Gitlab Pipelines](https://docs.gitlab.com/ee/ci/pipelines/), pero se podrá utilizar otro previa justificación.

El resultado del _code coverage_ debe ser desplegado automáticamente a una plataforma que permita visualizarlas, entre muchas posibilidades se encuentran:

* [Coveralls](https://coveralls.io/)
* [Codecov](https://codecov.io/)
* Utilizar [Github Pages](https://pages.github.com/) para generar una web para visualizarlo

Finalmente, el despliegue al servidor de _PAAS_ elegido deberá ser automático. Este deberá tener en cuenta como la actualización de la base de datos (cambios en las tablas, etc). El mecanismo utilizado para disparar dicho despliegue (utilizar el branch _master_ como productivo, utilizar un tags con nombre especial) será definido por los desarrolladores y deberá ser detallado en la documentación

___

### Despliegue en la Nube

Los servicios, se deberán disponibilizar en la nube utilizando una plataforma como servicio (_[PAAS](https://en.wikipedia.org/wiki/Platform_as_a_service)_).
La catedra recomienda leer la (sección)[https://ingenieria-del-software-2.github.io/blog/2025-09-11-cloud-computing] del sitio de la materia para informarse las distintas opciones disponibles
 

___

### Despliegue usando k8s

De manera optativa se podrá realizar una migración de los servicios backend de la plataforma a kubernetes

___

### UX

Se deberá presentar evidencia de prototipado del diseño de pantallas, las cuales serán convalidadas junto al ayudante a cargo

Para el diseño de la interfaz se valorara el uso de las guías de diseño propuestas por Google con _[Material Design](https://material.io/design/)_.


___

### Documentación


Se deberá entregar un informe final a modo Bitácora de proyecto, disponible en [Github Pages](https://pages.github.com/). Allí se deberá escribir
- Diagrama(s) de arquitectura
- Decisiones de arquitectura tomadas a lo largo del proyecto (por qué tienen los microservicios que tienen, por qué usaron las tecnologías que usaron)
- Funcionalidades incompletas o que les hubiera gustado pulir más, errores conocidos en la entrega final
- Problemas encontrados y lecciones aprendidas a lo largo del proyecto
- Opcionalmente, demostraciones de features o implementaciones que quieran hacer énfasis y mostrar porque creen que les haya quedado bien.

_Se espera que dicha documentación se elabore de manera incremental y que cada entrega parcial tenga parte de la misma._

___

## Instancias de entrega

| Instancia   |      Fecha      |  Alcance |
|----------|:-------------:|------:|
| Checkpoint 1 | 22/09 | A definir |
| Checkpoint 2 |  20/10 | A definir |
| Checkpoint 3 |  13/11  | A definir |
| Entrega Final | 4/12 | A definir |
    
___
---
