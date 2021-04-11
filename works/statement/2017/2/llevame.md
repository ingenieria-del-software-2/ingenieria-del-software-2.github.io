# Llevame

Una importante empresa AppMaker© ha decidido encargarnos el desarrollo de una aplicación para gestionar viajes. El principal objetivo es permitir conectar en tiempo real a personas que provean un servicio transporte con otras que lo necesiten.

AppMaker busca posicionarse en el mercado de aplicaciones, busca conectar esta aplicación con sus otras aplicaciones que poseen gran cantidad de usuarios.

## Aplicaciones requeridas

La aplicación constará de tres componentes:

* Un servidor (Application Server), el cual será el responsable de conectar a los choferes con los pasajeros. Delegará los servicios de localización, direccionamiento, cobranza, almacenamiento de perfiles y cotización de viajes.
* Un servidor (Shared Server), el cual será responsable de la administración de los Application servers. Además, almacenará los perfiles de usuario y contará con el servicio de la cotización de los viajes.
* Un cliente Android, el cual será utilizado para pedir y ofrecer viajes.

![Componentes](images/diagrama.png)

### Application Server

Se trata de una aplicación por consola destinada a mantenerse en ejecución por períodos prolongados de tiempo.

Esta aplicación debe brindar una interfaz REST [1] para la comunicación de los diferentes clientes (choferes y pasajeros) que se conecten. El objetivo principal de cara a los choferes proveerles los posibles viajes a realizar, y de cara a los pasajeros mostrarles los posibles choferes para que realicen el viaje.

Este servidor se comunicará con el _Shared server_ (explicado a continuación) a traves de la interfaz REST común definida para el mismo. En el caso que la _aplicación Android_ (explicada a continuación) necesitará de algún servicio del _Shared Server_, el _Application server_ deberá de actuar de fachada.

#### Servicio de registro

Este servicio permitirá a los usuarios darse de alta en el sistema. Además, deberá almacenar la información del nuevo usuario en el _Shared server_.

#### Servicio de modificación de perfil

Este servicio permite a un usuario actualizar su perfil, debe permitir modificar y actualizar los siguientes datos:

* Datos personales (Nombre, Apellido, EMail, Cuenta de Facebook, GMail, etc)
* _(En caso de ser chofer)_ Datos acerca del auto (Modelo, Color, patente, año, estado, aire acondicionado, radio o música que se escucha)
* _(En caso de ser pasajero)_ Datos de cobranza

#### Servicio de direccionamiento

