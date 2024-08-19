# TwitSnap

![Logo](logo.png)

## Indice

1. [Descripción](#descripción)
2. [Condiciones de aprobación](#condiciones-de-aprobación)
3. [Requisitos](#requisitos)
    1. [Épicas](#Épicas)
       1. [Usuarios](#usuarios)
       2. [Perfil](#perfil)
       3. [Explorar y descubrir contenido](#explorar-y-descubrir-contenido)
       4. [TwitSnap](#snapmsg)
       5. [Interacciones](#interacciones)
       6. [Mensajes](#mensajes)
       7. [Calificaciones](#calificaciones)
       8. [Notificaciones](#Notificaciones)
       9. [Administración de usuarios](#administración-de-usuarios)
       10. [Administración de contenidos](#administración-de-contenidos)
       11. [Administración de servicios](#administración-de-servicios)
       12. [Métricas](#métricas)
    2. [Historias de Usuario](#historias-de-usuario)
4. [Requisitos No Funcionales](#requisitos-no-funcionales)
    1. [Componentes](#componentes)
    2. [Tecnologías](#tecnologias)
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
    2. [Optativas](#optativas)
7. [Material de referencia](#material-de-referencia)

## Descripción

Hemos sido encargados por una empresa destacada para desarrollar una aplicación similar a Twitter llamada **TwitSnap**. Esta plataforma digital permitirá a los usuarios compartir ideas, noticias y pensamientos en mensajes cortos, establecer conexiones con otros usuarios y seguir su progreso a lo largo del tiempo. El objetivo principal de TwitSnap es brindar una comunidad interactiva en la cual los usuarios puedan conectarse entre sí, compartir contenido relevante y lograr sus objetivos individuales en un entorno social enriquecedor.


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
 - [Certificado de perfil reconocido](#certificado-de-perfil-reconocido)

<!-- Explorar y descubrir contenido -->

#### Explorar y descubrir contenido
Proporciona a los usuarios una sección de exploración donde puedan descubrir nuevos perfiles, temas relevantes, tweets populares y cuentas sugeridas para seguir.

Historias de usuario relacionadas:
 - [Búsquedas de usuarios](#búsqueda-de-usuarios)
 - [Búsquedas de hashtags](#búsqueda-de-hashtags)
 - [Búsqueda por texto](#búsqueda-por-texto)
 - [Trending Topics](#trendig-topics)
 - [Recomendación de cuentas](#recomendación-de-cuentas)
 
<!-- TwitSnap -->

#### TwitSnap

Permite a los usuarios publicar TwitSnap, que son mensajes cortos. Los usuarios pueden compartir pensamientos, ideas, enlaces, imágenes, vídeos, etc. Tambien tienen la posibilidad de visualizar las metricas de dichos mensajes


Historias de usuario relacionadas:
 - [Feed](#feed)
 - [Publicación de TwitSnap](#publicación-de-snapmsg)
 - [Estadísticas de TwitSnap](#estadísticas-de-snapmsg)
 - [Estadísticas de cuenta](#estadísticas-de-cuenta)
 - [Compartir TwitSnap](#compartir-TwitSnap)

<!-- Interacciones -->

#### Interacciones

Permite a los usuarios interactuar con los tweets de otras personas mediante acciones como "Me gusta" o "snapshare". También pueden responder a los TwitSnap y mencionar a otros usuarios usando el símbolo "@" seguido del nombre de usuario.

Historias de usuario relacionadas:

 - [Seguir usuario](#seguir-usuario)
 - [Likes](#likes)
 - [SnapShare](#snapshare)
 - [Mención](#mencion)
 - [TwitSnap favoritos](#tweets-favoritos)
 - [Directos](#directos)

<!-- Mensajes -->

#### Mensajes

Ofrece una función de mensajería privada para que los usuarios puedan comunicarse de forma directa con otros usuarios.
 
Historias de usuario relacionadas:
 - [Mensajes directos](#mensajes-directos)
 
 <!-- Calificaciones -->


#### Calificaciones

Las transmisiones en directo podrán ser calificadas para luego tener una evaluación general del servicio

Historias de usuario relacionadas:
 - [Calificación cuantitativa de un directo](#calificación-cuantitativa-de-un-directo)
 - [Calificación cualitativa de un directo](#calificación-cualitativa-de-un-directo)


<!-- Notificaciones TODO-->

#### Notificaciones

Como usuario quiero recibir notificaciones al dispositivo que utilizo para informarme sobre actividades en la plataforma

Historias de usuario relacionadas:
 - [Notificación por nuevo mensaje](#notificación-por-nuevo-mensaje)
 - [Notificación por trending TwitSnap](#notificación-por-trending-snapmsg)
 - [Notificación por transmisión en directo](#notificación-por-transmisión-en-directo)
 - [Notificación por hito de seguidores](#notificación-por-hito-de-seguidores)
 

<!-- Administración de usuarios TODO -->

#### Administración de usuarios

Como administrador del sistema quiero poder gestionar los usuarios que están registrados en el mismo para administrar su uso

Historias de usuario relacionadas:
 - [Listar usuarios del sistema](#listar-usuarios-del-sistema)
 - [Visualizar perfil de usuario](#visualizar-perfil-de-usuario)
 - [Bloquear usuario](#bloquear-usuario)


<!-- Administración de contenido TODO -->

#### Administración de contenido

Como administrador del sistema quiero poder gestionar el contenido que se encuentran en el mismo para administrar su uso

Historias de usuario relacionadas:
 - [Listado de TwitSnaps](#listado-de-snapmsgs)
 - [Visualización de TwitSnap](#visualización-de-snapmsg)
 - [Bloqueo de TwitSnap](#bloquear-snapmsg)



<!-- Administración de servicios TODO -->

#### Administración de servicios

Como administrador del sistema quiero poder gestionar los servicios que se encuentran en el mismo para administrar su uso

Historias de usuario relacionadas:
 - [Listado de servicios](#listado-de-servicios)
 - [Visualización de servicio](#visualización-de-servicio)
 - [Alta de servicio](#alta-de-servicio)
 - [Bloqueo de servicio](#bloquear-de-servicio)

<!-- Metricas TODO -->

#### Métricas

Como administrador del sistema quiero poder visualizar métricas e información de la plataforma para evaluar el estado del negocio

Historias de usuario relacionadas:
- [Métricas de usuarios](#métricas-de-usuarios)
- [Métricas de contenido](#métricas-de-contenido)

___

### Historias de Usuario

<!-- Registro y login -->
___

#### Registro de usuarios

**Descripción**

- Como usuario no registrado quiero registrarme en la plataforma para acceder a las funcionalidades del sistema. 

_En el resto de los CA se utilizará la nomenclatura Usuario como un usuario registrado_

**Criterios de aceptación**

- CA 1: Registro exitoso
  - Cuando el registro del usuario es correcto.
  - Entonces el sistema creará un nuevo usuario con su perfil. Luego permitirá el ingreso al sistema.
- CA 2: Obtención de ubicación
  - Cuando el registro del usuario es correcto.
  - Entonces el sistema deberá solicitarle al usuario una ubicación predeterminada
- CA 3: Obtención de perfil
  - Cuando el registro del usuario es correcto.
  - Entonces el sistema deberá solicitarle al usuario cuales son sus intereses y metas. 
- CA 4: Falta uno o más campos obligatorios
  - Cuando el registro del usuario es incorrecto debido a un ingreso erróneo o faltante de campos. 
  - Entonces el sistema indicará los campos faltantes y/o erróneos y no permitirá el ingreso al sistema.
- CA 5: Registro fallido
  - Cuando el registro del usuario falla debido a un error del servicio.
  - Entonces el sistema indicará un mensaje de error acorde al usuario.

#### Notificación de PIN en proceso de registro

**Descripción**
- Como usuario quiero poder recibir una notificación con un código de seguridad, para confirmar mi registración. Pudiendo optar entre alguno de estos CA

**Criterios de aceptación**
- CA 1: Notificación whatsapp:
  - Cuando un usuario se registra de manera exitosa en la plataforma
  - Entonces deberá  recibir un mensaje de whatsapp con un PIN generado por la plataforma, para confirmar la registración
  - **Como alternativa se puede llegar a realizar el uso del envio de un SMS**.
- CA 2: Notificación Email:
  - Cuando un usuario se registra de manera exitosa en la plataforma
  - Entonces deberá  recibir un correo electronico con un PIN generado por la plataforma, para confirmar la registración 

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

- Como administrador quiero poder dar de alta a otros administradores en la plataforma para acceder a las funcion

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




___


#### Certificado de perfil reconocido

**Descripción**
- Como usuario de TwitSnap, quiero tener la posibilidad de obtener un certificado de perfil reconocido que autentique mi identidad y valide mi presencia en la plataforma, con el fin de establecer mi credibilidad y autenticidad ante otros usuarios.

**Criterios de aceptación**

- CA 1: Solicitud de Certificado de Perfil
    - Cuando deseo obtener un certificado de perfil reconocido,
    - Entonces debo tener la opción de iniciar el proceso de solicitud desde la configuración de mi cuenta o desde una sección dedicada.
    - El sistema debe proporcionar una función clara y accesible para solicitar el certificado de perfil.

- CA 2: Verificación de Identidad
    - Cuando solicito el certificado de perfil,
    - Entonces debo completar un proceso de verificación de identidad para demostrar que soy el titular legítimo de la cuenta.
    - El sistema debe solicitar información y documentos que respalden mi identidad, como una foto de perfi

- CA 3: Evaluación y Aprobación
    - Cuando completo el proceso de solicitud,
    - Entonces el sistema debe evaluar la información y los documentos proporcionados para verificar la autenticidad de mi identidad.
    - Si la evaluación es exitosa, el sistema debe aprobar la solicitud y otorgar el certificado de perfil reconocido.

- CA 4: Indicador de Certificación
    - Cuando mi perfil ha sido certificado,
    - Entonces quiero que en mi perfil se muestre un indicador visual que demuestre que mi cuenta ha sido verificada y tiene un certificado de perfil reconocido.
    - El sistema debe mostrar un icono distintivo o una marca de verificación junto a mi nombre de usuario o en algún lugar visible de mi perfil.

- CA 5: Visualización de Certificados en Perfiles
    - Cuando veo el perfil de otro usuario,
    - Entonces quiero poder ver si su cuenta también tiene un certificado de perfil reconocido.
    - El sistema debe mostrar el indicador visual de certificación en perfiles de otros usuarios que también hayan obtenido el certificado.

- CA 6: Información del Certificado
    - Cuando veo mi certificado de perfil reconocido,
    - Entonces quiero poder acceder a información detallada sobre el proceso de verificación y los detalles de la certificación.
    - El sistema debe proporcionar una sección o enlace donde pueda obtener más información sobre mi certificado y cómo se obtuvo.


<!-- Explorar y descubrir contenido -->  
 
___


#### Búsquedas de usuarios

**Descripción**

- Como usuario quiero poder realizar búsquedas de otros usuario para así poder descubrir nuevas cuentas

**Criterios de aceptación**
- CA 1: Búsqueda de usuario  
  - Cuando se realiza una búsqueda utilizando un nombre de usuario
  - Entonces se deberán retornar los usuarios que cumplan de manera parcial o total con la búsqueda ingresada.
- CA 2: Búsqueda sin resultados
  - Cuando se realiza una búsqueda utilizando un nombre y no existe contenido que cumpla tal condición
  - Entonces se deberá notificar al usuario que no existen resultados para su búsqueda.

___

#### Búsqueda por hashtags

**Descripción**

- Como usuario quiero poder realizar búsquedas de distintos hashtags para así poder seguir los temas que me interesan


**Criterios de aceptación**
- CA 1: Búsqueda por hashtag
  - Cuando se realiza una búsqueda utilizando un hashtag
  - Entonces se deberán retornar los TwitSnap que cumplan de manera total con la búsqueda ingresada.
- CA 2: Búsqueda sin resultados
  - Cuando se realiza una búsqueda utilizando un filtrado y no existe contenido que cumplan tal condición
  - Entonces se deberá notificar al usuario que no existen resultados para su búsqueda.

___

#### Búsqueda por texto

**Descripción**

- Como usuario quiero poder realizar búsquedas utilizando texto libre para así poder encontrar los TwitSnap que contengan dicha informacion.

**Criterios de aceptación**
- CA 1: Búsqueda de texto  
  - Cuando se realiza una búsqueda utilizando texto libre
  - Entonces se deberán retornar los TwitSnap que cumplan de manera parcial o total con la búsqueda ingresada.
- CA 2: Búsqueda sin resultados
  - Cuando se realiza una búsqueda utilizando un nombre y no existe contenido que cumpla tal condición
  - Entonces se deberá notificar al usuario que no existen resultados para su búsqueda.
  
___

#### Trending Topics

**Descripción**

- Como usuario quiero por acceder a los trending topics, para asi acceder a los temas de conversación mas relevantes en el momento

**Criterios de aceptación**

- CA 1: Acceso a los Trending Topics
  - Cuando el usuario accede a la sección de Trending Topics
  - Entonces se le mostrará una lista de los temas de conversación más relevantes en el momento, basados en la popularidad y actividad reciente de los usuarios.

- CA 2: Actualización de los Trending Topics
  - Cuando el usuario está en la sección de Trending Topics
  - Entonces la lista de temas de conversación se actualizará automáticamente a intervalos regulares para reflejar los temas más recientes y relevantes en tiempo real.

- CA 3: Interacción con los Trending Topics
  - *Cuando el usuario selecciona un tema de conversación de la lista de Trending Topics*
  - *Entonces será redirigido a la sección o hilo de discusión correspondiente a ese tema, donde podrá participar y ver las publicaciones relacionadas.*

___

#### Recomendación de cuentas

**Descripción**

- Como usuario quiero por recibir recomendaciones de distintas cuentas basadas en mis intereses y disponibles según mi ubicación geográfica.

**Criterios de aceptación**

- CA 1: Análisis de intereses y ubicación
  - Cuando el usuario utiliza la función de recomendación de cuentas
  - Entonces el sistema analizará los intereses del usuario basados en su actividad previa, publicaciones, interacciones y preferencias expresadas en la plataforma, así como evaluará la ubicación geográfica del usuario.

- CA 2: Lista de cuentas recomendadas
  - Cuando el sistema ha realizado el análisis de intereses y ubicación
  - Entonces se generará una lista de cuentas recomendadas que coincidan con los intereses del usuario y que estén disponibles en su ubicación geográfica.

- CA 3: Interacción con las cuentas recomendadas
  - Cuando el usuario explora la lista de cuentas recomendadas
  - Entonces se proporcionarán opciones para seguir, ver más detalles o interactuar directamente con cada cuenta recomendada, permitiendo al usuario tomar acciones en función de sus intereses y preferencias.



<!-- TwitSnap -->

___

#### Feed

**Descripción**

- Como usuario quiero tener un feed donde pueda ver los TwitSnap (mensajes cortos) de las personas a las que sigo, para mantenerme actualizado con las últimas publicaciones y contenidos relevantes.

**Criterios de aceptación**

- CA 1: Visualización del Feed:
  - Cuando inicio sesión en mi cuenta de TwitSnap,
  - Entonces se debe mostrar un feed en la página principal.
  - El feed debe presentar las publicaciones más recientes, en orden cronológico inverso, mostrando primero las publicaciones más recientes en la parte superior.

- CA 2: Contenido Relevante:
  - Cuando veo el feed,
  - Entonces debe mostrarse exclusivamente los TwitSnap de los usuarios a los que sigo.
  - También se deberá mostrar contenido de importancia para mi cuenta, incluso si proviene de usuarios que no sigo. En el caso de ser contenido de un usuario 

- CA 3: Actualización en Tiempo Real (Opcional):
  - Cuando estoy viendo el feed,
  - Entonces el feed debe actualizarse automáticamente y en tiempo real, sin necesidad de recargar la página.
  - Si un usuario que sigo realiza una nueva publicación mientras estoy viendo el feed, la nueva publicación debe aparecer instantáneamente sin interrupciones ni retrasos.

___

#### Publicación de TwitSnap

**Descripción**

- Como usuario de TwitSnap, quiero poder crear y publicar mensajes cortos (TwitSnap) en mi feed, para compartir contenido relevante y mantenerme conectado con mis seguidores.

**Criterios de aceptación**

- CA 1: Creación de Publicación
  - El sistema debe permitir a los usuarios autenticados crear y publicar mensajes cortos (TwitSnap) en su propio feed.
  - Al crear una nueva publicación de TwitSnap, el usuario debe poder ingresar texto con una longitud máxima definida.
  
- CA 2: Validación de Contenido
  - Antes de realizar la publicación, el sistema debe validar que el contenido del mensaje cumpla con los requisitos establecidos, como límite de caracteres y otras restricciones.
  - Si el contenido no cumple con las validaciones, el sistema debe mostrar un mensaje de error al usuario indicando el motivo y evitar la creación de la publicación.

- CA 3: Edición y Eliminación de Publicaciones
  - Los usuarios deben tener la opción de editar o eliminar sus propias publicaciones después de su creación.
  - Al editar una publicación, el sistema debe permitir al usuario modificar el texto y las etiquetas de la publicación antes de guardar los cambios.

- CA 4: Privacidad de las Publicaciones
  - Las publicaciones realizadas por un usuario pueden ser tanto privadas como públicas.
  - En el caso de que sean privadas, solo deben ser visibles en el feed de las personas que lo siguen, manteniendo la privacidad y restringiendo el acceso a usuarios no seguidores. Caso contrario, son visibles para cualquier usuario 

___

#### Estadísticas de cuenta

**Descripción**

- Como usuario de TwitSnap, quiero poder acceder a estadísticas sobre el rendimiento y la interacción de mi cuenta.

**Criterios de aceptación**


- CA 1: Seguimiento de Interacción de Seguidores
  - Cuando visualizo las estadísticas de mi cuenta,
  - Entonces debo tener acceso a información sobre la actividad de mis seguidores relacionada con mis publicaciones.
  - El panel debe mostrar estadisticas relacionadas a como es el estado de mi cuenta con respecto a la cantidad de seguidores (Numero actual de seguidores, tendencia, etc)
  - Se debera poder realizar un filtrado por un período determinado
  

- CA 2: Actualización en Tiempo Real 
  - Cuando estoy viendo las estadísticas,
  - Entonces el panel de estadísticas debe actualizarse automáticamente y en tiempo real, sin necesidad de recargar la página, para reflejar cualquier interacción reciente de mi cuenta
  - Esto me permitirá ver los cambios en tiempo real.


___

#### Estadísticas de Snapmsg

**Descripción**

- Como usuario de TwitSnap, quiero poder acceder a estadísticas sobre el rendimiento y la interacción con mis publicaciones (TwitSnap), para obtener información relevante sobre la recepción de mi contenido y la actividad de mis seguidores.

**Criterios de aceptación**

- CA 1: Visualización de Estadísticas
  - Cuando accedo a mi cuenta de TwitSnap,
  - Entonces debo tener acceso a un panel de estadísticas que muestre métricas relacionadas con mis publicaciones.
  - El panel debe presentar información sobre la cantidad total de TwitSnap publicados, el número de me gusta recibidos, la cantidad de comentarios realizados por otros usuarios y el número de veces que mis TwitSnap han sido compartidos.

- CA 2: Filtro de Estadísticas por Fecha
  - Cuando utilizo el panel de estadísticas,
  - Entonces debo tener la opción de filtrar las métricas por fecha para analizar el rendimiento de mis TwitSnap en un período específico.
  - Los filtros de fecha deben permitir seleccionar un rango de tiempo personalizado o intervalos predefinidos, como "últimos 7 días", "último mes" o "último año".

- CA 3: Visualización de Estadísticas por Publicación
  - Cuando accedo a la lista de mis publicaciones,
  - Entonces debo poder ver estadísticas específicas para cada TwitSnap individual.
  - Las estadísticas deben incluir el número de me gusta recibidos, la cantidad de comentarios y la cantidad de veces que el TwitSnap ha sido compartido.

___


#### Compartir TwitSnap

**Descripción**

- Como usuario de TwitSnap, quiero tener la posibilidad de compartir TwitSnaps interesantes y relevantes en otras redes sociales, como Facebook, WhatsApp, Twitter, etc., para fomentar la difusión de contenido y promover la interacción en la plataforma y más allá de ella.

**Criterios de aceptación**

- CA 1: Compartir en Redes Sociales
    - Cuando veo un TwitSnap que deseo compartir,
    - Entonces debo tener la opción de compartirlo en otras redes sociales.
    - El sistema debe proporcionar una función clara y accesible para compartir, con un menú o botones que muestren las opciones de compartir en distintas plataformas.

- CA 2: Opciones de Compartir
    - Cuando selecciono la opción de compartir un TwitSnap,
    - Entonces debo poder elegir entre diversas redes sociales y aplicaciones de mensajería para compartirlo.
    - Las opciones de compartir deben incluir, al menos, las redes sociales más populares y aplicaciones de mensajería como Facebook, WhatsApp, Twitter, Instagram, etc.

- CA 3: Personalización de Mensaje (Opcional)
    - Cuando comparto un TwitSnap en otras redes sociales,
    - Entonces debo tener la opción de personalizar el mensaje que acompaña al TwitSnap compartido.
    - Esto me permitirá agregar un comentario, mención o cualquier texto relevante que desee incluir al compartir el contenido en diferentes plataformas.

- CA 4: Confirmación de Compartición
    - Cuando comparto un TwitSnap en una red social,
    - Entonces quiero recibir una confirmación visual de que la acción de compartir se ha realizado con éxito.
    - El sistema debe proporcionar una notificación o mensaje que indique que el TwitSnap ha sido compartido exitosamente en la red social seleccionada.




<!-- Interacciones -->


___

#### Seguir usuario

**Descripción**
- Como usuario de TwitSnap, quiero tener la capacidad de seguir a otros usuarios de la plataforma, para mantenerme actualizado con sus publicaciones y descubrir contenido relevante.

**Criterios de aceptación**
- CA 1: Seguir Usuarios
    - Cuando estoy en el perfil de otro usuario de TwitSnap,
    - Entonces debo tener la opción de seguirlo para recibir sus publicaciones en mi feed.
    - El sistema debe proporcionar un botón o enlace claramente visible que permita seguir al usuario en cuestión.

- CA 2: Confirmación de Seguimiento
    - Cuando decido seguir a un usuario,
    - Entonces quiero recibir una confirmación visual de que la acción de seguimiento se ha realizado con éxito.
    - El sistema debe proporcionar una notificación o mensaje que indique que el usuario ha sido seguido exitosamente.

- CA 3: Dejar de Seguir Usuarios
    - Cuando estoy siguiendo a un usuario,
    - Entonces debo tener la opción de dejar de seguirlo en cualquier momento.
    - El sistema debe proporcionar una manera sencilla y directa de dejar de seguir a un usuario desde su perfil o desde mi lista de usuarios seguidos.

- CA 4: Lista de Seguidores y Seguidos
    - Cuando accedo a mi perfil o a la cuenta de otro usuario,
    - Entonces debo poder ver la lista de usuarios que me siguen y la lista de usuarios a quienes sigo.
    - Las listas deben mostrar el nombre de cada usuario, su imagen de perfil o avatar y proporcionar un enlace para acceder a su perfil.

- CA 5: Privacidad de Seguidores
    - Cuando sigo a un usuario o soy seguido por otro usuario,
    - Entonces el sistema debe garantizar que la privacidad y la configuración de seguidores del perfil sean respetadas.
    - Los usuarios solo deben poder ver la lista de mis seguidores o usuarios seguidos solo si se siguen mutuamente.

___

#### Likes

**Descripción**
- Como usuario de TwitSnap, quiero poder dar "me gusta" (likes) a los TwitSnaps que encuentro interesantes o con los que estoy de acuerdo, para mostrar mi aprecio por el contenido y fomentar la interacción en la plataforma.

**Criterios de aceptación**
- CA 1: Dar "Me Gusta" (Likes)
    - Cuando veo un TwitSnap en el feed o en el perfil de otro usuario,
    - Entonces debo tener la opción de darle "me gusta" al TwitSnap para expresar mi aprobación o interés por el contenido.
    - El sistema debe proporcionar un botón o icono claramente visible que permita dar "me gusta" al TwitSnap.

- CA 2: Confirmación de "Me Gusta"
    - Cuando doy "me gusta" a un TwitSnap,
    - Entonces quiero recibir una confirmación visual de que la acción se ha realizado con éxito.
    - El sistema debe proporcionar una notificación o mensaje que indique que el TwitSnap ha recibido mi "me gusta" de manera exitosa.

- CA 3: Cancelar "Me Gusta" (Unlike)
    - Cuando ya he dado "me gusta" a un TwitSnap y cambio de opinión,
    - Entonces debo tener la opción de cancelar mi "me gusta" en cualquier momento.
    - El sistema debe proporcionar una manera sencilla y directa de quitar el "me gusta" de un TwitSnap que previamente había dado "me gusta".

- CA 4: Contador de "Me Gusta"
    - Cuando veo un TwitSnap,
    - Entonces quiero poder ver la cantidad total de "me gusta" que ha recibido el TwitSnap.
    - El sistema debe mostrar un contador numérico que indique cuántos usuarios han dado "me gusta" al TwitSnap.

- CA 5: Privacidad de los "Me Gusta"
    - Cuando doy "me gusta" a un TwitSnap o recibo "me gusta" en mis TwitSnaps,
    - Entonces el sistema debe garantizar que la privacidad y la configuración de interacciones sean respetadas.
    - Los usuarios solo deben poder ver la cantidad total de "me gusta" en un TwitSnap solo si se siguen mutuamente o si el perfil es publico.


___

#### SnapShare

**Descripción**
- Como usuario de TwitSnap, quiero tener la capacidad de compartir TwitSnaps interesantes de otros usuarios en mi propio feed, de manera similar a un "retweet" en otras plataformas, para promover la interacción y facilitar la difusión de contenido relevante.

**Criterios de aceptación**

- CA 1: SnapShare (Retweet)
    - Cuando veo un TwitSnap de otro usuario que deseo compartir con mis seguidores,
    - Entonces debo tener la opción de realizar un SnapShare, es decir, retwittear el TwitSnap en mi propio feed.
    - El sistema debe proporcionar una función clara y accesible para realizar el SnapShare del TwitSnap.

- CA 2: Confirmación de SnapShare
    - Cuando realizo un SnapShare de un TwitSnap,
    - Entonces quiero recibir una confirmación visual de que la acción se ha realizado con éxito.
    - El sistema debe proporcionar una notificación o mensaje que indique que el TwitSnap ha sido compartido exitosamente en mi feed.

- CA 3: SnapShare en mi Propio Feed
    - Cuando realizo un SnapShare de un TwitSnap,
    - Entonces el TwitSnap compartido debe aparecer en mi propio feed, junto con mi nombre de usuario y avatar, para que mis seguidores puedan verlo.
    - La publicación del SnapShare debe mostrar claramente que es un SnapShare y debe incluir el nombre de usuario del autor original del TwitSnap.

- CA 4: Historial de SnapShares
    - Cuando realizo SnapShares de diferentes TwitSnaps,
    - Entonces quiero tener la capacidad de ver un historial o registro de las comparticiones que he realizado en mi perfil.
    - El sistema debe mostrar una lista de los TwitSnaps compartidos y los usuarios de origen, con fechas y detalles de cada SnapShare.

- CA 5: Privacidad en los SnapShares
    - Cuando realizo un SnapShare de un TwitSnap,
    - Entonces el sistema debe garantizar que la privacidad y la configuración de compartición del TwitSnap original sean respetadas.
    - Los TwitSnaps solo deben ser visibles en mi feed para mis seguidores y no deben ser accesibles por otros usuarios que no forman parte de mi lista de seguidores.

___

#### Mención

**Descripción**
- Como usuario de TwitSnap, quiero tener la capacidad de compartir mencionar en los TwitSnaps a otros usuarios para que les avise cuando los mismos fueron etiquetados en estos.

**Criterios de aceptación**

- CA 1: Mención
    - Cuando escribo un TwitSnap y quiero mencionar a uno de mis seguidores.
    - Entonces quiero poder escribir @ y su usuario para que sea mencionado.
    - El sistema debe proporcionar una UI clara para facilitarme la escritura del usuario deseado.

- CA 2: Notificacion de mención
    - Cuando menciono a un usuario en un TwitSnap,
    - Entonces quiero que el usuario mencionado se entere con una notificacion.
    - El sistema debe proporcionar una notificación o mensaje que indique que al usuario mencionado que fue etiquetado y poder llevarlo a verlo.

- CA 3: Privacidad en las menciones.
    - Cuando soy mencionado en un TwitSnap,
    - Entonces el sistema debe garantizar que se me notifique solo si sigo al usuario que me menciono.
    - Los TwitSnaps solo deben ser visibles en mi feed para mis seguidores si yo decido SnapSharear el mismo, y si el TwitSnap es publico en el feed del usuario que lo creo.

___

#### TwitSnap favoritos

**Descripción**

- Como usuario de TwitSnap, quiero tener la capacidad de marcar TwitSnaps como favoritos para poder acceder rápidamente a ellos y guardar contenido relevante que deseo revisar nuevamente en el futuro.

**Criterios de aceptación**

- CA 1: Marcar TwitSnap como Favorito
    - Cuando veo un TwitSnap que deseo guardar como favorito,
    - Entonces debo tener la opción de marcarlo como favorito para guardar el contenido.
    - El sistema debe proporcionar un botón o icono claramente visible que permita marcar el TwitSnap como favorito.

- CA 2: Confirmación de Favorito
    - Cuando marco un TwitSnap como favorito,
    - Entonces quiero recibir una confirmación visual de que la acción se ha realizado con éxito.
    - El sistema debe proporcionar una notificación o mensaje que indique que el TwitSnap ha sido marcado como favorito.

- CA 3: Acceso a TwitSnaps Favoritos
    - Cuando deseo acceder a mis TwitSnaps favoritos,
    - Entonces debo tener la capacidad de ver una lista de los TwitSnaps que he marcado como favoritos.
    - El sistema debe proporcionar una sección o una página donde se muestren todos los TwitSnaps favoritos del usuario.

- CA 4: Gestión de Favoritos
    - Cuando veo mis TwitSnaps favoritos,
    - Entonces debo tener la opción de eliminar TwitSnaps de la lista de favoritos si ya no deseo mantenerlos como favoritos.
    - El sistema debe proporcionar una manera sencilla y directa de quitar el estado de favorito de un TwitSnap.

- CA 5: Visualización de Favoritos de Otros Usuarios (Opcional)
    - Cuando veo el perfil de otro usuario,
    - Entonces quiero tener la opción de ver los TwitSnaps que ha marcado como favoritos.
    - El sistema debe mostrar una lista de los TwitSnaps favoritos del usuario si este ha configurado su perfil para que esta información sea visible públicamente.

___


#### Directo

**Descripción**
- Como usuario de TwitSnap, quiero tener la capacidad de realizar transmisiones en directo (Directos) para compartir momentos en tiempo real con mis seguidores y fomentar la interacción en la plataforma.

**Criterios de aceptación**

- CA 1: Iniciar Transmisión en Directo
    - Cuando deseo iniciar una transmisión en directo (Directo),
    - Entonces debo tener la opción de iniciar la transmisión desde mi perfil o mediante un botón dedicado en la interfaz.
    - El sistema debe proporcionar una función clara y accesible para comenzar la transmisión en directo.

- CA 2: Confirmación de Inicio de Directo
    - Cuando inicio una transmisión en directo,
    - Entonces quiero recibir una confirmación visual de que la acción se ha realizado con éxito.
    - El sistema debe proporcionar una notificación o mensaje que indique que la transmisión en directo ha comenzado.

- CA 3: Visualización de Transmisión en Directo
    - Cuando estoy realizando una transmisión en directo,
    - Entonces quiero que mis seguidores puedan ver la transmisión en tiempo real en sus feeds o en mi perfil.
    - El sistema debe asegurarse de que la transmisión en directo sea visible para mis seguidores y accesible desde la página principal o la sección de Directos.

- CA 4: Interacción Durante el Directo
    - Cuando estoy transmitiendo en directo,
    - Entonces quiero tener la capacidad de interactuar con mis seguidores en tiempo real.
    - El sistema debe permitir que los espectadores envíen mensajes, hagan preguntas o envíen reacciones durante la transmisión en directo.

- CA 5: Finalizar Transmisión en Directo
    - Cuando decido finalizar la transmisión en directo,
    - Entonces debo tener la opción de detener la transmisión y finalizarla.
    - El sistema debe proporcionar una función clara y accesible para terminar la transmisión en directo.

- CA 6: Historial de Transmisiones en Directo 
    - Cuando realizo transmisiones en directo en diferentes momentos,
    - Entonces quiero tener la capacidad de ver un historial o registro de las transmisiones en directo que he realizado.
    - El sistema debe mostrar una lista de las transmisiones en directo anteriores con fechas y detalles de cada transmisión.

- CA 7: Privacidad de las Transmisiones en Directo
    - Cuando inicio una transmisión en directo,
    - Entonces el sistema debe garantizar que la privacidad y la configuración de compartición sean respetadas.
    - Las transmisiones en directo solo deben ser visibles para mis seguidores y no deben ser accesibles por usuarios que no forman parte de mi lista de seguidores.


<!-- Messages-->
___

#### Mensajes privados
- Como usuario quiero poder enviar mensajes privados a otro usuario de la plataforma

**Criterios de aceptación**

- CA 1: Mensaje directo
  - Cuando se realiza un mensaje directo
  - Entonces solo los involucrados podrán leer el mismo y se deberá mantener una conversación en tiempo real por mensajes


<!-- Calificaciones-->

___

#### Calificación cuantitativa de un directo

**Descripción**
- Como usuario de TwitSnap, quiero tener la posibilidad de calificar cuantitativamente las transmisiones en directo (Directos) que veo, para expresar mi opinión sobre la calidad y el contenido de la transmisión.

**Criterios de aceptación**

- CA 1: Calificación Cuantitativa
    - Cuando estoy viendo una transmisión en directo (Directo),
    - Entonces debo tener la opción de otorgar una calificación cuantitativa a la transmisión.
    - El sistema debe proporcionar una manera clara y accesible de asignar una calificación numérica, como una escala del 1 al 5, a la transmisión en directo.

- CA 2: Confirmación de Calificación
    - Cuando otorgo una calificación a una transmisión en directo,
    - Entonces quiero recibir una confirmación visual de que la calificación se ha registrado con éxito.
    - El sistema debe proporcionar una notificación o mensaje que indique que la calificación ha sido registrada.

- CA 3: Acceso a las Calificaciones
    - Cuando deseo acceder a las calificaciones que he otorgado a las transmisiones en directo,
    - Entonces debo tener la capacidad de ver una lista de las transmisiones calificadas y las calificaciones asignadas.
    - El sistema debe proporcionar una sección o página donde se muestren mis calificaciones cuantitativas anteriores.

- CA 4: Promedio de Calificaciones
    - Cuando veo una transmisión en directo calificada por otros usuarios,
    - Entonces quiero poder ver el promedio de las calificaciones cuantitativas otorgadas por diferentes espectadores.
    - El sistema debe mostrar el promedio numérico de las calificaciones recibidas por la transmisión en directo.

- CA 5: Impacto de las Calificaciones  (Opcional)
    - Cuando una transmisión en directo recibe múltiples calificaciones,
    - Entonces quiero que las calificaciones cuantitativas afecten de alguna manera a la visibilidad o la reputación de la transmisión.
    - El sistema podría utilizar las calificaciones para destacar las transmisiones mejor calificadas o mostrarlas en una sección especial.

___

#### Calificación cualitativa de un directo

**Descripción**
- Como usuario de TwitSnap, quiero tener la capacidad de dejar comentarios detallados en las transmisiones en directo (Directos) que veo, para expresar mis pensamientos, preguntas y opiniones sobre el contenido y la experiencia de la transmisión.


**Criterios de aceptación**

CA 1: Calificación Cualitativa/Comentarios
    - Cuando estoy viendo una transmisión en directo (Directo),
    - Entonces debo tener la opción de escribir y dejar comentarios en tiempo real sobre la transmisión.
    - El sistema debe proporcionar una manera clara y accesible de abrir un campo de texto para escribir comentarios.

- CA 2: Publicar Comentarios
    - Cuando escribo un comentario en una transmisión en directo,
    - Entonces debo tener la opción de publicar el comentario para que otros espectadores y el creador de la transmisión puedan verlo.
    - El sistema debe proporcionar un botón o icono claramente visible para publicar el comentario.

- CA 3: Confirmación de Publicación de Comentario
    - Cuando publico un comentario en una transmisión en directo,
    - Entonces quiero recibir una confirmación visual de que el comentario se ha publicado con éxito.
    - El sistema debe proporcionar una notificación o mensaje que indique que el comentario ha sido publicado.

- CA 4: Visualización de Comentarios en el Directo
    - Cuando un creador de transmisión en directo ve los comentarios,
    - Entonces quiero que los comentarios sean visibles en tiempo real durante la transmisión para que el creador y otros espectadores puedan interactuar con ellos.
    - Los comentarios deben aparecer en una sección dedicada de la interfaz del Directo.

- CA 5: Moderación de Comentarios (Opcional)
    - Cuando un creador de transmisión en directo recibe comentarios,
    - Entonces quiero que el creador tenga la opción de moderar los comentarios para eliminar aquellos que sean inapropiados o violen las normas de la plataforma.
    - El sistema debe proporcionar herramientas de moderación para que el creador pueda gestionar los comentarios en su transmisión en directo.



 <!-- Notificaciones -->

 
___

#### Notificación por nuevo mensaje

**Descripción**
- Como usuario quiero poder recibir una notificación en caso de recibir un nuevo mensaje

**Criterios de aceptación**
- CA 1: Pantalla de notificaciones
  - Cuando un usuario recibe un mensaje directo
  - Entonces deberá poder visualizar una notificación en la aplicación para acceder a dicho mensaje 
- CA 2: Notificación push.
  - Cuando un usuario recibe un mensaje directo
  - Entonces deberá recibir notificación push en la aplicación para acceder a dicho mensaje

___


#### Notificación por trending TwitSnap

**Descripción**
- Como usuario, quiero recibir notificaciones cuando un TwitSnap relacionado con un tema de tendencia (trending) sea publicado para poder mantenerme informado sobre los temas populares en la plataforma.

**Criterios de aceptación**

- CA 1: Notificación de TwitSnap Trending
    - Cuando un TwitSnap relacionado con un tema de tendencia es publicado en la plataforma,
    - Entonces el sistema deberá enviar una notificación al usuario para informarle sobre la publicación del TwitSnap.

- CA 2: Acceso a la Publicación Trending
    - Cuando recibo una notificación sobre un TwitSnap relacionado con un tema de tendencia,
    - Entonces debo poder acceder directamente a la publicación del TwitSnap desde la notificación.

- CA 3: Notificación Visual en la Aplicación
    - Cuando un TwitSnap relacionado con un tema de tendencia es publicado,
    - Entonces el usuario deberá poder ver una notificación visual en la aplicación que indique la existencia de un TwitSnap trending.

- CA 4: Notificación Push de TwitSnap Trending
    - Cuando un TwitSnap relacionado con un tema de tendencia es publicado,
    - Entonces el usuario deberá recibir una notificación push en la aplicación para informarle sobre la publicación del TwitSnap trending.

- CA 5: Pantalla de notificaciones
  - Cuando recibo una notificación sobre un TwitSnap relacionado con un tema de tendencia,
  - Entonces deberá poder visualizar una notificación en la aplicación para acceder a dicho contenido 

- CA 6: Notificación Whatsapp de TwitSnap Trending (Optativa)
    - Cuando un TwitSnap relacionado con un tema de tendencia es publicado,
    - Entonces el usuario deberá recibir una notificación a su Whatsapp para informarle sobre la publicación del TwitSnap trending.

___


#### Notificación por transmisión en directo

**Descripción**
- Como usuario, quiero recibir notificaciones cuando una transmisión en directo (Directo) esté a punto de comenzar, para poder unirme y participar en tiempo real.

**Criterios de aceptación**

- CA 1: Notificación de Directo
    - Cuando una transmisión en directo (Directo) esté a punto de comenzar,
    - Entonces el sistema deberá enviar una notificación al usuario para informarle sobre la transmisión en directo.

- CA 2: Acceso al Directo
    - Cuando recibo una notificación sobre un Directo
    - Entonces debo poder acceder directamente a la transmisión en directo desde la notificación.

- CA 3: Notificación Visual en la Aplicación
    - Cuando una transmisión en directo (Directo) esté a punto de comenzar,
    - Entonces el usuario deberá poder ver una notificación visual en la aplicación que indique el comienzo de la transmisión en directo.

- CA 4: Notificación Push
    - Cuando una transmisión en directo (Directo) esté a punto de comenzar,
    - Entonces el usuario deberá recibir una notificación push en la aplicación para informarle sobre el comienzo de la transmisión en directo.

- CA 5: Pantalla de notificaciones
  - Cuando recibo una notificación sobre un nuevo Directo
  - Entonces deberá poder visualizar una notificación en la aplicación para acceder a dicho contenido 

- CA 6: Privacidad de las notificaciones
    - Cuando una transmisión en directo (Directo) esté a punto de comenzar,
    - Entonces solo los usuarios que son seguidores del iniciador del Directo deberán recibir notificaciones sobre el comienzo del mismo

___


#### Notificación por hito de seguidores

**Descripción**
- Como usuario quiero poder recibir una notificación en caso que nuevos usuarios empiecen a seguir mi perfil


**Criterios de aceptación**
- CA 1: Pantalla de notificaciones
  - Cuando un usuario logra nuevos seguidores.
  - Entonces deberá poder visualizar una notificación en la aplicación para acceder a dicho mensaje
- CA 2: Notificación push.
  - Cuando un usuario logra nuevos seguidores.
  - Entonces deberá recibir notificación push en la aplicación para acceder a dicho mensaje
- CA 3: Acceso al Directo
    - Cuando recibo una notificación por un hito de seguidores
    - Entonces debo poder acceder directamente a la notificación.

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

#### Listado de TwitSnaps

**Descripción**
- Como administrador del sistema quiero poder listar todos losTwitSnaps que se encuentren en el sistema para acceder a ellos 

**Criterios de aceptación**
- CA 1: Listado con TwitSnaps existentes
 - Cuando un administrador solicita visualizar el listado de TwitSnaps en la plataforma
 - Entonces se deberán listar todos los TwitSnaps existentes en el sistema
- CA 2: Listado con TwitSnaps existentes utilizando filtros
 - Cuando un administrador solicita visualizar el listado de TwitSnaps en la plataforma y aplica un filtrado 
 - Entonces se deberán listar todos los TwitSnaps existentes en el sistema que cumplan con dichos filtros

___

#### Visualización de TwitSnap

**Descripción**
- Como administrador del sistema quiero poder visualizar un TwitSnap para verificar su contenido. 

**Criterios de aceptación**
- CA 1: Visualización de TwitSnaps
 - Cuando un administrador visualiza el TwitSnap existente en la plataforma
 - Entonces se deberá poder visualizar todos sus datos asociados

___

#### Bloqueo de TwitSnap

**Descripción**
- Como administrador del sistema quiero poder bloquear un TwitSnaps que se encuentren en el sistema para que no puedan acceder al mismo

**Criterios de aceptación**
- CA 1: Bloqueo exitoso 
 - Cuando un administrador realiza el bloqueo de un TwitSnaps existente en la plataforma
 - Entonces se deberá visualizar que el TwitSnaps está bloqueado y los usuarios no deberán poder acceder a él en la aplicación
- CA 2: Desbloqueo exitoso 
 - Cuando un administrador realiza el desbloqueo de un TwitSnaps existente en la plataforma
 - Entonces se deberá visualizar que el TwitSnaps no esta bloqueado y los usuarios deberán poder acceder a el en la aplicación
 
 


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

<!-- Metricas -->
___

#### Métricas de usuario

**Descripción**
- Como administrador del sistema quiero poder visualizar las métricas de usuarios para medir el uso de la plataforma y sus servicios

**Criterios de aceptación**

- CA 1: Métricas de Nuevos Usuarios utilizando Mail y Contraseña
  - Cuando un nuevo usuario se registra en la plataforma utilizando correo electrónico y contraseña,
  - Entonces se deben registrar y almacenar las métricas relacionadas con el proceso de registro, incluyendo el número total de nuevos usuarios registrados, la tasa de éxito del registro y el tiempo promedio de registro.

- CA 2: Métricas de Nuevos Usuarios utilizando Identidad Federada
  - Cuando un nuevo usuario se registra en la plataforma utilizando un proveedor de identidad federada (por ejemplo, Google, Facebook, etc.),
  - Entonces se deben registrar y almacenar las métricas asociadas al registro a través de identidad federada, incluyendo el número total de nuevos usuarios registrados de esta manera y la distribución de los proveedores de identidad utilizados.

- CA 3: Métricas de Login de Usuarios utilizando Mail y Contraseña
  - Cuando un usuario inicia sesión en la plataforma utilizando su correo electrónico y contraseña,
  - Entonces se deben registrar y almacenar las métricas relacionadas con el proceso de inicio de sesión, como el número de inicios de sesión exitosos, intentos fallidos de inicio de sesión y tiempo promedio de inicio de sesión.

- CA 4: Métricas de Login de Usuarios utilizando Identidad Federada
  - Cuando un usuario inicia sesión en la plataforma utilizando identidad federada,
  - Entonces se deben registrar y almacenar las métricas relacionadas con el inicio de sesión a través de identidad federada, incluyendo el número total de inicios de sesión exitosos utilizando proveedores de identidad federada.

- CA 5: Métricas de Usuarios Bloqueados
  - Cuando un usuario es bloqueado o suspendido en la plataforma debido a violaciones de términos de uso o políticas,
  - Entonces se deben registrar y almacenar las métricas relacionadas con usuarios bloqueados, incluyendo el número total de usuarios bloqueados, las razones para el bloqueo y la duración de los bloqueos.

- CA 6: Métricas de Recupero de Contraseña
  - Cuando un usuario solicita y completa un proceso de recuperación de contraseña,
  - Entonces se deben registrar y almacenar las métricas asociadas al proceso de recuperación de contraseña, incluyendo el número de solicitudes de recuperación, el éxito de las recuperaciones y el tiempo promedio de recuperación.

- CA 7: Métricas de Usuarios por Zona Geográfica
  - Cuando se registra la ubicación geográfica de los usuarios durante el registro o el inicio de sesión,
  - Entonces se deben registrar y almacenar las métricas relacionadas con la distribución geográfica de los usuarios, incluyendo la cantidad de usuarios por zona geográfica, las ubicaciones más comunes y las tendencias de uso en diferentes regiones.

___
#### Métricas de contenido

**Descripción**
- Como administrador del sistema quiero poder visualizar las métricas de contenido para medir el uso de la plataforma y sus servicios

**Criterios de aceptación**

- CA 1: Métricas de Nuevos TwitSnaps
  - Cuando un usuario publica un nuevo TwitSnap en la plataforma,
  - Entonces se deben registrar y almacenar las métricas relacionadas con la creación de TwitSnaps, incluyendo el número total de nuevos TwitSnaps publicados, la frecuencia de publicación y las tendencias de uso a lo largo del tiempo.

- CA 2: Métricas de Nuevas Transmisiones en Directo
  - Cuando un usuario inicia una nueva transmisión en directo (Directo) en la plataforma,
  - Entonces se deben registrar y almacenar las métricas asociadas al inicio de transmisiones en directo, incluyendo el número total de nuevas transmisiones iniciadas, la duración promedio de las transmisiones y la participación de la audiencia durante las mismas.

- CA 3: Métricas de Hashtags
  - Cuando los usuarios utilizan hashtags en sus TwitSnaps y comentarios,
  - Entonces se deben registrar y almacenar las métricas relacionadas con el uso de hashtags, incluyendo la popularidad de hashtags específicos, la frecuencia de uso de hashtags en diferentes TwitSnaps y la tendencia de los hashtags a lo largo del tiempo.




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

___

### Tecnologias

Stack de tecnologías recomendadas para el desarrollo de los distintos componentes.

#### Aplicación mobile

Para el desarrollo de la App se podrá optar por:
- Desarrollar sobre [React Native](https://reactnative.dev/) utilizando [JavaScript](https://developer.mozilla.org/es/docs/Web/JavaScript) como lenguaje de programación. 
- Desarrollar sobre [Android](https://developer.android.com/) nativo utilizando [Kotlin](https://kotlinlang.org/) como lenguaje de programación.

___

#### Servicios backend

Para el desarrollo de los servicios backend se deberá utilizar como lenguajes de programación:
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
Para el uso de contenido multimedia se recomienda utilizar el servicio provisto por firebase [Storage](https://firebase.google.com/docs/storage?hl=es)

___

#### Chat
Para el uso del chat en tiempo real se recomienda utilizar el servicio provisto por firebase [Real time database](https://firebase.google.com/docs/database?hl=es)

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
La catedra recomienda leer la sección <<COMPLETAR>> del sitio de la materia para informarse las distintas opciones disponibles
 

___

### Despliegue usando k8s

De manera optativa se podrá realizar una migración de los servicios backend de la plataforma a kubernetes

### UX

Se deberá presentar evidencia de prototipado del diseño de pantallas, las cuales serán convalidadas junto al ayudante a cargo

Para el diseño de la interfaz se valorara el uso de las guías de diseño propuestas por Google con _[Material Design](https://material.io/design/)_.

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
| Checkpoint 0 |  07/9 | A definir |
| Checkpoint 1 |  28/9 | A definir |
| Checkpoint 2 |  26/10 | A definir |
| Checkpoint 3 |  16/11  | A definir |
| Entrega Final | 7/12 | A definir |
    
## Historias obligatorias y optativas

### Obligatorias



### Optativas
    
## Material de referencia
  
