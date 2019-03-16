# HypeChat

Una importante empresa, AppMaker©, ha decidido encargarnos el desarrollo de una **plataforma para la comunicación informal de empresas/equipos de trabajo**. El principal objetivo es permitir conectar en tiempo real a personas de todo el mundo para poder trabajar de forma colaborativa. 

AppMaker busca posicionarse en el mercado de aplicaciones, deseando conectar esta aplicación con sus otras aplicaciones que poseen gran cantidad de usuarios.

## Aplicaciones requeridas

La aplicación constará de tres componentes:

* Un **servidor**, _Application Server_, el cual será responsable de conectar a los usuarios.
* Una aplicación **Android**, el cual será utilizado por los usuarios.
* Una **Interfaz Web** en donde se administrarán los datos de la aplicación.

![Componentes](images/components.png)

### Application Server

Se trata de una aplicación por consola destinada a mantenerse en ejecución por períodos prolongados de tiempo.

Esta aplicación debe brindar una interfaz REST [1] para la comunicación de los diferentes usuarios.

#### Servicio de autenticación (login)
Este servicio permitirá a los usuarios poder ingresar al sistema, obteniendo un token que deberá ser utilizado por los demás servicios. 

#### Servicio de recupero de contraseña
Este servicio permitirá a los usuarios poder recuperar una cuenta. Este servicio deberá generar un token que deberá ser utilizado para definir una nueva contraseña

#### Servicio de configuración de contraseña
Este servicio permitirá a un usuario definir una nueva contraseña. Este servicio verificará que se haya solicitado un token utilizando el _Servicio de recupero de contraseña_.

#### Servicio de registro
Este servicio permitirá a los usuarios darse de alta en el sistema.

#### Ingreso a equipo/organización
Este servicio permitirá a un usuario sumarse a un equipo/organización. Este servicio utiizará un token previamente generado por el servicio [Servicio para invitación a equipo/organización](servicio-para-invitación-a-equipoorganización).