Servicio que utilizará a uno de un tercero para poder determinar los caminos posibles para el viaje que quiera hacer el pasajero. Se deberá utilizar algún servicio de direccionamiento como lo puede ser [Google Directions Api](https://developers.google.com/maps/documentation/directions/).

#### Servicio de viajes disponibles

Este servicio permite a un chofer saber que viajes tiene disponibles para aceptar. Debe brindar al chofer toda la  información acerca del pasajero y el viaje. Además, debe proporcionar la sugerencia del viaje aceptada por el pasajero.

#### Servicio de choferes disponibles

Este servicio permite a los pasajeros visualizar los choferes que se encuentran a su alrededor. Debe dar la posición del chofer, además, de información acerca de él.

#### Servicio de posicionamiento

Una vez iniciado un viaje, el servidor deberá poseer la posición tanto del conductor y pasajero. Para ello, ambos enviarán periódicamente su posición. Esto permitirá al servidor:

* Corroborar que realmente se está realizando el viaje.
* Calcular la distancia y tiempo de viaje con exactitud

#### Servicio de cotización de viaje

Permite saber, con un margen de error, el costo de un viaje antes de realizarlo. Este servicio será una fachada de uno proporcionado por el Shared Server.

### Shared Server

Dado que se requiere poseer varios Application servers, AppMaker© nos solicita que se desarrolle un servidor encargado de la administración de los mismos y que pueda mantener información común a todos.

El _Shared Server_ deberá tener una interfaz de usuario WEB orientado para un usuario de negocios quien principalmente lo utilizará para poder ver estado de cada Application Server. Los usuarios finales nunca utilizaran esta plataforma, ya que solo utilizaran el cliente Android el cual se comunica con su _Application Server_.

El mismo deberá ser implementado utilizando NodeJS para el desarrollo de la API y Angular 2 o ReactJS para el desarrollo de la aplicación web. Además se deberá utilizar Postgresql como base de datos.

Para que los Application Servers puedan comunicarse se deberá implementar una [API común](llevame.yaml) (Restful API [1]). Los Application Servers se limitarán a utilizar dicha API para interactuar con el Shared Server. La interfaz web de este último podrá utilizar endpoints no definidos en la misma. De esta manera se asegurará la interoperabilidad con las diferentes implementaciones de Application Server.

#### Servicio de gestión de usuarios de negocio

Este servicio permitirá la creación de usuarios y asignación de distintos roles. Deberá existir el rol de administrador que permitirá a un usuario realizar estas tareas. Además, deberán existir distintos roles que permitan o prohíban la utilización de los diferentes servicios.

#### Servicio de gestión de datos de usuarios

Este servicio permitirá visualizar datos de los usuarios de los _Application Servers_, es decir, de los pasajeros y conductores. Además, se desea que la posibilidad de tener filtros para realizar busquedas.

#### Servicio de gestión de _Aplication Server_

Este servicio permitirá dar de alta un _Aplication Server_, genererá un _token_ único que dicho server utilizará para autenticarse frente a la plataforma.

Se tiene que poder listar los _Application Servers_ que se encuentren autorizados, con la posibilidad de revocarlos.

#### Servicio de estado actual

Servicio que podrá visualizar el estado actual de todos los _application servers_ corriendo. Se valora el uso de gráficos.

#### Servicio de reportes

Servicio que mostrará estádisticas y reportes acerca de los _application servers_. Se valora el uso de gráficos.

#### Servicio de cotización de viaje

Debido a la necesidad de poder tener flexibilidad a la hora de establecer los precios para mantenerse competitivo. AppMaker© exige que el cálculo del precio sea realizado utilizando un sistema de reglas.

El servidor deberá permitir la modificación y guardado de las mismas manteniendo un registro de cambios. Además, deberá permitir al usuario hacer pruebas con las reglas escritas previo a quedar efectivas en la cotización de los viajes.

Para el sistema de reglas, se sugiere la utilización de alguno de los siguientes motores:

* [Nools](https://github.com/noolsjs/nools)
* [Node Rules](https://github.com/mithunsatheesh/node-rules)
* [Json Rules Engine](https://github.com/cachecontrol/json-rules-engine)

Las reglas deben permitir el cálculo del precio del viaje utilizando, entre otras cosas, la siguientes variables:

* Características del conductor (viajes en el día, viajes en el mes, antigüedad)
* Características del pasajero (viajes en el día, viajes en el mes, antigüedad, saldo)
* Método de pago
* Características del viaje (duración, distancia, posición geográfica, fecha y hora)
* Cantidad de viajes que se realizaron en la última ventana temporal (Hora, 30 mins, 10 mins)
* Application server que realiza la cotización
* Día y horario de la realización del viaje
* Tiempo de espera del pasajero para:
  * Que un conductor le confirme el viaje
  * Que el conductor llegue a buscarlo

Además, mediante estas reglas, se deberá determinar si el usuario esta habilitado para realizar el viaje.

Se deberán desarrollar a modo de ejemplo las siguientes reglas:

* Pasajero:
  * Costo de viaje mínimo de 50ARS
  * Precio por KM de 15ARS
  * Descuento del 5% los miércoles de 15hs a 16hs
  * Descuento de 100ARS en primer viaje
  * Recargo del 10% Lunes a Viernes de 17hs a 19hs
  * Recargo del 15% si en los últimos 30 mins se realizaron más de 10 viajes
  * Viaje gratis si usuario tiene un mail con dominio `@llevame.com`
  * No se le permitirá viajar si tiene saldo negativo
  * Descuento del 5% a partir del 5 viaje del día
* Conductor:
  * Pago de viaje mínimo 30ARS
  * Pago por KM de 5ARS
  * Aumento del 3% de Lunes a Viernes de 17hs a 19hs
  * Aumento del 2% si realizó más de 10 viajes en el día

#### Servicio viajes

Se disponibilizará un servicio para que se informen los viajes realizados. El _Shared server_ deberá ser el encargado de realizar los cobros y mantener el balance de los usuarios. Para esto, utilizará [_Taller II Payment API_©](https://github.com/gfusca/taller-ii-payment-api). Se deberá tener en cuenta, que el pago podría llegar a fallar.

Además, este servicio debe permitir almacenar y consultar los datos relacionados con los viajes realizados.

**Nota:** El uso de servicios externos es una tarea que podría ser larga en cuestiones temporales. Debido a esto, esas tareas se deben realizar en el _fondo_.

### Android Client

Se debe desarrollar un cliente _Android_ para la utlización por parte de los usuarios finales, es decir, pasajeros y conductores.

Este cliente se comunicará únicamente con un _Application Server_.

#### Registro

En caso de que la persona que desee utilizar la aplicación no tenga un usuario registrado la aplicación debe permitir poder registrar un usuario nuevo. Este registro deberá poder ser integrado con Facebook, permitiendo ingresar las credenciales de facebook y utilizar los datos asociados de la cuenta para completar el registro del usuario dentro del sistema.

#### Autenticación

Para que el cliente pueda enviar y recibir conversaciones el mismo debe autentificarse con el servidor. Para esto el cliente debe permitir al usuario ingresar usuario y contraseña. Se deberá diseñar una pantalla de ingreso a la aplicación.
Cuando la autenticación es exitosa, se almacenará un token de autenticación para realizar las operaciones con el servidor.

#### Chat Pasajero-conductor

Después que un pasajero haya elegido a su conductor, y este último haya aceptado el viaje, se habilitará un chat entre ellos. Esta función esta destinada a subsanar el error del GPS a la hora de ubicar correctamente al pasajero. Así el pasajero podrá indicarle al conductor exactamente donde se encuentra u otras indicaciones para encontrarlo.

#### Interfaz gráfica

Para el diseño de la interfaz deben respetarse las [guías de diseño propuestas por Google](https://www.google.com/design/spec/material-design/introduction.html).

#### Notificaciónes _Push_

Para el envío y recepción de notificaciones del sistema (ej. Nuevos viajes disponibles, Viaje aceptado o mensajes de Chat) se deberá utilizar el servicio de notificaciones push de [FCM](https://firebase.google.com/products/cloud-messaging/)

## Requerimiento No Funcionales

### Tecnologias

* Application Server:
  * Lenguaje: [Python 3](https://www.python.org/) (`3.6.2`)
  * Web Framework: [Flask](http://flask.pocoo.org/)
  * WSGI HTTP Server: [Gunicorn](http://gunicorn.org/)
  * Database: [MongoDB](https://www.mongodb.com/)
* Shared Server:
  * Lenguaje: [NodeJS](https://nodejs.org/) (`6.x`)
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
* _Shared Server_: Node Package Manager (`npm`, `package.json`)
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
| Checkpoint 1 | clase 5 (14/09) |
| Checkpoint 2 | clase 9 (12/10) |
| Checkpoint 3 | clase 13 (09/11) |
| Entrega | clase 16 (07/12) |

### Criterios de Aceptación

En cada checkpoint se deberá acordar el alcance de la entrega con cada ayudante. Este alcance debe respetar los contenidos mínimos para la entrega correspondiente. Estos son:

#### Checkpoint 1

##### Documentación
* mockups (web, android), REST API app server.
* reporte de coverage (app server, shared server) inicial.

##### Funcionalidad
###### Shared server:
* deploy aplicación nodeJS en Heroku.
* Generación de documentación de código (doxygen o similar).
* Implementación de Servicio de gestión de Aplication Server.
* Implementacion de logs.
* Unit test.
* Activación de TravisCI (ejecuta test).

###### Application server:
* deploy aplicación python + flask + gunicorn en Heroku.
* Generación de documentación de código (doxygen o similar).
* Implementacion de logs.
* Unit test.
* Activación de TravisCI (ejecuta test).

###### Android:
* Pantalla login: login contra facebook.
* Implementacion de logs.

#### Checkpoint 2

##### Documentación
* diseño + modelo de datos: app server, shared server.
* reporte de coverage > 75% (app server, shared server).

##### Funcionalidad

###### Shared server:
* Implementación de Servicio de gestión de usuarios de negocio.
* Implementación de Servicio de gestión de datos de usuario.
* Implementación de gestion de datos de usuarios.
* Implementación de modelo de datos postgresql heroku usuarios.
* Docker.
* Listado de usuarios (backoffice).
* Generación de documentación de código (doxygen o similar).
* Unit test.

###### Application server:
* Docker.
* Implementación de Servicio de autenticación.
* Implementación de modificación de perfil.
* Implementación de Servicio de choferes disponibles.
* Implementación de modelo de datos mongodb de perfiles/choferes.
* Generación de documentación de código (doxygen o similar).
* Unit test.

###### Android:
* Pantalla principal.
* Implementación de perfil (vista, modificación).
* Implementación de login contra app server (autenticación).
* Implementación de registro.
* Generación de documentación de código (doxygen o similar).
* Unit test.

#### Checkpoint 3

##### Documentación

* manual de instalación y configuración (app server, shared server).
* reporte de coverage > 75% (app server, shared server).

##### Funcionalidad

###### Shared server:
* Implementación de servicio de viajes.
* Implementación de servicio de cotización de viaje.
* Implementación de servicio de estado actual.
* Implementación de modelo de datos postgresql heroku completo.
* Implementación de estado actual (backoffice).
* Listado de viajes realizados (backoffice).
* Generación de documentación de código (doxygen o similar).
* Unit test.
* Generación de documentación de código (doxygen o similar).

###### Application server:
* Implementación de Servicio de posicionamiento.
* Implementación de Servicio de viajes disponibles.
* Implementación de modelo de datos mongodb heroku completo.
* Generación de documentación de código (doxygen o similar).
* Unit test.
* Generación de documentación de código (doxygen o similar).

###### Android:
* Notificaciones push
* Generación de documentación de código (doxygen o similar).
* Unit test.

### Entrega final

##### Documentación
* Documentación actualizada

##### Funcionalidad
Totalidad del TP

## Referencias

1. [REST](http://en.wikipedia.org/wiki/Representational_state_transfer)
2. [Unit Test](http://en.wikipedia.org/wiki/Unit_testing)
3. [Code Coverage](http://en.wikipedia.org/wiki/Code_coverage)
4. [Lint](https://es.wikipedia.org/wiki/Lint)
