# Stories

Una importante empresa AppMaker© ha decidido encargarnos el desarrollo de una red social. El principal objetivo es permitir conectar en tiempo real a personas de todo el mundo que deseen compartir experiencias. 

AppMaker busca posicionarse en el mercado de aplicaciones, busca conectar esta aplicación con sus otras aplicaciones que poseen gran cantidad de usuarios.

## Aplicaciones requeridas

La aplicación constará de tres componentes:

* Un servidor (Application Server), el cual será responsable de conectar a los usuarios. 
* Un servidor (Shared Server), el cual será responsable de la administración de los application servers, autenticación de usuarios y administración de archivos multimedia.
* Un cliente Android, el cual será utilizado por los usuarios.

![Componentes](images/diagrama.png)

### Application Server

Se trata de una aplicación por consola destinada a mantenerse en ejecución por períodos prolongados de tiempo.

Esta aplicación debe brindar una interfaz REST [1] para la comunicación de los diferentes usuarios.

Este servidor se comunicará con el _Shared server_ (explicado a continuación) a traves de la interfaz REST común definida para el mismo. En el caso que la _aplicación Android_ (explicada a continuación) necesitará de algún servicio del _Shared Server_, **el _Application server_ deberá de actuar de fachada.**.

#### Servicio de autenticación (login)
Este servicio permitirá a los usuarios poder ingresar al sistema, obteniendo un token que deberá ser utilizado por los demás servicios. Para resolver la autentación se deberá utilizar el servicio de autentación provisto por el _Shared server_.

#### Servicio de registro
Este servicio permitirá a los usuarios darse de alta en el sistema.Para resolver el registro se deberá utilizar el servicio de registro provisto por el _Shared server_.

#### Servicio de alta de solicitud de contacto de usuario
Este servicio permitirá enviar una solicitud de conexión/amistad a un usuario.

#### Servicio de aceptación de solicitud de contacto
Este servicio permitirá aceptar una solicitud de contacto que recibe un usuario. 

#### Servicio de consulta de perfil
Este servicio permitirá consultar el perfil de un usuario. El mismo está compuesto por :
* Datos personales (Nombre, Apellido, EMail)
* Foto de perfil
* Actividades (historias)

#### Servicio de modificación de perfil
Este servicio permite a un usuario actualizar su perfil, debe permitir modificar y actualizar los siguientes datos:
* Datos personales (Nombre, Apellido, EMail, Cuenta de Facebook, GMail, etc)
* Foto de perfil

#### Servicio de reacción de historia
Este servicio permitirá dar de alta una reacción de un usuario a una historia (me gusta, no me gusta, me divierte, me aburre).

#### Servicio de alta de comentario de historia
Este servicio permitirá enviar un comentario asociado a una historia. El comentario tendrá la siguiente información:
* Mensaje
* Usuario que realizó el comentario
* Hora y fecha
* Historia sobre la cual fue realizado el comentario

#### Servicio de mensaje directo a usuario
Este servicio permitirá enviar un mensaje a un usuario. Esto permitirá que los usuarios puedan mantener una conversación. El mensaje tendrá la siguiente información:
* Mensaje
* Usuario que envia el mensaje (emisor)
* Usuario que recibe el mensaje (receptor)
* Hora y fecha

#### Servicio de listado de historias
Este servicio permitirá listar las historias disponibles. Este servicio deberá utilizar un sistema de reglas que permitirá establecer un criterio flexible de importancia para las historias.

