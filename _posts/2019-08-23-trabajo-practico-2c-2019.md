---
layout: post
title: Foodie
subtitle: Enunciado del Trabajo Práctico 2C 2019
bigimg: /img/path.jpg
tags: [trabajos-practicos, 2019-2C]
---

Ya se encuentra disponible el enunciado correspondiente al trabajo práctico.

# Foodie

Una importante empresa, AppMaker©, ha decidido encargarnos el desarrollo de una **plataforma para el delivery de comida/items alrededor del mundo**. El principal objetivo es permitir conectar en tiempo real a personas de todo el mundo. 

AppMaker busca posicionarse en el mercado de aplicaciones, deseando conectar esta aplicación con sus otras aplicaciones que poseen gran cantidad de usuarios.

## Aplicaciones requeridas

La aplicación constará de tres componentes:

* Un **servidor**, _Application Server_, el cual será responsable de conectar a los usuarios.
* Una aplicación **Android**, el cual será utilizado por los usuarios.
* Una **Interfaz Web** en donde se administrarán los datos de la aplicación.

![Componentes](components.png)

### Application Server

Se trata de una aplicación por consola destinada a mantenerse en ejecución por períodos prolongados de tiempo.

Esta aplicación debe brindar una interfaz REST [1] para la comunicación de los diferentes usuarios.

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
- Foto de perfil (opcional para `usuario`, obligatoria para `delivery`)
- Rol: `delivery` / `usuario`.
- suscripción:  flat/premium. Ver sección **Suscripciones**
- Balance: sólo `delivery`. Plata disponible para retirar en función de los pedidos realizados. Ver sección **Cobro de pedidos**

#### Servicio de consulta de perfil
Este servicio permitirá consultar el perfil de un usuario. El mismo está compuesto por :
* Datos personales (Nombre, Apellido, EMail)
* Foto de perfil
* Reputación: Ver seccion **Reputacion**

#### Servicio de modificación de perfil
Este servicio permite a un usuario actualizar su perfil, debe permitir modificar y actualizar los siguientes datos:
* Datos personales (Nombre, Apellido, Dirección, e-mail, Cuenta de Facebook, GMail, etc)
* Foto de perfil