#### Servicio de consulta de perfil
Este servicio permitirá consultar el perfil de un usuario. El mismo está compuesto por :
* Datos personales (Nombre, Apellido, EMail)
* Foto de perfil
* Equipo/corporaciones al que se encuentra subscripto
* Canales de conversación activos.
* Rol (por cada organización): Ver sección [Roles](#roles).

#### Servicio de modificación de perfil
Este servicio permite a un usuario actualizar su perfil, debe permitir modificar y actualizar los siguientes datos:
* Datos personales (Nombre, Apellido, EMail, Cuenta de Facebook, GMail, etc)
* Foto de perfil
* Rol (indicando la organización).Ver sección [Roles](#roles).

##### Roles
El sistema debe permitir poder diferenciar los permisos que tiene un usuario a la hora de realizar diferentes acciones. se debe dar soporte para los siguientes roles:
* Creador: usuario creador de la organización. Este rol podrá realizar cualquier acción sobre la organización: 
  - Administrar canales (alta/baja/modificación) dentro de la organización y eliminar usuarios dentro de la organización.
  - Administrar organización (alta/baja/modificación) dentro de la organización y eliminar usuarios dentro de la organización.
  - Cambiar roles de usuarios

* Moderador: usuario moderador de una organización. Este rol podrá:
  - Administrar canales (alta/baja/modificación) dentro de la organización
  - Administrar canales (alta/baja/modificación) dentro de la organización y eliminar usuarios dentro de la organización. 
  - Administrar usuarios dentro de la organización (alta/baja)
* Miembro: usuario miembro de una organización.  Este rol podrá:
  - Administrar sus propios canales

#### Servicio de creación de equipo/organización
Este servicio permitirá la creación de un nuevo equipo/organización. Cada equipo/organización deberá tener los siguientes datos:
 - Nombre
 - Imagen
 - Ubicación
 - Usuario creador: ver sección [Roles](#roles).
 - Descripción
 - Mensaje de bienvenida
 - Mapa de usuarios activos

#### Servicio para invitación a equipo/organización
Este servicio permitirá agregar a un usuario a un equipo/organización de conversación. Este servicio generará un token que deberá ser usado por el usuario para poder aceptar la invitación.

#### Servicio para creación de canal
Este servicio permitirá la creación de un nuevo canal de converación, _room_. Datos asociados:
- Nombre
- Visibilidad: privado/público.
- Usuario creador
- Descripción
- Mensaje de bienvenida

#### Servicio para envío de mensajes
Este servicio permitirá poder enviar mensajes a un usuario o a varios, a través de un canal de conversación.

Tipos de mensajes:
 - _Chat directo_: mensaje dirigido a un sólo usuario
 - _Chat grupal_: mensaje dirigido a un canal
 - _Imagen_: mensaje que contiene una imágen asociada
 - _Archivo_: mensaje que contiene un archivo
 - _Snippet_: mensaje de texto que representa código fuente.

##### Menciones
Si el mensaje contiene una _mención_ a un usuario, que comenzará con el caracter `@`, se deberá emitir una notificación al usuario mencionado. También será posible notificar a todos los usuarios a través del mensaje `@all`.

En caso de que el usuario no se encuentre en el canal se deberá agregarlo, generando una notificación para el usuario mencionado.

El sistema proveerá de un usuario _bot_ que responderá a las menciones que se le hagan al mismo `@tito`. Para más detalle ver sección de [Usuario bot](#usuario-bot).

##### Palabras prohibidas
Se deberá reemplazar en cada mensaje las palabras que se encuentre prohibidas por una organización/equipo.

#### Usuario bot
El sistema deberá permitir la creación de usuarios bots que respondan de forma automática a mensajes que envíen los usuarios. Para esto el sistema debe proporcionar un sistema de `hooks` que permitirán poder notificar a un sistema externo que ha ocurrido un evento de interés (mención).

##### Servicio para alta de bot
Este servicio deberá permitir asociar una mención de un usuario a un callback mediante una URL. Por ejemplo, si se indica que para la mención `@tiempo` responderá la URL `http://tiempo.com.ar/callback`, y un usuario menciona al usuario bot mediante un mensaje del estilo `@tiempo buenos aires`, el sistema deberá enviar la información del mensaje a la URL asociada. Es decir, se enviará `buenos aires` a la URL `http://tiempo.com.ar/callback` en formato `JSON`. Los detalle de la implementación quedarán bajo la responsabilidad del grupo.

Se debe indicar a que equipo/organización pertenece el bot que se require dar de alta.

##### Bot-Tito
Cada vez que se realice una mención dentro de algún mensaje se debe verificar si el mismo contiene una mención al usuario bot de la aplicación `@tito`. Este usuario deberá poder responder a los siguientes mensajes.
 - `@tito help`: muestra los comandos disponibles
 - `@tito info`: muestra información del canal: integrantes, cantidad de mensajes, etc
 - `@tito mute <n>`: desactiva respuestas por n segundos
 - `@tito me`: muestra información del usuario que envia el mensaje.

Además de estos comandos `tito` deberá poseer acciones automáticas:
 - Mensaje de bievenida: al ingresar un usuario nuevo se deberá generar un saludo de bienvenida.

#### Servicio para administración de palabras prohibidas
Este servicio permitirá administrar las palabras prohibidas por un equipo/organización.

#### Servicio para administración de bots
Este servicio permitirá administrar bots.

#### Servicio para invitación de usuario a conversación
Este servicio permitirá agregar a un usuario a un canal de conversación. Este servicio debe emitir una notificación a al usuario.

#### Interfaz WEB
La interfaz WEB deberá brindar una GUI que permita la administración de datos.

##### Login
La interfaz WEB deberá solicitar usuario y contraseña para acceder a la administración de datos. Estos usuarios serán de uso exclusivo para la interfaz WEB.

##### Administración de equipos
La interfaz WEB debe permitir la administración de equipos/organizaciones. 

##### Administración de usuarios
La interfaz WEB debe permitir la administración de equipos/organizaciones. 

##### Administración de palabras prohibidas
La interfaz WEB debe permitir la administración de palabras prohibidas por equipos/organizaciones. 

##### Visualización de estadísticas 

La interfaz WEB debe mostrar gráficos de actividad de los usuarios dentro del sistema. Se deberán visualizar al menos las siguientes estadísticas:

* Cantidad de usuarios registrados
* Cantidad de mensajes enviados

### Android Client

Este cliente se comunicará únicamente con un [Application Server](#application-server). A continuación se dará una breve descripción de las funcionalidades esperadas para la aplicación Android. Se deberá validar con el ayudante asignado el alcance de las mismas.

#### Registro

En caso de que la persona que desee utilizar la aplicación no tenga un usuario registrado la aplicación debe permitir poder registrar un usuario nuevo. Este registro deberá poder ser integrado con Facebook, permitiendo ingresar las credenciales de facebook y utilizar los datos asociados de la cuenta para completar el registro del usuario dentro del sistema.

#### Autenticación

Para que el cliente pueda enviar y recibir conversaciones el mismo debe autentificarse con el servidor. Para esto el cliente debe permitir al usuario ingresar usuario y contraseña. Se deberá diseñar una pantalla de ingreso a la aplicación.
Cuando la autenticación es exitosa, se almacenará un token de autenticación para realizar las operaciones con el servidor.

#### Perfil de usuario
Los usuarios podrán visualizar su perfil o el de otros usuarios. El perfil tendrá los datos del usuario y sus actividades dentro del sistema. Dentro de las actividades se deberá mostrar estadísticas del usuario (organizaciones a la que pertenece, cantidad de mensajes enviados).

#### Listado de canales disponibles
Se deberán listar los canales disponibles

#### Vista de conversación de canal de conversación.
Se deberán mostrar los mensajes intercambiados entre los usuarios de un canal de conversación.

#### Vista de detalle de canal de información
Se deberá mostrar la información asociada a un canal de información

#### Listado de conversaciones directas
Se deberán listar las conversaciones entre usuarios.

#### Vista de conversación
Se deberán mostrar los mensajes intercambiados entre usuarios.

#### Mapa de usuarios de una organización 
Se deberá poder visualizar la ubicación de los miembros de un equipo/organización en base a la ubicación que brindaron al registrarse. Esta opción dependerá de como este configurado el equipo/organización al momento de crearse.

#### Interfaz gráfica

Para el diseño de la interfaz deben respetarse las [guías de diseño propuestas por Google](https://www.google.com/design/spec/material-design/introduction.html).

#### Notificaciónes _Push_

Para el envío y recepción de notificaciones del sistema (ej. mensajes de Chat, cambios de estado de la compra) se deberá utilizar el servicio de notificaciones push de [FCM](https://firebase.google.com/products/cloud-messaging/)

## Tecnologias

Para el desarrollo del _Application Server_ se podrá utilizar **Python** o **NodeJS** y **PostgreSQL** y/o **MongoDB** como motor de base de datos.

Esta elección será responsabilidad del grupo y la misma deberá estar justificada en la documentación técnica que formará parte del TP.

### Empaquetamiento

Cada uno de los desarrollos solicitados debe empaquetarse según el estandar de la plataforma, es decir:

* _Application Server_: Python Setuptools (`setup.py` y `requeriments.txt`) ó Node Package Manager (`npm`, `package.json`), Yarn Package Manager(https://yarnpkg.com/lang/en/). Según corresponda
* _Android Client_: Android Application Package (`apk`)

Además, el servidor deberá traer un `Dockerfile` que permita correrlos sin necesidad de tener instalado los respectivos lenguajes.

### Despliegue en la Nube

El [Application Server](#application-server), se deberán disponibilizar en la nube utilizando una plataforma como servicio (_PAAS_). Se recomienda usar [Heroku](https://www.heroku.com/) ya que cuenta con todos los requerimientos tecnológicos pedidos anteriormente.

### Log

Los servidores deben contar con un sistema de log en donde se registren los eventos que se generen durante la ejecución. El sistema de log debe permitir configurar el nivel de los eventos que desean registrar. Estos niveles son:

| Nivel | Condiciones |
| ----- | ----------- |
| Error | Condición de falla catastrófica, el sistema no puede funcionar. (criterio de las 2 a.m.) Condición que haga que la aplicación no pueda ejecutar una funcionalidad. Ejemplo: No es posible conectarse con la base de datos |
| Warn | Cualquier condición anómala que afecte el funcionamiento del sistema, pero no impida la funcionalidad básica Ejemplos: Uso de APIs deprecadas, Mal uso de APIs |
| Info | Cualquier acción correspondiente a un caso de uso iniciada por el usuario o el sistema. Información que permita trazar el historial de las entidades. Ejemplos: Conexión a la base de datos exitosa, Conexión de nuevo cliente |
| Debug | Información de contexto que permita resolver un problema técnico. Debe ser útil incluso sin el código fuente Ejemplo:  Datos de login para la DB |

Es necesario recalcar que para que un log sea útil, debe poder ser accedido.

El cliente Android deberá utilizar el [sistema de log por defecto](http://developer.android.com/intl/es/reference/android/util/Log.html)

### Pruebas y Métricas

El desarrollo de la aplicación se deberá adaptar a los estándares de calidad utilizados por AppMaker©. Dentro de estos estándares se encuentran:

* Pruebas unitarias [2]
* Métricas: code coverage debe ser mayor a 75% [3]
* Respetar estándar para estilo de codificación: Lint [4]
* Pruebas de integración utilizando python como lenguaje de scripting.
* Todas aquellas que se consideren convenientes para garantizar la calidad de las aplicaciones desarrolladas.

**Nota:** Esta sección hace solo referencía al _Application server_. No se toma como requerimiento el realizar pruebas sobre el cliente Android.

### Integración continua / Despligue continuo

Las pruebas y métricas anteriormente mencionadas deberan correr bajo una plataforma de integración continua. Se sugiere el uso de [TravisCI](https://travis-ci.org/), pero se podrá utilizar otro previa justificación.

El resultado del _code coverage_ debe ser desplegado automáticamente a una plataforma que permita visualizarlas, entre muchas posibilidades se encuentran:

* [Coveralls](https://coveralls.io/)
* [Codecov](https://codecov.io/)
* Usar _Github Pages_ para generar una web para visualizarlo

Finalmente, el despliegue al servidor de _PAAS_ elegido deberá ser automático. Este deberá tener en cuenta como la actualización de la base de datos (cambios en las tablas, etc). El mecanismo utilizado para disparar dicho despliegue (utilizar el branch _master_ como productivo, utilizar un tags con nombre especial) será definido por los desarrolladores y deberá ser detallado en la documentación.

### Documentación

Se deberá entregar la siguiente documentación:

* Application Server:
* Manual de administrador: Instalación y configuración
* Definición de Arquitectura / Diseño de la aplicación (**Debe incluir especificación de Api REST: [OpenAPI 2.0](https://github.com/OAI/OpenAPI-Specification/blob/master/versions/2.0.md)**)
* Cliente Android:
* Manual de usuario
* Definición de Arquitectura / Diseño de la aplicación
* Manual de proyecto

Se espera que dicha documentación se elabore de manera incremental y que cada entrega parcial tenga parte de la misma.

## Instancias de entrega

| Instancia | Fecha |
| ---------- | ----- |
| Checkpoint 1 | clase 4 (04/04/19) |
| Checkpoint 2 | clase 8 (02/05/19) |
| Checkpoint 3 | clase 12 (30/05/19) |
| Entrega | clase 16 (27/06/19) |

### Criterios de Aceptación

En cada checkpoint se deberá acordar el alcance de la entrega con cada ayudante. 

## Referencias

1. [REST](http://en.wikipedia.org/wiki/Representational_state_transfer)
2. [Unit Test](http://en.wikipedia.org/wiki/Unit_testing)
3. [Code Coverage](http://en.wikipedia.org/wiki/Code_coverage)
4. [Lint](https://es.wikipedia.org/wiki/Lint)