Se recomienda para el sistema de reglas utilizar el siguiente framework: 
 * [durable_rules](https://github.com/jruizgit/rules)

Las reglas deben permitir el cálculo de la importancia de la historia utilizando, entre otras cosas, la siguientes variables:
* Actividad el usuario (publicaciones por día, cantidad de reacciones, horario de las publicaciones)
* Cantidad de contactos
* Día y horario
* Listado de reacciones (reacción + usuario)
* Listado de comentarios realizados por usuarios

Ejemplo: 

La importancia de una historia puede estar dada por:
```
 importancia = (
  0.1*(Cantidad de publicaciones por día) +
  0.2*(cantidad de contactos/popularidad) +
  0.3*(horario/historia reciente) +
  0.4*(cantidad de reacciones)
 )
```

 
#### Servicio de registro de interacción de usuario
Este servicio permitirá registrar la actividad del usuario en el sistema. Esta información será de importancia para el cálculo de la prioridad de las historias.

#### Servicio de alta de historia
Este servicio permitirá publicar una historia. Las historias contendrán la siguiente información:
 * Título (opcional)
 * Contenido multimedia (imagen, video)
 * Descripción (opcional)
 * Ubicación
 * Fecha y hora de publicación
 * Visibilidad (public/private)
 
 Si se indica que la historia es privada, esta podrá ser vistas sólo por los contactos del usuario que publica esta historia.

Este servicio deberá utilizar el servicio de administración de archivos del _Shared Server_ para almacenar el contenido multimedia asociado a  la historia.

Es posible alojar el archivo multimedia utilizando el servicio de storage de [Firebase](https://firebase.google.com/docs/storage/?hl=es-419), y luego indicar la url de acceso al servicio de _Shared Server_.

#### Servicio de alta de historia rápida
Este servicio permitirá publicar una historia rápida, que consta sólo de una imagen, ubicación, fecha y hora de publicación. Estas historias sólo estarán disponibles por 4horas.

Este servicio deberá utilizar el servicio de administración de archivos del _Shared Server_ para almacenar el contenido multimedia asociado a  la historia.

#### Servicio de estado ####
Este servició tiene como objetivo brindar una respuesta rápida que permita ser consultada para conocer si el servidor se encuentra activo.
Este servicio debé ser consultado a traves de la URI /ping

#### Servicio de consulta de datos de uso ####
Este servicio deberá brindar datos acerca del uso del application server.

Este servicio debé ser consultado a traves de la URI /stats

### Shared Server

Dado que se requiere poseer varios Application servers (por ejemplo, estas pueden ser instancias del mismo servicio por zona geográfica o distintas apps de una misma empresa que interactuan entre sí), AppMaker© nos solicita que se desarrolle un servidor encargado de la administración de Application servers. Además este servidor será el encargado de brindar servicios de uso común: autenticación, login y administración de archivos.

El objetivo de la administración de application servers es el de conocer el estado y el uso de los estos. Para esto el _Shared Server_ deberá consultar a los application servers, registrados previamente, para conocer datos acerca del uso del mismo. 

![Componentes](images/shared_server.png)

El _Shared Server_ deberá tener una interfaz de usuario WEB orientado a usuarios de negocio quienes principalmente utilizaran el sistema para poder ver estado de cada Application Server. Los usuarios finales nunca utilizaran esta plataforma, ya que solo utilizaran el cliente Android el cual se comunica con su _Application Server_. Esta interfaz WEB deberá mostrar la actividad de los diferentes Application Server en diferentes gráficos.

El mismo deberá ser implementado utilizando NodeJS para el desarrollo de la API y Angular 2/4 o ReactJS para el desarrollo de la aplicación web. Además se deberá utilizar Postgresql como base de datos.

Para que los Application Servers puedan comunicarse se deberá implementar una [API común](stories.yaml) (Restful API [1]). Los Application Servers se limitarán a utilizar dicha API para interactuar con el Shared Server. La interfaz web de este último podrá utilizar endpoints no definidos en la misma. De esta manera se asegurará la interoperabilidad con las diferentes implementaciones de Application Server.

#### Servicio de administración de app server
Este servicio permitirá registrar un app server. Esto devolverá un token que podrá ser utilizado para interactuar con los demás servicios.

#### Servicio de reportes
Servicio que mostrará estádisticas y datos de uso acerca de los _application servers_. 

#### Servicio de estado actual
Servicio que podrá visualizar el estado actual de todos los _application servers_ corriendo. Se valora el uso de gráficos.

#### Servicio para administración de archivos
Servicio que permitirá administrar los archivos que contiene el shared server (alta, listado, baja). Para poder administrar los archivos se deberá utilizar el token provisto por el shared server durante el proceso de registración.

Cada archivo deberá contener la siguiente metadata asociada:
 * Nombre de archivo
 * Tamaño del archivo
 * Fecha de subida

Este servicio deberá devolver, entre sus datos, la url que permite acceder a este de forma remota.

#### Servicio de autenticación (login)
Este servicio permitirá a los usuarios poder ingresar al sistema, obteniendo un token que deberá ser utilizado por los demás servicios.

#### Servicio de registro
Este servicio permitirá a los usuarios darse de alta en el sistema.

#### Interfaz WEB
La interfaz WEB deberá brindar una GUI que permita la administración de archivos y de application servers.
A continuación se da una breve descripción de la funcionalidad deseada para la interfaz WEB del _Shared Server_. 

##### Login
La interfaz WEB deberá solicitar usuario y contraseña para acceder a la administración de datos. Estos usuarios serán de uso exclusivo para la interfaz WEB.

##### Administración de archivos
Se deberá mostrar el listado de archivos disponibles en el servidor. Deberá mostrar la información asociada a cada archivo (ver definición de API para ver los datos a mostra). Se deberá además permitir la administración de estos.

##### Administración de application servers
Se deberá mostrar un listado de los application servers registrados. Se deberá además permitir la administración de estos.

##### Panel para visualización de datos y estadísticas de application servers
Se deberá mostrar un panel que muestre datos y estadísticas de uso los diferentes application servers utilizando diferentes tipos de gráficos. Los datos y gráficos a mostrar deberán ser validaos con el ayudante asignado.

Ejemplo de estos datos pueden ser: cantidad de consultas por minuto, cantidad de historias publicadas por día, cantidad de usuarios registrados, cantidad de usuarios activos.

### Android Client

Este cliente se comunicará únicamente con un _Application Server_. A continuación se dará una breve descripción de las funcionalidades esperadas para la aplicación Android. Se deberá validar con el ayudante asignado el alcance de las mismas.

#### Registro

En caso de que la persona que desee utilizar la aplicación no tenga un usuario registrado la aplicación debe permitir poder registrar un usuario nuevo. Este registro deberá poder ser integrado con Facebook, permitiendo ingresar las credenciales de facebook y utilizar los datos asociados de la cuenta para completar el registro del usuario dentro del sistema.

#### Autenticación

Para que el cliente pueda enviar y recibir conversaciones el mismo debe autentificarse con el servidor. Para esto el cliente debe permitir al usuario ingresar usuario y contraseña. Se deberá diseñar una pantalla de ingreso a la aplicación.
Cuando la autenticación es exitosa, se almacenará un token de autenticación para realizar las operaciones con el servidor.

#### Perfil de usuario
Los usuarios podrán visualizar su perfil o el de otros usuarios. El perfil tendrá los datos del usuario y sus actividades (historias).

#### Mapa de actividades
Los usuarios podrán ver las actividades de un usuario en función de la ubicación geográfica asociada a la misma.

#### Chat 
Los usuarios que se encuentren conectados podrán intercambiar mensajes a través de la aplicación. El Chat solo estará disponibles entre usuarios conectados.

#### Publicación de historias
Los usuarios deberán poder publicar historias. Estas historias pueden ser privadas (sólo por mis contactos) o públicas (accesible por todos). Se debe brindar la posibilidad de poder aplicar efectos sobre el contenido multimedia asociado a la historia que desea publicar el usuario (válido sólo para imágenes). Se entiende por efectos a modificaciones de la imagen sobre el tono, saturación, brillo y color de la misma (ej. https://github.com/Zomato/AndroidPhotoFilters, https://www.androidhive.info/2017/11/android-building-image-filters-like-instagram/)

Las historias contendrán la siguiente información:
 * Título (opcional)
 * Contenido multimedia (imagen, video)
 * Descripción (opcional)
 * Ubicación
 * Fecha y hora de publicación
 * Visibilidad (public/private)
 
#### Historía rápida (flash) 
El usuario podrá publicar una historia rápida, que consta sólo de una imagen, ubicación, fecha y hora de publicación. Estas historias sólo estarán disponibles por 4horas.

El usuario deberá poder seleccionar algún efecto sobre la imágen asociada a su historia rápida.

#### Muro de historias
Los usuarios podrán visualizar las historias publicadas por los demás usuarios de la aplicación. Además podrán generar una reacción a la historia (me gusta, no me gusta, me divierte, me aburre).

#### Visualización de historias rápidas
Los usuarios podrán ver las últimas 10 historias rápidas de sus contactos.

#### Conectar usuarios
Un usuario puede enviar una solicitud de conexión a otro usuario. Este último podrá aceptar o rechazar la solicitud.

#### Interfaz gráfica

Para el diseño de la interfaz deben respetarse las [guías de diseño propuestas por Google](https://www.google.com/design/spec/material-design/introduction.html).

#### Notificaciónes _Push_

Para el envío y recepción de notificaciones del sistema (ej. solicitudes de amistad, nuevas historias o mensajes de Chat) se deberá utilizar el servicio de notificaciones push de [FCM](https://firebase.google.com/products/cloud-messaging/)

## Requerimiento No Funcionales

### Tecnologias

* Application Server:
  * Lenguaje: [Python 3](https://www.python.org/) (`3.6.4`)
  * Web Framework: [Flask](http://flask.pocoo.org/)
  * WSGI HTTP Server: [Gunicorn](http://gunicorn.org/)
  * Database: [MongoDB](https://www.mongodb.com/)  
* Shared Server:
  * Lenguaje: [NodeJS](https://nodejs.org/) (`6.x` o `8.x` LTS)
  * Web Framework: [ExpressJS](https://expressjs.com)
  * Database: [PostgreSQL](https://www.postgresql.org/)
  * Libreria Frontend: [ReactJS](https://facebook.github.io/react/) o [Angular](https://angular.io/)
* Android Client:
  * `minSdkVersion`: `19` ([Android 4.4](https://developer.android.com/about/versions/android-4.4.html))
  * [Firebase Cloud Messaging](https://firebase.google.com/products/cloud-messaging/)
 
**Nota:** No confundir _Angular_ con _AngularJS_ (o también llamado _Angular 1_). El requerimiento exige el uso de [_Angular_](https://angular.io/) que usualmente se lo llama _Angular 4_.

### Empaquetamiento

Cada uno de los desarrollos solicitados debe empaquetarse según el estandar de la plataforma, es decir:

* _Application Server_: Python Setuptools (`setup.py` y `requeriments.txt`)
* _Shared Server_: Node Package Manager (`npm`, `package.json`), Yarn Package Manager(https://yarnpkg.com/lang/en/)
* _Android Client_: Android Application Package (`apk`)

Además, ambos servidores deberán traer un `Dockerfile` que permita correrlos sin necesidad de tener instalado los respectivos lenguajes.

### Despliegue en la Nube

Ambos servidores, tanto el _Application server_ como el _Shared Server_, se deberán disponibilizar en la nube utilizando una plataforma como servicio (_PAAS_). Se recomienda usar [Heroku](https://www.heroku.com/) ya que cuenta con todos los requerimientos tecnológicos pedidos anteriormente.

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
 
**Nota:** Esta sección hace solo referencía al _Application server_ y al _Shared server_. No se toma como requerimiento el realizar pruebas sobre el cliente Android.

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
* Shared Server:
  * Manual de administrador: Instalación y configuración
  * Definición de Arquitectura / Diseño de la aplicación
* Cliente Android:
  * Manual de usuario
  * Definición de Arquitectura / Diseño de la aplicación
* Manual de proyecto

Se espera que dicha documentación se elabore de manera incremental y que cada entrega parcial tenga parte de la misma.

## Instancias de entrega

| Instancia | Fecha |
| ---------- | ----- |
| Checkpoint 1 | clase 5 (19/04) |
| Checkpoint 2 | clase 9 (17/05) |
| Checkpoint 3 | clase 13 (14/06) |
| Entrega | clase 16 (05/07) |

### Criterios de Aceptación

En cada checkpoint se deberá acordar el alcance de la entrega con cada ayudante. 

## Referencias

1. [REST](http://en.wikipedia.org/wiki/Representational_state_transfer)
2. [Unit Test](http://en.wikipedia.org/wiki/Unit_testing)
3. [Code Coverage](http://en.wikipedia.org/wiki/Code_coverage)
4. [Lint](https://es.wikipedia.org/wiki/Lint)
