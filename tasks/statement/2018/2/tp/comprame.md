# Comprame

Una importante empresa AppMaker© ha decidido encargarnos el desarrollo de un e-commerce. El principal objetivo es permitir conectar en tiempo real a personas de todo el mundo que deseen comprar/vender productos. 

AppMaker busca posicionarse en el mercado de aplicaciones, busca conectar esta aplicación con sus otras aplicaciones que poseen gran cantidad de usuarios.

## Aplicaciones requeridas

La aplicación constará de tres componentes:

* Un servidor (Application Server), el cual será responsable de conectar a los usuarios para realizar compra y venta de productos.
* Un servidor (Shared Server), el cual será responsable de la administrar los envíos y pagos del sistema.
* Un cliente Android, el cual será utilizado por los usuarios.

![Componentes](images/diagrama.png)

### Application Server

Se trata de una aplicación por consola destinada a mantenerse en ejecución por períodos prolongados de tiempo.

Esta aplicación debe brindar una interfaz REST [1] para la comunicación de los diferentes usuarios.

Este servidor se comunicará con el _Shared server_ (explicado a continuación) a traves de la interfaz REST común definida para el mismo. En el caso que la _aplicación Android_ (explicada a continuación) necesitará de algún servicio del _Shared Server_, **el _Application server_ deberá de actuar de fachada.**.

#### Servicio de autenticación (login)
Este servicio permitirá a los usuarios poder ingresar al sistema, obteniendo un token que deberá ser utilizado por los demás servicios.

#### Servicio de registro
Este servicio permitirá a los usuarios darse de alta en el sistema.

#### Servicio de consulta de perfil
Este servicio permitirá consultar el perfil de un usuario. El mismo está compuesto por :
* Datos personales (Nombre, Apellido, EMail)
* Foto de perfil
* Actividades: resumen de la actividad del usuario dentro del sistema.

#### Servicio de modificación de perfil
Este servicio permite a un usuario actualizar su perfil, debe permitir modificar y actualizar los siguientes datos:
* Datos personales (Nombre, Apellido, EMail, Cuenta de Facebook, GMail, etc)
* Foto de perfil

#### Servicio chat comprador-vendedor
Después que un usuario haya realizado una compra, se habilitará un chat entre el usuario y el vendedor del artículo.

#### Servicio de publicación de articulo para la venta
Este servicio deberá disponibilizar el artículo para la venta. El artículo deberá contener al menos los siguientes datos:
* Nombre 
* Descripción
* Unidades disponibles
* Precio por unidad
* Fotos: 1 o más fotos
* Usuario que publica el producto.
* Ubicación geográfica del usuario
* Métodos de pago aceptados
* Categoría del artículo: electrodoméstico, mueble, muebles de exterior, usado, nuevo, etc.

Como respuesta de la publicación este servicio deberá generar un código QR que contendrá los datos necesarios del producto en cuestión.    

#### Servicio de alta de pregunta
Este servicio permitirá realizar una pregunta acerca de un artículo que se encuentra publicado para la venta.

#### Servicio de alta de respuesta a pregunta
Este servicio permitirá responder una pregunta que fue realizada.

#### Servicio de compra
Este servicio permitirá realizar la compra de un producto que se encuentra publicado. Ester servicio deberá devolver un código que identifica la compra de forma única y que permita conocer el estado de la misma (tracking). Se debe indicar el método de pago por el cual se abonará la compra. El pago es procesado por un sistema externo que no se encontrará disponible, de manera que el procesamiento del pago se realizará de forma manual desde la **Interfaz WEB** del sistema a través de un administrador del sistema. Por este motivo es necesario consultar al _Shared Server_ acerca del estado de la compra.

#### Servicio de tracking
Este servicio permitirá conocer el estado de una compra a través del código de tracking. Los estados posibles son:
* Compra realizada
* Pago pendiente de proceso
* Pago rechazado
* Pago aceptado
* Envío en progreso
* Pendiente de envío
* Envío realizado.

El envío es procesado por un sistema externo que no se encontrará disponible, de manera que la carga del estado del envío se realizará de forma manual desde la **Interfaz WEB** del sistema a través de un administrador del sistema. Por este motivo es necesario consultar al _Shared Server_ acerca del estado de la compra.

Una vez que el artículo se encuenrtre en eastado "Envío realizado" el sistema debe permitir calificar la compra realizada por el usuario.

#### Servicio de búsqueda de producto 
Este servicio debe permitir la búsqueda de un producto utilizando varios de sus atributos. Un ejemplo de estos:
* Búsqueda por cercanía (ubicacióren geográfica)
* Búsqueda por nombre
* Búsqueda por descripción

Este servicio de búsqueda devolverá cero, uno o más resultados coincidentes con la búsqueda realizada y ponderados por el sistema de puntuación que conformorá el orden de los resultados devueltos.

