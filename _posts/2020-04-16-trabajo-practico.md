---
layout: post
title: Chotuve
subtitle: Enunciado del  1 Cuatrimestre 2020
bigimg: /img/path.jpg
tags: [trabajos-practicos, 2020-1C]
---

# Chotuve


Una importante empresa AppMaker© ha decidido encargarnos el desarrollo de una plataforma digital para compartir videos. 
El principal objetivo es permitir compartir videos entre los usuarios


AppMaker busca posicionarse en el mercado de aplicaciones, busca conectar esta aplicación con sus otras aplicaciones que poseen gran cantidad de usuarios.

## Aplicaciones requeridas

La aplicación constará de tres componentes:

* Un servidor (Application Server), el cual será responsable de conectar a los usuarios. 
* Un servidor (Auth Server), el cual será responsable de la administración de los application servers y autenticación de usuarios
* Un servidor (Media Server), el cual será responsable de la administración de archivos multimedia.
* Un cliente Android, el cual será utilizado por los usuarios.
* Una **Interfaz Web** en donde se administrarán los datos de la aplicación.

![Componentes](../img/tp/diagrama.png)

### Application Server

Se trata de una aplicación por consola destinada a mantenerse en ejecución por períodos prolongados de tiempo.

Esta aplicación debe brindar una interfaz REST [1] para la comunicación de los diferentes usuarios.

Este servidor se comunicará con los _Shared servers_ (explicado a continuación). En el caso que la _aplicación Android_ (explicada a continuación) necesitará de algún servicio del _Shared Servers_, **el _Application server_ deberá de actuar de fachada.**.

#### Servicio de alta de solicitud de contacto de usuario
Este servicio permitirá enviar una solicitud de conexión/amistad a un usuario.

#### Servicio de aceptación de solicitud de contacto
Este servicio permitirá aceptar una solicitud de contacto que recibe un usuario. 

#### Servicio de reacción a un video
Este servicio permitirá dar de alta una reacción de un usuario a un video (me gusta, no me gusta).

#### Servicio de alta de comentario de video
Este servicio permitirá enviar un comentario asociado a un video. El comentario tendrá la siguiente información:

* Mensaje
* Usuario que realizó el comentario
* Hora y fecha
* Video sobre la cual fue realizado el comentario

#### Servicio de mensaje directo a usuario
Este servicio permitirá enviar un mensaje a un usuario. Esto permitirá que los usuarios puedan mantener una conversación. El mensaje tendrá la siguiente información:

* Mensaje
* Usuario que envia el mensaje (emisor)
* Usuario que recibe el mensaje (receptor)
* Hora y fecha

#### Servicio de listado de videos de un usuario
Este servicio permitirá listar los videos disponibles de un usuario

#### Servicio de listado de videos en pantalla principal
Este servicio permitirá listar los videos disponibles para un usuario en su pantalla principal. Este servicio deberá utilizar un sistema de reglas que permitirá establecer un criterio flexible de importancia a los videos.


Las reglas deben permitir el cálculo de la importancia del video utilizando, entre otras cosas, la siguientes variables:

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

Para el sistema de reglas, se sugiere la utilización de alguno de los siguientes motores:

#### JS
- [Nools](https://github.com/noolsjs/nools)
- [Node Rules](https://github.com/mithunsatheesh/node-rules)
- [Rules](https://github.com/jruizgit/rules)
- [Json Rules Engine](https://github.com/cachecontrol/json-rules-engine)

#### Python
- [durable_rules](https://github.com/jruizgit/rules)
- [business-rules](https://github.com/venmo/business-rules)

#### Servicio de alta de video
Este servicio permitirá publicar un video. Los videos contendrán la siguiente información:
 * Título (opcional)
 * Contenido multimedia (video)
 * Descripción (opcional)
 * Ubicación
 * Fecha y hora de publicación
 * Visibilidad (public/private)
 
 Si se indica que el video es privado, esta podrá ser vistas sólo por los contactos del usuario que publica este video.

Este servicio deberá utilizar el servicio de administración de archivos del _Media Server_ para almacenar el contenido multimedia asociado al video

Es posible alojar el archivo multimedia utilizando el servicio de storage de [Firebase](https://firebase.google.com/docs/storage/?hl=es-419), y luego indicar la url de acceso al servicio de _Media Server_.

#### Servicio de estado ####
Este servició tiene como objetivo brindar una respuesta rápida que permita ser consultada para conocer si el servidor se encuentra activo.
Este servicio debé ser consultado a traves de la URI /ping

#### Servicio de consulta de datos de uso ####
Este servicio deberá brindar datos acerca del uso del application server.

Este servicio debé ser consultado a traves de la URI /stats y brindará información, como por ejemplo:

- Cantidad de requests por minuto.
- Tiempos de respuesta de los requests.
- Desgloce de respuestas de códigos HTTP.
- Etc

## Shared Servers

Dado que se requiere poseer varios Application servers (por ejemplo, estas pueden ser instancias del mismo servicio por zona geográfica o distintas apps de una misma empresa que interactuan entre sí) y que se requiere trabajar con una arquitectura orientada al uso de micro servicios, se desarrollarán distintos servidores con servicios bien especificos que pueden ser utilizados en diversos contextos

Ambos _Shared Servers_ deberán tener una interfaz de usuario WEB orientado a usuarios de negocio quienes principalmente utilizaran el sistema para poder ver estado de cada Application Server. 
Los usuarios finales nunca utilizaran esta plataforma, ya que solo utilizaran el cliente Android el cual se comunica con su _Application Server_. Esta plataforma será unicamente utilizada por usuarios administrativos/ejecutivos.


### Auth Server

AppMaker© nos solicita que se desarrolle un servidor encargado de la administración de usuarios, login y Application servers.
Este servidor será el encargado de brindar servicios de uso común como autenticación y login, tanto para el _Application Server_ como para otros que servicios que lo requieran.
El objetivo de la administración de application servers es el de conocer el estado y el uso de estos. Para esto el _Auth Server_ deberá consultar a los application servers, registrados previamente, para conocer datos acerca del uso del mismo. 

#### Servicio de autenticación (login)
Este servicio permitirá a los usuarios poder ingresar al sistema, obteniendo un token que deberá ser utilizado por los demás servicios. 

#### Servicio de recupero de contraseña
Este servicio permitirá a los usuarios poder recuperar una cuenta. Este servicio deberá generar un token, que deberá ser utilizado para definir una nueva contraseña, y enviarlo por e-mail.

#### Servicio de configuración de contraseña
Este servicio permitirá a un usuario definir una nueva contraseña. Este servicio verificará que se haya solicitado un token utilizando el _Servicio de recupero de contraseña_.

#### Servicio de registro
Este servicio permitirá a los usuarios darse de alta en el sistema. El usuario deberá brindar sus datos personales para poder completar el registro. 

Datos personales:

- Nombre y Apellido
- Teléfono de contacto
- E-mail
- Foto de perfil


#### Servicio de consulta de perfil
Este servicio permitirá consultar el perfil de un usuario. El mismo está compuesto por :
* Datos personales (Nombre, Apellido, EMail)
* Foto de perfil

#### Servicio de modificación de perfil
Este servicio permite a un usuario actualizar su perfil, debe permitir modificar y actualizar los siguientes datos:
* Datos personales (Nombre, Apellido, Dirección, e-mail, Cuenta de Facebook, GMail, etc)
* Foto de perfil

#### Servicio de administración de app server
Este servicio permitirá registrar un app server. Esto devolverá un token que podrá ser utilizado para interactuar con los demás servicios.

#### Servicio de reportes
Servicio que mostrará estádisticas y datos de uso acerca de los _Application servers_. 

#### Servicio de estado actual
Servicio que podrá visualizar el estado actual de todos los _Application Servers_ corriendo. Se valora el uso de gráficos.


### Media Server
Este servidor será el encargado de proveer los distintos recursos multimedia que los Application Server puedan llegar a solicitar

#### Servicio para administración de recursos
Servicio que permitirá administrar los recursos que contiene el _Media Server_ (alta, listado, baja).
Cada archivo deberá contener la siguiente metadata asociada:

* Nombre de archivo
* Tamaño del archivo
* Fecha de subida

Este servicio deberá devolver, entre sus datos, la url que permite acceder a este de forma remota.


#### Interfaz WEB
La interfaz WEB deberá brindar una GUI que permita la administración de archivos y de application servers.
A continuación se da una breve descripción de la funcionalidad deseada para la interfaz WEB del _Shared Server_. 

##### Login
La interfaz WEB deberá solicitar usuario y contraseña para acceder a la administración de datos. Estos usuarios serán de uso exclusivo para la interfaz WEB.

##### Administración de recursos
Se deberá mostrar el listado de recursos disponibles en el servidor. Deberá mostrar la información asociada a cada archivo (ver definición de API para ver los datos a mostra). 
Se deberá además permitir la administración de estos.

##### Administración de application servers
Se deberá mostrar un listado de los application servers registrados. Se deberá además permitir la administración de estos.

##### Panel para visualización de datos y estadísticas de application servers
Se deberá mostrar un panel que muestre datos y estadísticas de uso los diferentes application servers utilizando diferentes tipos de gráficos. Los datos y gráficos a mostrar deberán ser validados con el ayudante asignado.

Ejemplo de estos datos pueden ser: cantidad de consultas por minuto, cantidad de videos publicados por día, cantidad de usuarios registrados, cantidad de usuarios activos.

### Android Client

Este cliente se comunicará únicamente con un _Application Server_. A continuación se dará una breve descripción de las funcionalidades esperadas para la aplicación Android. Se deberá validar con el ayudante asignado el alcance de las mismas.

#### Registro

En caso de que la persona que desee utilizar la aplicación no tenga un usuario registrado la aplicación debe permitir poder registrar un usuario nuevo. Este registro deberá poder ser integrado con un servicio externo de autenticación, permitiendo ingresar las credenciales y utilizar los datos asociados de la cuenta para completar el registro del usuario dentro del sistema.

#### Autenticación

Para que el cliente pueda enviar y recibir conversaciones el mismo debe autentificarse con el servidor. Para esto el cliente debe permitir al usuario ingresar usuario y contraseña. 
Se deberá diseñar una pantalla de ingreso a la aplicación.
Cuando la autenticación es exitosa, se almacenará un token de autenticación para realizar las operaciones con el servidor.

#### Perfil de usuario
Los usuarios podrán visualizar su perfil o el de otros usuarios. El perfil tendrá los datos del usuario y sus videos

#### Chat 
Los usuarios que se encuentren conectados podrán intercambiar mensajes a través de la aplicación. El Chat solo estará disponibles entre usuarios conectados.

#### Publicación de videos
Los usuarios deberán poder publicar videos. Estos videos pueden ser privados (sólo por mis contactos) o públicos (accesible por todos). 

Los videos contendrán la siguiente información:
 * Título (opcional)
 * Contenido multimedia (video)
 * Descripción (opcional)
 * Ubicación
 * Fecha y hora de publicación
 * Visibilidad (public/private)
 

#### Muro de videos
Los usuarios podrán visualizar los videos publicadas por los demás usuarios de la aplicación. Además podrán generar una reacción al video (like, dislike).

#### Conectar usuarios
Un usuario puede enviar una solicitud de conexión a otro usuario. Este último podrá aceptar o rechazar la solicitud.

#### Comentar videos
Un usuario puede realizar comentarios en los videos otro integrante de la plataforma. Estos comentarios pueden realizarse a nivel publicación del video o en un momento determinado del video


#### Interfaz gráfica

Para el diseño de la interfaz deben respetarse las [guías de diseño propuestas por Google](https://www.google.com/design/spec/material-design/introduction.html).

#### Notificaciónes _Push_

Para el envío y recepción de notificaciones del sistema (ej. solicitudes de amistad, nuevos videos o mensajes de Chat) se deberá utilizar el servicio de notificaciones push de [FCM](https://firebase.google.com/products/cloud-messaging/)

## Requerimiento No Funcionales


## Tecnologias

Para el desarrollo de los server se podrá utilizar **Python** o **NodeJS** y **PostgreSQL** y/o **MongoDB** como motor de base de datos.
Esta elección será responsabilidad del grupo y la misma deberá estar justificada en la documentación técnica que formará parte del TP.

Para el desarrollo de la App se utilizará **Kotlin** como lenguaje de programación.

Para el desarrollo de la WebApp se utilizará **React** como biblioteca.

### Empaquetamiento

Cada uno de los desarrollos solicitados debe empaquetarse según el estandar de la plataforma, es decir:

* _Python_: Python Setuptools (`setup.py` y `requeriments.txt`)
* _Node_: Node Package Manager (`npm`, `package.json`), Yarn Package Manager(https://yarnpkg.com/lang/en/)
* _Android Client_: Android Application Package (`apk`)

Además, los servidores deberán traer un `Dockerfile` que permita correrlos sin necesidad de tener instalado los respectivos lenguajes.

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
 
**Nota:** Esta sección hace solo referencía al _Application server_ y a los _Shared servers_. No se toma como requerimiento el realizar pruebas sobre el cliente Android, aunque es recomendado como una buena práctica.

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
* Shared Servers:
  * Manual de administrador: Instalación y configuración
  * Definición de Arquitectura / Diseño de la aplicación (**Debe incluir especificación de Api REST: [OpenAPI 2.0](https://github.com/OAI/OpenAPI-Specification/blob/master/versions/2.0.md)**)
* Cliente Android:
  * Manual de usuario
  * Definición de Arquitectura / Diseño de la aplicación
* Manual de proyecto

Se espera que dicha documentación se elabore de manera incremental y que cada entrega parcial tenga parte de la misma.

## Instancias de entrega
*Estas fechas pueden modificarse durante el cuatrimestre debido al contexto*

| Instancia | Fecha |
| Checkpoint 1 | clase 4 (07/05/20) |
| Checkpoint 2 | clase 8 (04/06/20) |
| Checkpoint 3 | clase 12 (02/07/20) |
| Entrega | clase 16 (30/07/20) |


### Criterios de Aceptación

En cada checkpoint se deberá acordar el alcance de la entrega con cada ayudante. 

## Referencias

1. [REST](http://en.wikipedia.org/wiki/Representational_state_transfer)
2. [Unit Test](http://en.wikipedia.org/wiki/Unit_testing)
3. [Code Coverage](http://en.wikipedia.org/wiki/Code_coverage)
4. [Lint](https://es.wikipedia.org/wiki/Lint)