#### Servicio para envío de mensajes
Este servicio permitirá poder enviar mensajes a un usuario o a varios, a través de un canal de conversación entre la persona que realizó el pedido y la persona responsable de la entrega. Se recomienda la utilización de [Firebase Cloud Messaging](https://firebase.google.com/docs/cloud-messaging/?hl=es-419) o algún servicio similar para la administración de mensajes en tiempo real.

#### Servicio de direccionamiento

Servicio que utilizará a uno de un tercero para poder determinar los caminos posibles para el viaje que necesario para realizar la entrega del pedido. Se deberá utilizar algún servicio de direccionamiento como lo puede ser [Google Directions Api](https://developers.google.com/maps/documentation/directions/).

#### Servicio de pedidos disponibles

Este servicio permite a un delivery saber que pedidos tiene disponibles para aceptar. Debe brindar al delivery toda la información acerca del pasajero y el pedido.

Se deberá dar la posiblidad de filtrar pedidos marcados como favores. Consultar sección *Cadena de Favores* para más información.

#### Servicio de pedidos realizados

Este servicio permite a un usuario o delivery administrar y conocer que pedidos realizón en un período de tiempo.

#### Servicio de delivery disponibles

Este servicio permite a los ususarios visualizar los deliveries que se encuentran a su alrededor. Debe dar la posición del delivery, además, de información acerca de él.

#### Servicio de posicionamiento

Una vez iniciado un viaje, el servidor deberá conocer la posición del delivery. Para ello,  se deberá enviar periódicamente su posición. Esto permitirá al servidor:

- Corroborar que realmente se está realizando el viaje.
- Calcular la distancia y tiempo de viaje con exactitud

#### Servicio de cotización de entrega

Permite saber, con un margen de error, el costo de un pedido antes de realizarlo. Ver sección **Cotización de entrega**.

#### Servicio de cobro de pedido

El sistema debe permitir marcar que el importe correspondiente a un envío fue retirado por el delivery de su cuenta.

#####Cobro de pedidos

Por cada pedido realizado el delivery recibirá el `85%` del importe correspondiente a los cargos del envío. Este importe se incorporará al balance que posee en su cuenta.

El retiro de plata será realizado por un sistema externo. 

Además es posible abonar el pedido utilizando el **sistema de favores**. Consultar sección *Cadena de Favores* para más información

#### Sistema de reputación

El sistema debe poseer un sistema de puntación en base del registro de actividades de los usuarios y deliveries. Esta puntación permitirá conocer que tan confiable es el usuario/delivery para el uso del sistema.

El sistema de puntación tendrá un puntaje dentro del rango `1-5`

**Cadena de Favores**

El sistema otorgará la posiblidad de marcar un envío como cadena de favores. El usuario que generá el pedido deberá indicar cuantos puntos de gratitud otorgará a la persona que se encargue de realizar el delivery del pedido. Para esto el usuario deberá tener la cantidad de puntos de gratitud suficientes en su cuenta.

El usuario luego podrá cambiar los puntos de gratitud para beneficios exclusivos; como por ejemplo envíos gratis.

#### Suscripciones

El sistema debe permitir dos tipos de suscripción para los usuarios: `flat` y `premium`. 

La suscripción de tipo `flat` es la suscripción por defecto que tendrá cada usuario en el momento de registrarse. El sistema debe permitir poder realizar un upgrade en su suscripción para poder pasar a usuario `premium`. Esta suscripción le permitirá acceder a beneficios exclusivos y envíos grátis.

La suscripción tendrá un cargo fijo mensual. Para esto el usuario deberá ingresar una tarjeta de crédito. 

*Se asume que el cobró lo realizará un sistema externo.*

##### Beneficios

A continuación se mencionan algunos beneficios a modo de ejemplo:

- 5 envíos gratis por mes
- 25% de descuento los fines de semana
- Cada X envíos se otorga un 10% de descuento para el próximo.

#### Cotización de entrega

Debido a la necesidad de poder tener flexibilidad a la hora de establecer los precios para mantenerse competitivo. AppMaker© exige que el cálculo del precio sea realizado utilizando un sistema de reglas.

El servidor deberá permitir la modificación y guardado de las mismas manteniendo un registro de cambios. Además, deberá permitir al usuario hacer pruebas con las reglas escritas previo a quedar efectivas en la cotización de las entregas.

Para el sistema de reglas, se sugiere la utilización de alguno de los siguientes motores:

- [Nools](https://github.com/noolsjs/nools)
- [Node Rules](https://github.com/mithunsatheesh/node-rules)
- [Rules](https://github.com/jruizgit/rules)
- [Json Rules Engine](https://github.com/cachecontrol/json-rules-engine)

Las reglas deben permitir el cálculo del precio del viaje utilizando, entre otras cosas, la siguientes variables:

- Características del delivery (reputación, viajes en el día, viajes en el mes, antigüedad)
- Características del usuario (reputación, viajes en el día, viajes en el mes, antigüedad, saldo)
- Método de pago: efectivo/tarjeta
- Características del pedido (duración, distancia, posición geográfica, fecha y hora)
- Cantidad de pedido que se realizaron en la última ventana temporal (Hora, 30 mins, 10 mins)
- Día y horario de la realización del viaje

Se deberán desarrollar a modo de ejemplo las siguientes reglas:

- **Usuario**:
  - Costo de entrega mínimo de 20ARS (2KM).
  - Precio por KM extra de 15ARS
  - Descuento del 5% los miércoles de 15hs a 16hs
  - Descuento de 100ARS en el primer pedido.
  - Recargo del 10% Lunes a Viernes de 17hs a 19hs.
  - Descuento del 5% a partir del 5 pedido.
- **Delivery**:
  - Aumento del 3% de Lunes a Viernes de 17hs a 19hs
  - Aumento del 2% si realizó más de 10 viajes en el día
  - Aumento del 10% durante los fines de semana de 20 a 23hs.
  - Descuento del 20% todos los Domingos de 10 a 14hs.

#### Interfaz WEB
La interfaz WEB deberá brindar una GUI que permita la administración de datos.

##### Login
La interfaz WEB deberá solicitar usuario y contraseña para acceder a la administración de datos. Estos usuarios serán de uso exclusivo para la interfaz WEB.

##### Administración de usuarios
La interfaz WEB debe permitir la administración de usuarios/deliveries.

##### Visualización de estadísticas 

La interfaz WEB debe mostrar gráficos de actividad de los usuarios dentro del sistema. Se deberán visualizar al menos las siguientes estadísticas:

* Cantidad de usuarios registrados
* Cantidad de pedidos entregados
* Cantidad de pedidos cancelados

##### Administración de balances

La interfaz WEB debe permitir administrar los balances de los usuarios de tipo `delivery`. Esto servirá para que un administrador actualicé el balance en caso de que un delivery haya cobrado el importe correspondiente a los pedidos realizados.

##### Administración de suscripciones

La interfaz WEB debe permitir administrar las suscripciones de los usuarios. Esto servirá para actualizar el estado de una suscripción. Por ejemplo, cancelar una suscripción de tipo `premium` por falta de pago.

### Android Client

Este cliente se comunicará únicamente con un [Application Server](#application-server). A continuación se dará una breve descripción de las funcionalidades esperadas para la aplicación Android. Se deberá validar con el ayudante asignado el alcance de las mismas.

#### Registro

En caso de que la persona que desee utilizar la aplicación no tenga un usuario registrado la aplicación debe permitir poder registrar un usuario nuevo. Este registro deberá poder ser integrado con Facebook/Gmail, permitiendo ingresar las credenciales de facebook/gmail y utilizar los datos asociados de la cuenta para completar el registro del usuario dentro del sistema.

#### Autenticación

Para que el cliente pueda enviar y recibir conversaciones el mismo debe autentificarse con el servidor. Para esto el cliente debe permitir al usuario ingresar usuario y contraseña. Se deberá diseñar una pantalla de ingreso a la aplicación.
Cuando la autenticación es exitosa, se almacenará un token de autenticación para realizar las operaciones con el servidor.

#### Perfil de usuario
Los usuarios podrán visualizar su perfil o el de otros usuarios. El perfil tendrá los datos del usuario y sus actividades dentro del sistema. Dentro de las actividades se deberá mostrar estadísticas del usuario (organizaciones a la que pertenece, cantidad de mensajes enviados).

#### Seguimiento del pedido

La aplicación debe permitir conocer la ubicación del delivery y el tiempo estimado de entrega del mismo. Para el seguimiento del pedido se deberá mostrar un mapa con la `ubicación` del delivery y el `tiempo estimado` de envío.

####Realización pedido

La aplicación debe permitir realizar un pedido indicando la fecha, el origen y el destino del mismo. Una vez indicado los datos del pedido, se deberá mostrar un mapa con los deliveries disponibles. El sistema asignará uno de forma automática mostrando la reputación y la posibilidad de confirmar o buscar otro delivery disponible.

#### Consulta de favores

La aplicación deberá permitir listar los pedidos marcados como favores que publicaron los demás usuarios.  No es necesario ser un usuario de delivery para poder realizar estos pedidos.

Consultar sección *Cadena de Favores* para más información

#### Chat Usuario-Delivery

Después que un delivery haya aceptado el pedido, se habilitará un chat entre ellos. Esta función esta destinada a subsanar el error del GPS a la hora de ubicar correctamente el pedido. Se recomienda la utilización de [Firebase Cloud Messaging](https://firebase.google.com/docs/cloud-messaging/?hl=es-419) o algún servicio similar para la administración de mensajes en tiempo real.

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
| Checkpoint 1 | clase 4 (12/09/19) |
| Checkpoint 2 | clase 8 (10/10/19) |
| Checkpoint 3 | clase 12 (07/11/19) |
| Entrega | clase 16 (05/12/19) |

### Criterios de Aceptación

En cada checkpoint se deberá acordar el alcance de la entrega con cada ayudante. 

## Referencias

1. [REST](http://en.wikipedia.org/wiki/Representational_state_transfer)
2. [Unit Test](http://en.wikipedia.org/wiki/Unit_testing)
3. [Code Coverage](http://en.wikipedia.org/wiki/Code_coverage)
4. [Lint](https://es.wikipedia.org/wiki/Lint)