#### Servicio de cotización de viaje
Permite saber, con un margen de error, el costo de un envío antes de realizarlo. Este servicio será una fachada de uno proporcionado por el Shared Server.

#### Servicio de estado
Este servició tiene como objetivo brindar una respuesta rápida que permita ser consultada para conocer si el servidor se encuentra activo.
Este servicio debé ser consultado a traves de la URI /ping

#### Servicio de consulta de datos de uso
Este servicio deberá brindar datos acerca del uso del application server. Deberá ser consultado a traves de la URI /stats.

#### Sistema de puntuación
El sistema debe poseer una lógica que administre el puntaje del usuario dentro del sistema. Este puntaje es importante a la hora de publicar articulos a la venta ya que brindará mayor visibilidad a los artículos de los usuarios con mayor puntaje.

La lógica de la acumulación de puntos debe ser definida por el grupo. Un ejemplo de este puede ser:
* Suma de puntos por cada publicación realizada
* Suma de puntos por cada compra realizada
* Suma de puntos por pago por X método de pago
* Suma de puntos por primera compra/venta realizada
* Suma de puntos por reputación de usuario

### Shared Server

Dado que se requiere poseer varios Application servers (por ejemplo, estas pueden ser instancias del mismo servicio por zona geográfica o distintas apps de una misma empresa que interactuan entre sí), AppMaker© nos solicita que se desarrolle un servidor encargado de la administración de Application servers. Además este servidor será el encargado de brindar servicios de uso común: administración de pagos, envíos y seguimiento de productos (tracking).

El objetivo de la administración de application servers es el de conocer el estado y el uso de los estos. Para esto el _Shared Server_ deberá consultar a los application servers, registrados previamente, para conocer datos acerca del uso del mismo. 

![Componentes](images/shared_server.png)

El _Shared Server_ deberá tener una interfaz de usuario WEB orientado a usuarios de negocio quienes principalmente utilizaran el sistema para poder ver estado de cada Application Server. Los usuarios finales nunca utilizaran esta plataforma, ya que solo utilizaran el cliente Android el cual se comunica con su _Application Server_. Esta interfaz WEB deberá mostrar la actividad de los diferentes Application Server en diferentes gráficos.

El mismo deberá ser implementado utilizando NodeJS para el desarrollo de la API y Angular 2/4 o ReactJS para el desarrollo de la aplicación web. Además se deberá utilizar Postgresql como base de datos.

Para que los Application Servers puedan comunicarse se deberá implementar una [API común](comprame.yaml) (Restful API [1]). Los Application Servers se limitarán a utilizar dicha API para interactuar con el Shared Server. La interfaz web de este último podrá utilizar endpoints no definidos en la misma. De esta manera se asegurará la interoperabilidad con las diferentes implementaciones de Application Server.

#### Servicio de administración de app server
Este servicio permitirá registrar un app server. Esto devolverá un token que podrá ser utilizado para interactuar con los demás servicios.

#### Servicio de reportes
Servicio que mostrará estádisticas y datos de uso acerca de los _application servers_.

#### Servicio de estado actual
Servicio que podrá visualizar el estado actual de todos los _application servers_ corriendo. Se valora el uso de gráficos.

#### Servicio de cálculo de costo de envío
Este servicio deberá realizar un cálculo del costo apróximado de envío. 
Debido a la necesidad de poder tener flexibilidad a la hora de establecer los precios para mantenerse competitivo. AppMaker© exige que el cálculo del precio sea realizado utilizando un sistema de reglas.

El servidor deberá permitir la modificación y guardado de las mismas manteniendo un registro de cambios. Además, deberá permitir al usuario hacer pruebas con las reglas escritas previo a quedar efectivas en la cotización de los viajes.

