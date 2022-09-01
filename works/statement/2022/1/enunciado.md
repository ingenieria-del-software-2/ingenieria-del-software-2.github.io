# Spotifiuby

![Logo](logo.png)

## Indice

1. [Descripción](#descripción)
2. [Condiciones de aprobación](#condiciones-de-aprobación)
3. [Requisitos](#requisitos)
    1. [Épicas](#epicas)
       1. [Usuarios](#usuarios)
       2. [Perfil](#perfil)
       3. [Búsquedas](#búsquedas)
       4. [Listener](#listener)
       5. [Artista](#artista)
       6. [Playlist](#playlist)
       7. [Mensajes](#mensajes)
       8. [Calificaciones](#calificaciones)
       9. [Cobros y pagos](#cobros-y-pagos)
       10. [Notificaciones](#Notificaciones)
       11. [Administración de usuarios](#administración-de-usuarios)
       12. [Administración de contenidos](#administración-de-contenidos)
       13. [Administración de servicios](#administración-de-servicios)
       14. [Métricas](#métricas)
    2. [Historias de Usuario](#historias-de-usuario)
4. [Requisitos No Funcionales](#requisitos-no-funcionales)
    1. [Componentes](#componentes)
    2. [Tecnologias](#tecnologias)
    3. [Log](#log)
    4. [Monitoreo](#monitoreo)
    5. [Empaquetamiento](#empaquetamiento)
    6. [Testing](#testing)
    7. [CI-CD](#ci-cd) 
    8. [Despliegue en la Nube](#despliegue-en-la-nube)
    9. [Despliegue usando k8s](#despliegue-usando-k8s)
    10. [UX](#ux)
    11. [Documentación](#documentación)
5. [Instancias de entrega](#instancias-de-entrega)
6. [Historias requeridas y optativas](#historias-requeridas-y-optativas)
    1. [Requeridas](#requeridas)
    2. [Optatitvas](#optativas)
7. [Material de referencia](#material-de-referencia)

## Descripción

Una importante empresa ha decidido encargarnos el desarrollo de una plataforma digital llamada Spotifiuby dedicada la difusión de música online.
El espíritu de esta plataforma es poder brindar una conexión entre los usuarios y los artistas de sus canciones favoritas.

Para esto existen distintos tipos de suscripciones, tanto gratuitas como pagas. Donde al contar con una suscripción premium se podrá acceder a contenido exclusivo.


## Condiciones de aprobación

Cada historia de usuario tiene asociada una cierta cantidad de puntos, además, algunas son consideradas obligatorias y otras opcionales.
Para considerar aprobado el trabajo, se requiere cumplir una cierta cantidad de puntos asociados a las historias de usuario. 
Esta cantidad de puntos asociados está compuesto por los puntos provenientes de historias de usuario obligatorias y luego cada grupo deberá escoger entre las historias opcionales para llegar a cumplir con la cantidad de puntos.

Por ejemplo:
- Se requieren 100 puntos provenientes de historias de usuario para aprobar el trabajo.
- Existen 70 puntos que provienen de historias de usuario obligatorias. Entonces todo grupo deberá cumplir con estas historias.
- Los 30 puntos restantes deberán provenir de historias optativas donde el grupo decidirá cuales implementar para llegar a tal numero.

## Requisitos

A continuación se describirán una serie de Épicas e Historias de usuario indicando la funcionalidad a cumplir por la plataforma. 

_En caso de que se observe alguna definición ambigua o la falta de la misma, esta debe ser aclarada y definida por el grupo junto a su corrector_ 

### Épicas

<!-- Registro y login -->

#### Usuarios
Como usuario quiero poder registrarme y tener una cuenta para poder acceder a los servicios de la plataforma.

Historias de usuario relacionadas:
 - [Registro](#registro-de-usuarios)
 - [Login con email y contraseña](#login-de-usuarios-con-usuario-y-contraseña)
 - [Login con datos biométricos](#login-con-datos-biométricos)
 - [Login con proveedor de identidad federada](#login-de-usuarios-con-proveedores-de-identidad-federada)
 - [Recupero de contraseña](#recupero-de-contraseña)
 - [Registro Administradores](#registro-de-administradores)
 - [Login Administradores](#login-de-administradores)
 - [Notificación de PIN en proceso de registro](#notificación-de-pin-en-proceso-de-registro)

<!-- Perfil -->

#### Perfil

Como usuario quiero poder editar mi perfil y acceder tanto a mi perfil como al de otros usuarios para conocer y que me conozcan otros usuarios.

Historias de usuario relacionadas:
 - [Edición de perfil](#edición-de-perfil)
 - [Visualización de perfil propio](#visualización-de-perfil-propio)
 - [Visualización de perfil de otros usuarios](#visualización-de-perfil-de-otros-usuarios)

<!-- Búsquedas -->

#### Búsquedas
Como listener quiero poder realizar búsquedas de canciones o álbumes con distintos filtros para visualizar los que me interesen

Historias de usuario relacionadas:
 - [Home](#home)
 - [Búsquedas por género](#búsqueda-de-canción-o-álbum-por-género)
 - [Búsquedas por suscripción](#búsqueda-de-canción-o-álbum-por-suscripción)
 - [Búsquedas por artista](#búsqueda-de-canción-o-álbum-por-artista)
 - [Recomendación de canciones](#recomendación-de-canciones)
 
<!-- listener-->

#### Listener

Como listener quiero poder adherirme a distintas suscripciones y que eso impacte en el contenido que tengo disponible, y que mis preferencias se tomen en cuenta en la plataforma.

Historias de usuario relacionadas:
 - [Inscripción a suscripción](#inscripción-a-suscripción)
 - [Modificación de suscripción](#modificación-de-suscripción)
 - [Reproducir contenido](#reproducir-contenido)
 - [Seguir artista](#seguir-artista)
 - [Contenidos favoritos](#contenidos-favoritos)

<!-- Artista -->

#### Artista

Como artista quiero poder subir nuevas canciones y álbumes para que se puedan escuchar dentro de la plataforma

Historias de usuario relacionadas:
 - [Creación de canción](#creación-de-canción)
 - [Creación de album](#creación-de-album)
 - [Edición de album](#edición-de-album)
 - [Listado de álbumes](#listado-de-álbumes)
 - [Transmisión en directo](#transmisión-en-directo)
 - [Métricas del artista](#métricas-del-artista)
 - [Certificado de artista reconocido](#certificado-de-artista-reconocido)


 <!-- Playlist -->

#### Playlist

Como listener quiero poder usar playlists para agrupar canciones que me gusten.

 - [Crear playlist](#crear-playlist)
 - [Editar playlist](#editar-playlist)
 - [Playlist colaborativa](#playlist-colaborativa)
 - [Compartir playlist](#compartir-playlist)


<!-- Mensajes TODO-->

#### Mensajes

Como listener quiero poder enviar mensajes 
 
Historias de usuario relacionadas:
 - [Comentar un album](#comentar-un-album)
 - [Remover comentarios de un album](#remover-comentarios-de-un-album)
 - [Mensajes privados](#mensajes-privados)
 
 <!-- Calificaciones -->


#### Calificaciones

Como listener quiero poder calificar los albumes que existen en la plataforma.

Historias de usuario relacionadas:
 - [Calificación cuantitativa de un album](#calificación-cuantitativa-de-una-album)
 - [Calificación cualitativa de un album](#calificación-cualitativa-de-una-album)

<!-- Cobros y pagos -->

#### Cobros y pagos

Como usuario quiero poder tener una billetera virtual en la plataforma para poder hacer pagos, retirar y depositar.

Historias de usuario relacionadas:
 - [Pagos de suscripción](#pago-de-suscripción)
 - [Aporte para artista](#aporte-para-artista)
 - [Retiro de fondos](#retiro-de-fondos)
 - [Utilización de stablecoin](#utilización-de-stablecoin)
 
<!-- Notificaciones TODO-->

#### Notificaciones

Como usuario quiero recibir notificaciones al dispositivo que utilizo para informarme sobre actividades en la plataforma

Historias de usuario relacionadas:
 - [Notificación por nuevo mensaje](#notificación-por-nuevo-mensaje)
 - [Notificación por nueva canción de artista](#notificación-por-nueva-canción-de-artista)
 - [Notificación por transmisión en directo](#notificación-por-transmisión-en-directo)
 - [Notificación por hito de seguidores](#notificación-por-hito-de-seguidores)
 

<!-- Administración de usuarios TODO -->

#### Administración de usuarios

Como administrador del sistema quiero poder gestionar los usuarios que están registrados en el mismo para administrar su uso

Historias de usuario relacionadas:
 - [Listar usuarios del sistema](#listar-usuarios-del-sistema)
 - [Visualizar perfil de usuario](#visualizar-perfil-de-usuario)
 - [Visualizar métricas de usuario](#visualizar-métricas-de-usuario) 
 <!-- La anterior se refiere a viajes cancelados/viajes realizados/calificaciones/etc especificas del usuario -->
 - [Bloquear usuario](#bloquear-usuario)
 - [Listar transacciones](#listar-transacciones)
 - [Carga de saldo](#carga-de-saldo)

<!-- Administración de servicios TODO -->

#### Administración de servicios

Como administrador del sistema quiero poder gestionar los servicios que se encuentran en el mismo para administrar su uso

Historias de usuario relacionadas:
 - [Listado de servicios](#listado-de-servicios)
 - [Visualización de servicio](#visualización-de-servicio)
 - [Alta de servicio](#alta-de-servicio)
 - [Bloqueo de servicio](#bloquear-de-servicio)

<!-- Métricas TODO -->

#### Métricas

Como administrador del sistema quiero poder visualizar métricas e información de la plataforma para evaluar el estado del negocio

Historias de usuario relacionadas:
- [Métricas de usuarios](#métricas-de-usuarios)
- [Métricas de contenido](#métricas-de-contenido)
- [Métricas de transacciones](#métricas-de-transacciones)


___

### Historias de Usuario

<!-- Registro y login -->

___

#### Registro de usuarios

**Descripción**

- Como usuario no registrado quiero registrarme en la plataforma para acceder a las funcionalidades del sistema. Los usuarios podran ser de dos tipos:


- Viajero: Carga saldo en la plataforma para poder usar el servicio de viaje

- Chofer: Genera ingresos con la plataforma y provee el servicio de viaje

_En el resto de los CA se utilizará la nomenclatura Usuario como un usuario registrado_

**Criterios de aceptación**

- CA 1: Registro exitoso
  - Cuando el registro del usuario es correcto.
  - Entonces el sistema creará un nuevo usuario con su perfil y billetera correspondiente. Luego permitirá el ingreso al sistema.
- CA 2: Obtención de ubicación (Para viajer)
  - Cuando el registro del usuario es correcto.
  - Entonces el sistema deberá solicitarle/obtener del proveedor de identidad al usuario datos basicos sobre su persona
- CA 3: Obtención de perfil (Para chofer)
  - Cuando el registro del usuario es correcto.
  - Entonces el sistema deberá solicitarle al usuario datos sobre su persona y el vehiculo que utilizara. 
- CA 4: Falta uno o más campos obligatorios
  - Cuando el registro del usuario es incorrecto debido a un ingreso erróneo o faltante de campos. 
  - Entonces el sistema indicará los campos faltantes y/o erróneos y no permitirá el ingreso al sistema.
- CA 5: Registro fallido
  - Cuando el registro del usuario falla debido a un error del servicio.
  - Entonces el sistema indicará un mensaje de error acorde al usuario.

#### Notificación de PIN en proceso de registro

**Descripción**
- Como usuario quiero poder recibir una notificación a mi whatsapp con un código de seguridad, para confirmar mi registración

**Criterios de aceptación**
- CA 1: Notificación whatsapp:
  - Cuando un usuario se registra de manera exitosa en la plataforma
  - Entonces deberá  recibir un mensaje de whatsapp con un PIN generado por la plataforma, para confirmar la registración 


___

#### Login de usuarios con usuario y contraseña

**Descripción**

- Como Usuario quiero ingresar a mi cuenta en la plataforma utilizando usuario y contraseña para acceder a las funcionalidades del sistema

**Criterios de aceptación**

- CA 1: Login exitoso con correo electrónico y contraseña
  - Cuando el login del usuario utilizando correo electrónico y contraseña es correcto
  - Entonces el sistema permitirá el ingreso al sistema
  - En caso contrario se deberá mostrar un mensaje de error acorde al usuario.
- CA 2: Login fallido
  - Cuando el login del usuario falla debido a un error del servicio.
  - Entonces el sistema indicará un mensaje de error acorde al usuario.
- CA 3: Sesión expirada
  - Cuando la sesión del usuario excede el tiempo de expiración
  - Entonces el sistema solicitará al usuario nuevamente el login
- CA 4: Usuario bloqueado
  - Cuando la cuenta del usuario se encuentra bloqueada por los administradores
  - Entonces el sistema no le permitirá loguearse al usuario

___

#### Login de usuarios con proveedores de identidad federada

**Descripción**

- Como Usuario quiero ingresar con mi cuenta en la plataforma con proveedores de identidad federada para acceder a las funcionalidades del sistema

**Criterios de aceptación**

- CA 1: Login exitoso con proveedores de identidad federada
  - Cuando el login del usuario utilizando proveedores de identidad federada es correcto
  - Entonces el sistema permitirá el ingreso al sistema
  - En caso contrario se deberá mostrar un mensaje de error acorde al usuario.
- CA 2: Login fallido
  - Cuando el login del usuario falla debido a un error del servicio.
  - Entonces el sistema indicará un mensaje de error acorde al usuario.
- CA 3: Sesión expirada
  - Cuando la sesión del usuario excede el tiempo de expiración
  - Entonces el sistema solicitará al usuario nuevamente el login
- CA 4: Usuario bloqueado
  - Cuando la cuenta del usuario se encuentra bloqueada por los administradores
  - Entonces el sistema no le permitirá loguearse al usuario

___

#### Login con datos biométricos

**Descripción**

- Como Usuario quiero ingresar con mi cuenta en la plataforma utilizando mis datos biométricos

**Criterios de aceptación**

- CA 1: Login exitoso con datos biométricos
  - Cuando el login del usuario utilizando datos biométricos, tales como identificación por rostro o huella dactilar, es correcto
  - Entonces el sistema permitirá el ingreso al sistema
  - En caso contrario se deberá mostrar un mensaje de error acorde al usuario.
- CA 2: Login fallido
  - Cuando el login del usuario falla debido a un error del servicio.
  - Entonces el sistema indicará un mensaje de error acorde al usuario.
- CA 3: Sesión expirada
  - Cuando la sesión del usuario excede el tiempo de expiración
  - Entonces el sistema solicitará al usuario nuevamente el login
- CA 4: Usuario bloqueado
  - Cuando la cuenta del usuario se encuentra bloqueada por los administradores
  - Entonces el sistema no le permitirá loguearse al usuario


___

#### Recupero de contraseña

**Descripción**

- Como Usuario quiero poder recuperar mi contraseña en caso de que no la recuerde

**Criterios de aceptación**
- CA 1: Recupero de contraseña exitoso
  - Cuando se realice un recupero de contraseña
  - Entonces se deberá enviar un email con un link de recupero de contraseña, el cual tiene solo un uso y un tiempo de expiración


___

#### Registro de administradores

**Descripción**

- Como administrador quiero poder dar de alta a otros administradores en la plataforma para acceder a las funcionalidades del sistema.
**Criterios de aceptación**

- CA 1: Registro exitoso
  - Cuando el registro del administrador es correcto.
  - Entonces el sistema registrará un nuevo administrador con sus respectivas credenciales y permitirá el ingreso al sistema.
- CA 2: Falta uno o más campos obligatorios
  - Cuando el registro del administrador es incorrecto debido a un ingreso erróneo o faltante de campos. 
  - Entonces el sistema indicará los campos faltantes y/o erróneos y no permitirá el ingreso al sistema
- CA 3: Registro fallido
  - Cuando el registro del administrador falla debido a un error del servicio.
  - Entonces el sistema indicará un mensaje de error acorde al usuario.


___

#### Login de administradores

**Descripción**

- Como Administrador quiero ingresar con mi cuenta en la plataforma para acceder a las funcionalidades del sistema

**Criterios de aceptación**


- CA 1: Login exitoso 
  - Cuando el login del administrador utilizando sus credenciales es correcto
  - Entonces el sistema permitirá el ingreso al sistema
  - En caso contrario se deberá mostrar un mensaje de error acorde al usuario.
- CA 2: Login fallido
  - Cuando el login del usuario falla debido a un error del servicio.
  - Entonces el sistema indicará un mensaje de error acorde al usuario.

<!-- Perfil -->

___

#### Edición de perfil

**Descripción**

- Como Usuario quiero poder editar los datos de mi perfil de usuario para mantener actualizada mi información personal.

**Criterios de aceptación**

- CA 1: Edición de datos de perfil exitosa
  - Cuando se modifican los datos de la cuenta del Usuario de manera exitosa
  - Entonces estos nuevos datos serán los que se utilicen como datos de perfil de usuario
  - En caso contrario se deberá mostrar un mensaje de error acorde al usuario.


___

#### Visualización de perfil propio

**Descripción**

- Como Usuario quiero poder visualizar los datos de mi perfil de usuario para revisar mi información

**Criterios de aceptación**

- CA 1: Visualización de perfil propio
  - Cuando se visualice el perfil del usuario propietario de la cuenta.
  - Entonces estos se visualizarán datos públicos y privados del usuario.
  - En caso contrario se deberá mostrar un mensaje de error acorde al usuario.


___

#### Visualización de perfil de otros usuarios

**Descripción**

- Como Usuario quiero poder visualizar los datos de los otros usuarios para conocer su información de contacto

**Criterios de aceptación**

- CA 1: Visualización de perfil de otros usuarios
  - Cuando se visualice el perfil de un usuario que no es propietario de la cuenta
  - Entonces estos se visualizarán datos públicos del usuario

<!-- Búsquedas -->  
___


#### Home

**Descripción**

- Como listener quiero poder realizar ingresar a la una pantalla principal que me provea acceso a distintos contenidos de utilidad

**Criterios de aceptación**
- CA 1: Home 
  - Cuando se accede la pantalla principal de la aplicacion
  - Entonces se deberán retornar las canciones, playlists y álbumes que sean de relevancia.
- CA 2: Error al cargar
  - Cuando se accede la pantalla principal de la aplicacion y ocurre un error
  - Entonces se deberá notificar al usuario que ha sucedido un error

___


#### Búsqueda de canción o álbum por género

**Descripción**

- Como listener quiero poder realizar búsquedas de canciones o álbumes por su género para visualizar su información y así poder reproducirlas

**Criterios de aceptación**
- CA 1: Filtrado por género
  - Cuando se realiza una búsqueda utilizando un filtrado por género
  - Entonces se deberán retornar las canciones y álbumes que cumplan dichos filtros.
- CA 2: Búsqueda sin resultados
  - Cuando se realiza una búsqueda utilizando un filtrado y no existe contenido que cumpla tal condición
  - Entonces se deberá notificar al usuario que no existen resultados para su búsqueda.

___

#### Búsqueda de canción o álbum por suscripción

**Descripción**

- Como listener quiero poder realizar búsquedas de canciones o álbumes por tipo de suscripción para visualizar su información y así poder reproducirlas


**Criterios de aceptación**
- CA 1: Filtrado por  suscripción
  - Cuando se realiza una búsqueda utilizando como filtro el tipo de suscripción de una canción o álbum 
  - Entonces se deberán retornar las canciones y álbumes que se encuentren en dicha suscripción.
- CA 2: Búsqueda sin resultados
  - Cuando se realiza una búsqueda utilizando un filtrado y no existe contenido que cumplan tal condición
  - Entonces se deberá notificar al usuario que no existen resultados para su búsqueda.


___

#### Búsqueda de canción o álbum por artista

**Descripción**

- Como listener quiero poder realizar búsquedas de canciones o álbumes por artista para visualizar su información y así poder reproducirlas

**Criterios de aceptación**
- CA 1: Filtrado por artista
  - Cuando se realiza una búsqueda utilizando como filtro el artista de una canción o álbum 
  - Entonces se deberán retornar las canciones y álbumes que pertenezcan a tal artista.
- CA 2: Búsqueda sin resultados
  - Cuando se realiza una búsqueda utilizando un filtrado y no existe contenido que cumplan tal condición
  - Entonces se deberá notificar al usuario que no existen resultados para su búsqueda.

___

#### Recomendación de canciones

**Descripción**

- Como listener quiero poder recibir recomendaciones de canciones basadas en mis intereses y disponibles según mi ubicación geográfica.

**Criterios de aceptación**
- CA 1: Recomendación por zona geográfica
  - Se requiere brindar un servicio en el que dado una serie de reglas definidas por los administradores, deberán definir si las canciones que se encuentren en dicha región están disponibles o no
- CA 2: Recomendación por intereses
  - Se requiere recibir recomendaciones de canciones según mis intereses definidos al momento de registrarse y la interacción con la plataforma

<!-- Listener -->


___

#### Inscripción a suscripción

**Descripción**

- Como listener quiero poder seleccionar un tipo de suscripción para así poder acceder a contenido exclusivo.

**Criterios de aceptación**

- CA 1: Solicitud de inscripción
  - Cuando se solicita una inscribirse a un tipo de suscripción
  - Entonces se deberá indicar al usuario cuales son las condiciones de esta suscripción.
  - En caso de que no desee ninguna suscripción se le asignara una por defecto

- CA 2: Inscripción exitosa
  - Cuando se aceptan las condiciones para la inscripción a la suscripción. 
  - Entonces se deberá ejecutar el flujo correspondiente para establecer dicha suscripción.
  - Dicho flujo deberá contemplar el pago automático por única vez, al momento de realizar esta suscripción.

- CA 3: Inscripción fallida
- Cuando se rechacen las condiciones para la inscripción a la suscripción o el sistema rechaza su inscripción. 
- Entonces no se deberá el flujo de alta de suscripción


___

#### Modificación de suscripción

**Descripción**

- Como usuario quiero poder modificar el tipo de suscripción en el momento que yo desee

**Criterios de aceptación**

- CA 1: Solicitud de modificación
  - Cuando se solicita una Modificación a una suscripción
  - Entonces se deberá indicar al usuario cuales son las condiciones de esta modificación.

- CA 2: Modificación exitosa
  - Cuando se aceptan las condiciones para la modificación a la suscripción. 
  - Entonces se deberá ejecutar el flujo correspondiente para establecer dicha modificación.

- CA 3: Modificación fallida
- Cuando se rechacen las condiciones para la modificación de la suscripción o el sistema rechaza esta. 
- Entonces no se deberá el flujo de modificación de suscripción


___


#### Reproducir contenido

**Descripción**

- Como listener quiero poder reproducir mis canciones, álbumes y playlist en mi celular.

**Criterios de aceptación**

- CA 1: Reproducción de canción
  - Cuando se encuentra en la pantalla de reproducción de canción
  - Entonces se deberá acceder a las funciones de reproducción básicas (Ex:Play, pause, stop, next, back, volumen +/-) para poder interactuar con dicha canción. Ademas se deberá visualizar información relacionada, tal como nombre, duración, autor, album, etc.


- CA 2: Reproducción de album
  - Cuando se encuentra en la pantalla de reproducción de un album
  - Entonces se deberá acceder a las funciones de reproducción básicas (Ex:Play, pause, stop, next, back, volumen +/-) para poder interactuar con las canciones del mismo. Ademas se deberá visualizar información relacionada, tal como nombre, duración, autor, canciones, etc.

- CA 3: Reproducción de playlist
  - Cuando se encuentra en la pantalla de reproducción de un album
  - Entonces se deberá acceder a las funciones de reproducción básicas (Ex:Play, pause, stop, next, back, volumen +/-) para poder interactuar con las canciones del mismo. Ademas se deberá visualizar información relacionada, tal como nombre, duración, autor, canciones, etc.

___

#### Seguir artista

**Descripción**

- Como listener quiero poder seguir a mis artistas preferidos

**Criterios de aceptación**

- CA 1: Comenzar a seguir un artista
  - Cuando realiza click sobre el botón 'Seguir'
  - Entonces se deberá agregar al artista al listado de artistas seguidos


- CA 2: Dejar de seguir un artista
  - Cuando realiza click sobre el botón 'Dejar de Seguir'
  - Entonces se deberá quitar al artista al listado de artistas seguidos

- CA 3: Listado de artistas seguidos
  - Cuando se ingrese a la pantalla de artistas seguidos
  - Entonces se deberá listar el total de los artistas que el usuario sigue.

___


#### Contenidos favoritos

**Descripción**

- Como listener quiero poder guardar mis contenidos preferidos para acceder de una manera mas simple a estos

**Criterios de aceptación**

- CA 1: Agregar contenido a favoritos
  - Cuando realiza click sobre el botón 'Favoritos' en una canción, album o playlist.
  - Entonces se deberá agregar dicho contenido al listado de contenidos favoritos


- CA 2: Quitar contenido de favoritos
  - Cuando realiza click sobre el botón 'Quitar de Favoritos' en una canción, album o playlist.
  - Entonces se deberá quitar dicho contenido al listado de contenidos favoritos


- CA 3: Listado de contenidos favoritos
  - Cuando se ingrese a la pantalla de contenidos favoritos
  - Entonces se deberá listar el total de los contenidos favoritos del usuario.


<!-- Artista -->

___

#### Creación de canción

**Descripción**
- Como artista quiero poder crear una canción para luego asociarla a un album

**Criterios de aceptación**
- CA 1: Creación exitosa
  - Cuando un artista realice una nueva canción. Se solicitarán datos como:
  
    - Titulo: Titulo principal del canción
    - Descripción: Descripción del canción
    - Autor/Autores: Personas que hayan trabajado en la creación de esta canción.
    - Archivo: Archivo en formato digital que será utilizado luego para escuchar dicha canción.

  - Entonces este canción podrá ser asociada a un album. 
- CA 2: Creación fallida
  - Cuando un artista realice una canción con información faltante y/o erronea.
  - Entonces el sistema deberá informarle que no es una operación permitida.


___

#### Creación de album

**Descripción**
- Como artista quiero poder crear un album para que los listeners puedan escucharlo y poder obtener o no ganancias por esto.

**Criterios de aceptación**
- CA 1: Creación exitosa
  - Cuando un artista realice un nuevo album. Se solicitarán datos como:
  
    - Titulo: Titulo principal del album
    - Descripción: Descripción del album
    - Genero de album: Se deberá elegir un tipo de genero dentro de los permitidos por la plataforma 
    - Fotos y/o videos: Material multimedia que acompañe como portada
    - Suscripción: Tipo de suscripción asociada
    - Canciones: Canciones asociadas al album
    - Otros .

  - Entonces este album podrá ser visualizado y realizado por los listeners. 
- CA 2: Creación fallida
  - Cuando un artista realice un nuevo album con información faltante y/o errónea.
  - Entonces el sistema deberá informarle que no es una operación permitida.


___

#### Edición de album

**Descripción**
- Como artista quiero poder modificar un album para actualizar su contenido

**Criterios de aceptación**
- CA 1: Edición de datos exitosa
  - Cuando un artista realice la edición de datos editables (Imágenes, título, descripción, etc)
  - Entonces al confirmar los nuevos cambios, estos se verán reflejados en el album.
- CA 2: Edición de datos fallida
  - Cuando un artista realice la edición de datos con datos erróneos y/o inválidos.
  - Entonces el sistema deberá informarle que no es una operación permitida.


___

#### Listado de álbumes

**Descripción**
- Como artista quiero poder listar mis álbumes realizados para administrarlos

**Criterios de aceptación**
- CA 1: Usuario con álbumes
  - Cuando un artista ingrese a "Mis álbumes"
  - Entonces podrá visualizar todos sus álbumes creados
- CA 2: Usuario sin álbumes
  - Cuando un artista ingrese a "Mis álbumes"
  - Entonces tendrá una pantalla vacía



___


#### Transmisión en directo

**Descripción**
- Como artista quiero poder realizar transmisiones en directo para que mis oyentes puedan acceder a este contenido inédito en vivo.

**Criterios de aceptación**

- CA 1: Realización de transmisión en directo
  - Cuando un artista comience una transmisión en directo.
  - Entonces todo usuario que este habilitado a acceder a dicho contenido, podrá realizarlo en tal momento.

- CA 2: Guardado de transmisión en directo
  - Cuando un artista indique se una transmisión en directo puede ser guardada.
  - Entonces al finalizar, dicha transmisión deberá ser guardada en el dispositivo desde donde se realizó. 


___


#### Métricas de artista

**Descripción**
- Como artista quiero poder visualizar las métricas de un album para revisar su evolución.

**Criterios de aceptación**
- CA 1: Visualización de métricas album
  - Cuando un artista ingrese a las métricas de un album.
  - Entonces podrá visualizar información asociada al album como:
    - Cantidad de reproducciones.
    - Canción mas escuchada.
    - Cantidad de favoritos.
    - Etc.

___


#### Certificado de artista reconocido

**Descripción**
- Como artista quiero poder obtener un reconocimiento que indique que soy un artista reconocido por dicha plataforma, para poder avalar mi identidad en la misma.

**Criterios de aceptación**

- CA 1: Solicitud de artista reconocido
  - Cuando un artista solicite a la plataforma ser reconocido como artista .
  - Entonces deberá enviar un video que avale su identidad a los administradores de la misma.

- CA 2: Aprobación como artista reconocido
  - Cuando un artista obtenga el reconocimiento de su identidad por parte de los administradores de la plataforma.
  - Entonces podrá indicar en su perfil que es un artista reconocido.

___

<!-- Playlist -->

#### Crear playlist

**Descripción**
- Como usuario quiero poder crear una playlist para luego poder escucharla o compartirla con otros usuarios

**Criterios de aceptación**
- CA 1: Creación exitosa
  - Cuando un usuario realice una nueva playlist. Se solicitarán datos como:
  
    - Titulo: Titulo principal del playlist
    - Descripción: Descripción del playlist
    - Canciones: Canciones que estén contenidas en la playlist.
    - Colaborativa: Posibilidad de que la playlist sea modificada por otros usuarios

  - Entonces este canción podrá ser asociada a un album. 
- CA 2: Creación fallida
  - Cuando un usuario realice una playlist con información faltante y/o erronea.
  - Entonces el sistema deberá informarle que no es una operación permitida

___

#### Edición de playlist

**Descripción**
- Como usuario quiero poder modificar una playlist para actualizar su contenido

**Criterios de aceptación**
- CA 1: Edición de datos exitosa
  - Cuando un usuario realice la modificación de datos editables (título, descripción, etc)
  - Entonces al confirmar los nuevos cambios, estos se verán reflejados en la playlist.
- CA 2: Edición de datos fallida
  - Cuando un usuario realice la modificación de datos con datos erróneos y/o inválidos.
  - Entonces el sistema deberá informarle que no es una operación permitida.


___

#### Playlist colaborativa

**Descripción**
- Como usuario quiero poder colaborar en una playlist para agregar nuevas canciones

**Criterios de aceptación**
- CA 1: Colaboración con nuevas canciones
  - Cuando un usuario agregue una nueva canción a una playlist
  - Entonces al confirmar los nuevos cambios, estos se verán reflejados en la playlist.


___

#### Compartir playlist

**Descripción**
- Como usuario quiero poder compartir una playlist para que otros puedan escucharla o colaborar con esta

**Criterios de aceptación**
- CA 1: Playlist compartida con éxito.
  - Cuando un usuario realice comparta una playlist que se encuentra disponible
  - Entonces otro usuario podrá reproducir o colaborar con la misma

<!-- Comments-->



___

#### Comentar un album

- Como listener quiero poder realizar comentarios en un album para demostrar públicamente lo que pienso del mismo

**Criterios de aceptación**


- CA 1: Comentario aceptado
  - Cuando se realiza un comentario público en un album 
  - Entonces todo aquel que entre a la sección de comentarios de un album podrán visualizarlo. 



___

#### Remover comentarios de un album

- Como artista quiero poder remover comentarios en un album

**Criterios de aceptación**


- CA 1: Comentario removidos
  - Cuando se selecciona remover comentarios público en un album 
  - Entonces dicho comentario ya no será visualizado en la sección correspondiente


___

#### Mensajes privados
- Como usuario quiero poder enviar mensajes privados a otro usuario de la plataforma

**Criterios de aceptación**

- CA 1: Mensaje directo
  - Cuando se realiza un mensaje directo
  - Entonces solo los involucrados podrán leer el mismo y se deberá mantener una conversación en tiempo real por mensajes


<!-- Calificaciones-->


___

#### Calificación cuantitativa de un album

**Descripción**
- Como listener quiero poder realizar una calificación cuantitativa de un album para así poder brindar mi opinión de este.

**Criterios de aceptación**
- CA 1: Calificación de album
  - Cuando un listener realiza una calificación cuantitativa de un album. Por ejemplo, utilizando una escala del 1 al 5
  - Entonces esta calificación afectará la calificación del album 

___

#### Calificación cualitativa de un album

**Descripción**
- Como listener quiero poder realizar una opinion mas detallada del album para así poder brindar mi opinión de este.

**Criterios de aceptación**

- CA 1: Calificación
  - Cuando un listener realiza una calificación utilizando comentarios para un album.
  - Entonces esta calificación luego podrá ser visualizada por otros usuarios.

 <!-- Cobros y pagos -->


___

#### Pago de suscripción

**Descripción**

- Como listener quiero poder pagar la inscripción en alguna de las suscripciones disponibles para poder así acceder a los contenidos que esta habilite.

**Criterios de aceptación**

- CA 1: Pago exitoso
  - Cuando un pago se realiza de manera exitosa.
  - Entonces se ejecutará el flujo correspondiente a un pago por una suscripción en el SC y deberá verse reflejado tanto en la wallet del usuario que paga como el que recibe
- CA 2: Pago con error
  - Cuando un pago NO se realiza de manera exitosa.
  - Entonces NO se ejecutará el flujo correspondiente a un pago por una suscripción en el SC y deberá notificarse dicho error.


___

#### Retiro de fondos

**Descripción**

- Como artista quiero extraer los fondos que fueron recolectados de las reproduccipnes y los aportes de los listeners.
**Criterios de aceptación**

- CA 1: Retiro de fondos exitoso
  - Cuando un artista solicita un retiro de fondos y se cumplen las regla de negocio pautadas.
  - Entonces se podrá realizar el retiro de fondos a la wallet indicada por el artista.

- CA 2: Retiro de fondos fallido
  - Cuando un artista solicita un retiro de fondos del contenido y aún no se cumplen las regla de negocio pautadas.
  - Entonces NO se podrá realizar el retiro de fondos


___

#### Utilización de stablecoin

**Descripción**

- Como usuario del sistema quiero que el sistema acepte una stablecoin como método de intercambio de valor para no preocuparme por la volatilidad del ETH
**Criterios de aceptación**

- CA 1: Retiro de fondos
  - Cuando un artista solicita un retiro de fondos de su cuenta y se cumplen las regla de negocio pautadas.
  - Entonces el pago se ejecuta a traves de una stablecoin

- CA 2: Pago de suscripción
  - Cuando un listener paga una suscripción
  - Entonces el pago se ejecuta a traves de una stablecoin

- CA 1: Carga de saldo
  - Cuando un administrador enviá saldo a una usuario a traves del sistema
  - Entonces el pago se ejecuta a traves de una stablecoin



 <!-- Notificaciones -->

___

#### Notificación por nuevo mensaje

**Descripción**
- Como usuario quiero poder recibir una notificación en caso de recibir un nuevo mensaje

**Criterios de aceptación**
- CA 1: Pantalla de notificaciones
  - Cuando un usuario recibe un mensaje por una consulta pública o privada.
  - Entonces deberá poder visualizar una notificación en la aplicación para acceder a dicho mensaje 
- CA 2: Notificación push.
  - Cuando un usuario recibe un mensaje por una consulta pública o privada.
  - Entonces deberá recibir notificación push en la aplicación para acceder a dicho mensaje

___


#### Notificación por nueva canción de artista

**Descripción**
- Como listener quiero poder recibir una notificación en caso de existir novedades exclusivas de mis artistas favoritos

**Criterios de aceptación**
- CA 1: Pantalla de notificaciones
  - Cuando un listener esta suscripto en una categoría exclusiva 
  - Entonces deberá poder visualizar una notificación en la aplicación para acceder a dicho mensaje 
- CA 2: Notificación push.
  - Cuando un usuario tiene un contenido asociado y este tiene un cambio en su estado. y tenga habilitado el envió de notificaciones
  - Entonces deberá recibir notificación push en la aplicación para acceder a dicho mensaje



___

#### Notificación por transmisión en directo

**Descripción**
- Como usuario quiero poder recibir una notificación en caso existir una transmisión en directo

**Criterios de aceptación**
- CA 1: Pantalla de notificaciones
  - Cuando un artista realiza una transmisión en directo.
  - Entonces todo listener que cumpla con las condiciones de negocio deberá poder visualizar una notificación en la aplicación para acceder a dicho mensaje 
- CA 2: Notificación push.
  - Cuando un artista realiza una transmisión en directo.
  - Entonces todo listener que cumpla con las condiciones de negocio deberá recibir notificación push en la aplicación para acceder a dicho mensaje


___

#### Notificación por hito de seguidores

**Descripción**

- Como artista quiero poder recibir una notificación en caso que nuevos usuarios empiecen a seguir mi perfil


**Criterios de aceptación**
- CA 1: Pantalla de notificaciones
  - Cuando un artista logra nuevos seguidores.
  - Entonces deberá poder visualizar una notificación en la aplicación para acceder a dicho mensaje 
- CA 2: Notificación push.
  - Cuando un artista logra nuevos seguidores.
  - Entonces deberá recibir notificación push en la aplicación para acceder a dicho mensaje


<!-- Administración de usuarios -->


___

#### Listar usuarios del sistema

**Descripción**
- Como administrador del sistema quiero poder listar todos los usuario del sistema para gestionar su uso

**Criterios de aceptación**
- CA 1: Listado de usuarios del sistema
  - Cuando un administrador del sistema ingrese a la sección de usuarios
  - Entonces se listaran todos los usuarios del sistema.


___

#### Visualizar perfil de usuario

**Descripción**
- Como administrador del sistema quiero poder visualizar el perfil de un  usuario del sistema para verificar sus datos

**Criterios de aceptación**
- CA 1: Listado de usuarios del sistema
  - Cuando un administrador del sistema ingrese a la sección de usuarios
  - Entonces se listaran todos los usuarios del sistema.


___

#### Bloquear usuario

**Descripción**
- Como administrador del sistema quiero poder bloquear y desbloquear un  usuario del sistema para controlar su ingreso a la plataforma

**Criterios de aceptación**
- CA 1: Bloqueo exitoso
  - Cuando un administrador bloquea a un usuario.
  - Entonces se deberá visualizar que el usuario esta bloqueado y el usuario no deberá poder acceder a la plataforma
 - CA 2: Desbloqueo exitoso
    - Cuando un administrador desbloquea a un usuario.
    - Entonces se deberá visualizar que el usuario no esta bloqueado y el usuario deberá poder acceder a la plataforma


<!-- Administración de contenidos -->

___

#### Listado de contenidos

**Descripción**
- Como administrador del sistema quiero poder listar todas los contenidos que se encuentren en el sistema para acceder a ellos 

**Criterios de aceptación**
- CA 1: Listado con contenidos existentes
  - Cuando un administrador solicita visualizar el listado de contenidos en la plataforma
  - Entonces se deberán listar todos los contenidos existentes en el sistema
- CA 2: Listado con contenidos existentes utilizando filtros
  - Cuando un administrador solicita visualizar el listado de contenidos en la plataforma y aplica un filtrado 
  - Entonces se deberán listar todos los contenidos existentes en el sistema que cumplan con dichos filtros


___
#### Visualización de contenidos

**Descripción**
- Como administrador del sistema quiero poder visualizar un contenido para verificar su contenido. 

**Criterios de aceptación**
- CA 1: Visualización de contenido 
  - Cuando un administrador visualiza el un contenido existente en la plataforma
  - Entonces se deberá poder visualizar todos sus datos asociados

___
#### Bloqueo de contenido

**Descripción**
- Como administrador del sistema quiero poder bloquear un contenido que se encuentren en el sistema para que no puedan acceder al mismo

**Criterios de aceptación**
- CA 1: Bloqueo exitoso 
  - Cuando un administrador realiza el bloqueo de un contenido existente en la plataforma
  - Entonces se deberá visualizar que el contenido está bloqueado y los usuarios no deberán poder acceder a él en la aplicación
- CA 2: Desbloqueo exitoso 
  - Cuando un administrador realiza el desbloqueo de un contenido existente en la plataforma
  - Entonces se deberá visualizar que el contenido no esta bloqueado y los usuarios deberán poder acceder a el en la aplicación
 
 
<!-- Administración de transacciones -->
 
 ___

#### Listar transacciones

**Descripción**

- Como administrador del sistema quiero poder listar todas las transacciones de inscripciones y sus pagos, como también los cobros, para poder controlar su uso de la plataforma

**Criterios de aceptación**
- CA 1: Listado de transacciones
  - Cuando un administrador solicita visualizar el listado de transacciones en la plataforma
  - Entonces se deberán listar todas las transacciones existentes en el sistema
- CA 2: Listado de transacciones existentes utilizando filtros
  - Cuando un administrador solicita visualizar el listado de transacciones en la plataforma y aplica un filtrado 
  - Entonces se deberán listar todas las transacciones existentes en el sistema que cumplan con dichos filtros


___

#### Carga de saldo

**Descripción**

- Como administrador del sistema quiero poder cargar saldo en la billetera de un cliente para poder realizar campañas de beneficios o solucionar inconvenientes

**Criterios de aceptación**
- CA 1: Asignación de saldo exitosa
  - Cuando un administrador realiza una asignación de saldo en la billetera de un cliente
  - Entonces se deberá descontar este monto de la billetera asociada a la plataforma y se deberá adicionar tal monto en la billetera del cliente

<!-- Administración de servicios -->

___

#### Listado de servicios

**Descripción**
- Como administrador del sistema quiero poder listar todos los servicios que se encuentren dentro del sistema para controlar su uso

**Criterios de aceptación**
- CA 1: Listado de servicios
  - Cuando un administrador solicita visualizar el listado de servicios en la plataforma
  - Entonces se deberán listar todos los servicios existentes en el sistema
- CA 2: Listado de servicios existentes utilizando filtros
  - Cuando un administrador solicita visualizar el listado de servicios en la plataforma y aplica un filtrado 
  - Entonces se deberán listar todos los servicios existentes en el sistema que cumplan con dichos filtros


___

#### Visualización de servicio

**Descripción**
- Como administrador del sistema quiero visualizar la información de un servicio que se encuentre en el sistema para verificar que sea válida

**Criterios de aceptación**
- CA 1: Visualización de información de un servicio
  - Cuando un administrador ingresa a visualizar la información de un servicio
  - Entonces podrá encontrar datos como:
    - Estado del servicio.
    - Fecha de creación.
    - Descripción.
    - Otros.

___

#### Alta de servicio

**Descripción**
- Dado que existen requisitos de seguridad que solicitan tener un mecanismo para verificar la autenticidad de los servicios internos de la plataforma. Como administrador del sistema quiero poder dar de alta un nuevo servicio para que pueda acceder a los distintos servicios del sistema

**Criterios de aceptación**
- CA 1: Alta de Api Key
  - Cuando un administrador da de alta un nuevo servicio.
  - Entonces se genera un API key que deberá ser utilizada de manera interna en la plataforma para que un servicio pueda comunicarse con sus pares

___

#### Bloqueo de servidor

**Descripción**
- Como administrador del sistema quiero poder bloquear un nuevo servicio para que no pueda acceder a los distintos servicios del sistema

**Criterios de aceptación**

- CA 1: Alta de Api Key
  - Cuando un administrador bloquee un servicio.
  - Entonces se deberá bloquear su API key asociada y tal servicio no podrá comunicarse con sus pares.

<!-- Métricas -->

___

#### Métricas de usuario

**Descripción**
- Como administrador del sistema quiero poder visualizar las métricas de usuarios para medir el uso de la plataforma y sus servicios

**Criterios de aceptación**
- CA 1: Métricas de nuevos usuarios utilizando mail y contraseña
- CA 2: Métricas de nuevos usuarios utilizando identidad federada
- CA 3: Métricas de login de usuarios utilizando mail y contraseña
- CA 4: Métricas de login de usuarios utilizando identidad federada
- CA 5: Métricas de usuarios bloqueados
- CA 6: Métricas de recupero de contraseña  


___
#### Métricas de contenidos

**Descripción**
- Como administrador del sistema quiero poder visualizar las métricas de contenidos para medir el uso de la plataforma y sus servicios

**Criterios de aceptación**
- CA 1: Métricas de nuevos contenidos
- CA 2: Métricas de contenidos por genero
- CA 3: Métricas de contenidos por suscripciones
- CA 4: Métricas de contenidos por usuario


___

#### Métricas de transacciones

**Descripción**
- Como administrador del sistema quiero poder visualizar las métricas de transacciones para medir el uso de la plataforma y sus servicios

**Criterios de aceptación**
- CA 1: Métricas de pagos
- CA 2: Métricas de cobros


___

## Requisitos No Funcionales

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

### Smart contract
La gestión de pagos de las transacciones se realizará utilizando un smart contract, el cual será provisto por la cátedra


___

### Tecnologías

Stack de tecnologías recomendadas para el desarrollo de los distintos componentes.

#### Aplicación mobile

Para el desarrollo de la App se podrá optar por:
- Desarrollar sobre [Android](https://developer.android.com/) nativo utilizando [Kotlin](https://kotlinlang.org/) como lenguaje de programación.
- Desarrollar sobre [React Native](https://reactnative.dev/) utilizando [JavaScript](https://developer.mozilla.org/es/docs/Web/JavaScript) como lenguaje de programación.


___

#### Servicios backend

Para el desarrollo de los servicios backend se deberá utilizar como lenguajes de programación:
- [Python](https://www.python.org/)
- [JavaScript](https://developer.mozilla.org/es/docs/Web/JavaScript)

Junto con sus respectivos frameworks. La cátedra recomienda alguno de estos
- Python:
  - [FastAPI](https://fastapi.tiangolo.com/)
  - [Flask](https://flask.palletsprojects.com/en/1.1.x/)
  - [Tornado](https://www.tornadoweb.org/en/stable/)
  
- JavaScript:
  - [Express](https://expressjs.com/)
  - [Fastify](https://www.fastify.io/)
  - [Nest.js](https://nestjs.com/)

Se recomiendan como base de datos alguna de las siguientes 
- [PostgreSQL](https://www.postgresql.org/)
- [MongoDB](https://www.mongodb.com/es)

Esta elección será responsabilidad del grupo y la misma deberá estar consensuada junto al ayudante. Además quedará justificada en la documentación técnica que formará parte del TP.

___

#### Backoffice web
Para el desarrollo del backoffice web se utilizará React como biblioteca.


___

#### Contenido multimedia
Para el uso de contenido multimedia se recomienda utilizar el servicio provisto por firebase [Storage](https://firebase.google.com/docs/storage?hl=es)


___

#### Chat
Para el uso del chat en tiempo real se recomienda utilizar el servicio provisto por firebase [Real time database](https://firebase.google.com/docs/database?hl=es)


___

#### Notificaciones 

##### Push
Para el uso de notificaciones push se recomienda utilizar el servicio provisto por firebase [Cloud Messaging](https://firebase.google.com/docs/cloud-messaging?hl=es)


##### Mensajeria whatsapp
Para el uso de mensajería con whatsapp se recomienda utilizar el servicio provisto por [Twilio](https://www.twilio.com/quest/github-education)


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

### Monitoreo

Para el monitoreo de los servicios se recomiendan alguna de las siguientes librerías/plataformas

- [Datadog](https://www.datadoghq.com/blog/datadog-github-student-developer-pack/)
- [New Relic](https://blog.newrelic.com/product-news/simple-pricing/)
- [Prometheus](https://prometheus.io/)
- [Grafana](https://grafana.com/)



### Empaquetamiento

Cada uno de los desarrollos solicitados debe empaquetarse según el estándar de la plataforma, es decir:

* _Python_: Python Setuptools (`setup.py` y `requeriments.txt`)
* _Node_: Node Package Manager (`npm`, `package.json`), Yarn Package Manager(https://yarnpkg.com/lang/en/)
* _Android Client_: Android Application Package (`apk`)

Además, los proyectos backend deberán traer un `Dockerfile` que permita correrlos sin necesidad de tener instalado los respectivos lenguajes.


### Testing

El desarrollo de la aplicación se deberá adaptar a los estándares de calidad utilizados por AppMaker©. Dentro de estos estándares se encuentran:

* Pruebas unitarias
* Métricas: code coverage debe ser mayor a 75%
* Respetar estándar para estilo de codificación: Lint
* Pruebas de integración.
* Todas aquellas que se consideren convenientes para garantizar la calidad de las aplicaciones desarrolladas.
 
**Nota:** Esta sección hace sólo referencia a los servicios de backend No se toma como requerimiento el realizar pruebas sobre el cliente Android, aunque es recomendado como una buena práctica.

### CI-CD

Las pruebas y métricas anteriormente mencionadas deberán correr bajo una plataforma de integración continua. 

Se sugiere el uso de [GitHub Actions](https://github.com/features/actions) o [Gitlab Pipelines](https://docs.gitlab.com/ee/ci/pipelines/), pero se podrá utilizar otro previa justificación.

El resultado del _code coverage_ debe ser desplegado automáticamente a una plataforma que permita visualizarlas, entre muchas posibilidades se encuentran:

* [Coveralls](https://coveralls.io/)
* [Codecov](https://codecov.io/)
* Utilizar [Github Pages](https://pages.github.com/) para generar una web para visualizarlo

Finalmente, el despliegue al servidor de _PAAS_ elegido deberá ser automático. Este deberá tener en cuenta como la actualización de la base de datos (cambios en las tablas, etc). El mecanismo utilizado para disparar dicho despliegue (utilizar el branch _master_ como productivo, utilizar un tags con nombre especial) será definido por los desarrolladores y deberá ser detallado en la documentación


### Despliegue en la Nube

Los servicios, se deberán disponibilizar en la nube utilizando una plataforma como servicio (_[PAAS](https://en.wikipedia.org/wiki/Platform_as_a_service)_).

Se recomienda usar [Heroku](https://www.heroku.com/) ya que cuenta con todos los requerimientos tecnológicos pedidos anteriormente.


___

### Despliegue usando k8s

De manera optativa se podrá realizar una migración de los servicios backend de la plataforma a kubernetes

### UX

Se deberá presentar evidencia de prototipado del diseño de pantallas, las cuales serán convalidadas junto al ayudante a cargo

Para el diseño de la interfaz deben respetarse las guías de diseño propuestas por Google con _[Material Design](https://material.io/design/)_.

### Documentación


Se deberá entregar la siguiente documentación:

- Servicios Backend:
  - Documentación técnica: 
   - Instalación y configuración
   - Definición de arquitectura
   - Especificación de API REST: [OpenAPI](https://github.com/OAI/OpenAPI-Specification)

- Guia de usuario de la aplicación disponible en [Github Pages](https://pages.github.com/)
- Guia de usuario del backoffice disponible en [Github Pages](https://pages.github.com/)
- Bitácora de proyecto
- [Análisis postmortem](https://en.wikipedia.org/wiki/Postmortem_documentation)

_Se espera que dicha documentación se elabore de manera incremental y que cada entrega parcial tenga parte de la misma._

## Instancias de entrega

| Instancia   |      Fecha      |  Alcance |
|----------|:-------------:|------:|
| Checkpoint 1 |  28/4 | A definir |
| Checkpoint 2 |  26/5 | A definir |
| Checkpoint 3 |  16/6 | A definir |
| Entrega Final |  7/7 | A definir |