Para el sistema de reglas, se sugiere la utilización de alguno de los siguientes motores:
* [Nools](https://github.com/noolsjs/nools)
* [Node Rules](https://github.com/mithunsatheesh/node-rules)
* [Json Rules Engine](https://github.com/cachecontrol/json-rules-engine)

Las reglas deben permitir el cálculo del precio del viaje utilizando, entre otras cosas, la siguientes variables:

* Características del usuario (viajes en el día, viajes en el mes, antigüedad)
* Puntaje del usuario dentro de la aplicación (* ver sistema de puntuación). 
* Método de pago
* Características del envío (duración, distancia, posición geográfica, fecha y hora)
* Application server que realiza la cotización
* Día y horario de la realización del viaje

Además, mediante estas reglas, se deberá determinar si el usuario esta habilitado para realizar el viaje.

Se deberán desarrollar a modo de ejemplo las siguientes reglas:
* Compra mínima de 50ARS
* Precio por KM de 15ARS
* Descuento del 5% los miércoles de 15hs a 16hs
* Descuento de 100ARS en primer viaje
* Recargo del 10% Lunes a Viernes de 17hs a 19hs
* Recargo del 15% si en los últimos 30 mins se realizaron más de 10 viajes
* Envío gratis si usuario tiene un mail con dominio `@comprame.com`
* No se le permitirá solicitar envíos si el usuario tiene puntaje negativo
* Descuento del 5% a partir de la 10 compra realizada.

#### Servicio de administración de pagos
Este servicio permitirá a los usuarios indicar en qué estado se encuentra un pago. 

#### Servicio de administración de envíos
Este servicio permitirá a los usuarios indicar en qué estado se encuentra un pago. 

#### Interfaz WEB
La interfaz WEB deberá brindar una GUI que permita la administración de archivos y de application servers.
A continuación se da una breve descripción de la funcionalidad deseada para la interfaz WEB del _Shared Server_. 

##### Login
La interfaz WEB deberá solicitar usuario y contraseña para acceder a la administración de datos. Estos usuarios serán de uso exclusivo para la interfaz WEB.

##### Administración de envíos
Se deberá mostrar el listado de envíos existentes en el servidor. Deberá mostrar la información asociada a cada uno y  se deberá además permitir la administración del estado de los mismos.

##### Administración de pagos
Se deberá mostrar el listado de pagos pendientes existentes en el servidor. Deberá mostrar la información asociada a cada uno y se deberá además permitir la administración del estado de los mismos.

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
Los usuarios podrán visualizar su perfil o el de otros usuarios. El perfil tendrá los datos del usuario y sus actividades dentro del sistema.

#### Mapa de actividades
Los usuarios podrán ver las artículos publicados de los diferentes usuarios en función de la ubicación geográfica asociada a la publicación.

#### Chat comprador-vendedor
Después que un usuario haya realizado una compra, se habilitará un chat entre el usuario y el vendedor del artículo.

### Listado de articulos publicados
Los usuarios podrán visualizar los articulos publicados por los demás usuarios de la aplicación. Debe ser posible filtrar el listado para facilitar la búsqueda. Algunos de los filtros deben ser:
* Distancia en función de ubicación geográfica 
* Rango de precio
* Nombre, descripción  de producto
* Categoría

### Alta de venta de articulo
Los usuarios podrán publicar un artículo para la venta. Este producto debe contener al menos la siguiente información:
* Nombre 
* Descripción
* Unidades disponibles
* Precio por unidad
* Fotos: 1 o más fotos
* Usuario que publica el producto.
* Ubicación geográfica del usuario
* Métodos de pago aceptados
* Categoría del artículo: electrodoméstico, mueble, muebles de exterior, usado, nuevo, etc.

Al momento de publicar el artículo para la venta el sistema debe generar un código QR que podrá ser utilizado para escanear y realizar la compra del mismo. 

### Visualización de artículo 
El usuario deberá poder visualizar el detalle completo del artículo publicado por un usuario. En esta vista el usuario podrá:
* ver los datos del artículo
* ver las preguntas realizadas con sus respectivas respuestas
* realizar preguntas acerca del articulo
* ver los datos del usuario que publico el articulo (nombre, puntaje, etc).

### Compra de artículo mediante código QR
Los usuarios podrán realizar la compra de un artículo escaneando un código QR. La aplicación deberá mostrar la información del producto y permitir realizar la compra del mismo.

### Mis compras
El sistema debe mostrar las compras realizadas por el usuario y el estado de las mismas.

### Mis ventas
El sistema debe mostrar las publicaciones realizadas por el usuario y el estado de las mismas.


#### Interfaz gráfica

Para el diseño de la interfaz deben respetarse las [guías de diseño propuestas por Google](https://www.google.com/design/spec/material-design/introduction.html).

#### Notificaciónes _Push_

Para el envío y recepción de notificaciones del sistema (ej. mensajes de Chat, cambios de estado de la compra) se deberá utilizar el servicio de notificaciones push de [FCM](https://firebase.google.com/products/cloud-messaging/)

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

## Instancias de entrega (REVISAR)

| Instancia | Fecha |
| ---------- | ----- |
| Checkpoint 1 | clase 4 (13/09) |
| Checkpoint 2 | clase 8 (11/10) |
| Checkpoint 3 | clase 12 (8/11) |
| Entrega | clase 16 (06/12) |

### Criterios de Aceptación

En cada checkpoint se deberá acordar el alcance de la entrega con cada ayudante. 

## Referencias

1. [REST](http://en.wikipedia.org/wiki/Representational_state_transfer)
2. [Unit Test](http://en.wikipedia.org/wiki/Unit_testing)
3. [Code Coverage](http://en.wikipedia.org/wiki/Code_coverage)
4. [Lint](https://es.wikipedia.org/wiki/Lint)
