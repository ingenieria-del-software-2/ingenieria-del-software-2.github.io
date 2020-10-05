# Bookbnb

## Indice

1. [Descripción](#descripción)
2. [Requisitos](#requisitos)
    1. [Epicas](#epicas)
       1. [Usuarios](#usuarios)
       2. [Perfil](#perfil)
       3. [Busquedas](#búsquedas)
       4. [Recomendaciones](#recomendaciones)
       5. [Reservas](#reservas)
       6. [Consultas](#consultas)
       7. [Calificaciones](#calificaciones)
       8. [Mis reservas](#mis-reservas)
       9. [Publicaciones](#publicaciones)
       10. [Notificaciones](#Notificaciones)
       11. [Administración de usuarios](#administración-de-usuarios)
       12. [Administración de publicaciones](#administración-de-publicaciones)
       13. [Administración de servidores](#administración-de-servidores)
       14. [Métricas](#métricas)
       15. [Bonus](#bonus)
    2. [Historias de Usuario](#historias-de-usuario)
3. [Requisitos No Funcionales](#requisitos-no-funcionales)
    1. [Componentes](#componentes)
    2. [Tecnologias](#tecnologias)
    3. [Log](#log)
    4. [Monitoreo](#monitoreo)
    5. [Empaquetamiento](#empaquetamiento)
    6. [Testing](#testing)
    7. [CI-CD](#ci-cd) 
    8. [Despliegue en la Nube](#despliegue-en-la-nube)
    9. [UX](#ux)
    10. [Documentación](#documentación)
4. [Instancias de entrega](#instancias-de-entrega)


## Descripción

Una importante empresa ha decidido encargarnos el desarrollo de una plataforma digital llamada Bookbnb dedicada a la oferta de alojamientos a particulares mediante la cual los anfitriones pueden publicitar y contratar el arriendo de sus propiedades con sus huéspedes.

## Requisitos

A continuación se describirán una serie de Épicas e Historias de usuario indicando la funcionalidad a cumplir por la plataforma. 
Dentro de estos requisitos se encuentran definidos un conjunto de requisitos "bonus" los cuales deberán ser analizados junto con el ayudante para definir su alcance y prioridad.

_En caso de que se observe alguna definición ambigua o la falta de la misma, esta debe ser aclarada y definida por el grupo junto a su corrector_ 

### Epicas

<!-- Registro, login y perfil -->

#### Usuarios
Como usuario quiero poder registrarme y tener una cuenta para poder acceder a los servicios de la plataforma.

Historias de usuario relacionadas:
 - [Registro](#registro-de-usuarios)
 - [Login con email y contraseña](#login-de-usuarios)
 - [Login con proveedor de identidad federada](#login-de-usuarios-con-proveedores-de-identidad-federada)
 - [Recupero de contraseña](#recupero-de-contraseña)
 - [Registro Administradores](#registro-de-administradores)
 - [Login Administradores](#login-de-administradores)
 
 
 
#### Perfil

Como usuario quiero poder editar mi perfil y acceder tanto a mi perfil como al de otros usuarios para conocer y que me conozcan otros usuarios.

Historias de usuario relacionadas:
 - [Edicion de perfil](#edición-de-perfil)
 - [Visualización de perfil propio](#visualización-de-perfil-propio)
 - [Visualización de perfil de otros usuarios](#visualización-de-perfil-de-otros-usuarios)

<!-- Huesped Recomendaciones, búsquedas, reserva y pago -->

#### Búsquedas
Como huesped quiero poder realizar búsquedas de alojamientos con distintos filtros para visualizar las publicaciones que me interesen

Historias de usuario relacionadas:
 - [Búsquedas de alojamientos geograficamente](#búsqueda-de-alojamiento-geograficamente)
 - [Búsquedas de alojamientos por tipo de alojamiento](#búsqueda-de-alojamiento-por-caracteristicas)
 - [Búsquedas de alojamientos por fechas](#búsqueda-de-alojamiento-por-fechas)
 - [Búsquedas de alojamientos por rango de precios](#búsqueda-de-alojamiento-por-precio)
 
#### Recomendaciones
Como huesped quiero poder recibir recomendaciones de alojamientos para encontrar de manera más simple las publicaciones que me resulten interesantes.

Historias de usuario relacionadas:

 - [Recomendaciones de alojamientos](#recomendaciones-de-alojamientos)

#### Reservas

Como huesped quiero poder acceder a una publicación para realizar reserva de un alojamiento

Historias de usuario relacionadas:
 - [Visualizar publicación](#visualización-de-publicación)
 - [Reservas de alojamientos](#reserva-de-alojamiento)
 - [Pagos de reserva](#pago-de-reserva)

#### Consultas

Como huesped quiero poder realizar consultas sobre una publicación para esclarecer dudas.

Historias de usuario relacionadas:
 - [Consultas públicas](#consultas-publicas)
 - [Consultas privadas](#consultas-privadas)
 

#### Calificación de alojamiento

Como huesped o anfitrion quiero poder calificar una experiencia de alojamiento que realice para informar mi opinion.

Historias de usuario relacionadas:
 - [Calificación cuantitativa de alojamiento](#calificacion-cuantitativa-de-alojamiento)
 - [Calificación cualitativa de alojamiento](#calificacion-cualitativa-de-alojamiento)
 - [Calificación cuantitativa de huesped](#calificacion-cuantitativa-de-huesped)
 - [Calificación cualitativa de huesped](#calificacion-cualitativa-de-huesped)
 

#### Mis reservas

Como huesped quiero poder listar mis reservas realizadas y por realizar para visualizar mi historial en la plataforma.

Historias de usuario relacionadas:
 - [Listar historico de reservas](#historico-de-reservas)
 - [Reservas favoritas](#reservas-favoritas)

<!-- Anfitrion Recomendaciones, búsquedas, reserva y pago -->

#### Publicaciones

Como anfitrion quiero poder dar de alta, editar y visualizar una publicacion para que realicen reservas de mi alojamiento.

Historias de usuario relacionadas:
 - [Alta de publicaciones](#alta-de-publicacion)
 - [Edición de publicaciones](#edicion-de-publicacion)
 - [Visualización de publicacion](#visualizacion-de-publicacion)
 - [Listar de publicaciones](#listado-de-publicaciones)

 
#### Notificaciones

Como usuario quiero recibir notificaciones al dispositivo que utilizo para informarme sobre actividades en la plataforma

Historias de usuario relacionadas:
 - [Notificacion por nuevo mensaje](#notificacion-por-nuevo-mensaje)
 - [Notificacion por flujo de reserva](#notificacion-por-flujo-de-reserva)
 

<!-- Anfitrion Recomendaciones, búsquedas, reserva y pago -->

#### Administración de usuarios

Como administrador del sistema quiero poder gestionar los usuarios que estan registrados en el mismo para administrar su uso

Historias de usuario relacionadas:
 - [Listar usuarios del sistema](#listar-usuarios-del-sistema)
 - [Visualizar perfil de usuario](#visualizar-perfil-de-usuario)
 - [Bloquear usuario](#bloquear-usuario)
 - [Listar transacciones](#listar-transacciones)
 - [Carga de saldo](#carga-de-saldo)


#### Administración de publicaciones

Como administrador del sistema quiero poder gestionar las publicaciones que se encuentran en el mismo  para administrar su uso

Historias de usuario relacionadas:
 - [Listado de publicaciones](#listado-de-publicaciones)
 - [Visualizacion de publicación](#visualizacion-de-publicación)
 - [Bloqueo de publicación](#bloquear-publicación)

#### Administración de servidores

Como administrador del sistema quiero poder gestionar los servidores que se encuentran en el mismo  para administrar su uso

Historias de usuario relacionadas:
 - [Listado de servidores](#listado-de-servidores)
 - [Visualizacion de servidor](#visualizacion-de-servidor)
 - [Alta de servidor](#alta-de-servidor)
 - [Bloqueo de servidor](#bloquear-de-servidor)



#### Métricas

Como administrador del sistema quiero poder visualizar métricas e información de la plataforma para administrar evaluar el estado del negocio

Historias de usuario relacionadas:
- [Métricas de negocio](#metricas-de-negocio)




#### Bonus

Las funcionalidades y requerimientos extras, estan siendo definidas por el cliente, pero en una primer captura de requisitos surgio lo siguiente

Historias de usuario relacionadas:
- [Uso de reglas para configurar disponibilidad geografica](#uso-de-reglas-para-configurar-disponibilidad-geografica)
- [Cambios en el smart contract](#cambios-en-el-smart-contract)
- [Uso de kubernetes](#uso-de-kubernetes)

___
### Historias de Usuario

___
#### Registro de usuarios

**Descripción**

- Como usuario no registrado quiero registrame en la plataforma para acceder a las funcionalidades del sistema.  El usuario podrá determinar que tipo de perfil utilizará en la cuenta al momento de registrarse: 

- Huesped: Es el usuario que realiza la búsqueda y reserva de alojamientos.
- Anfitrion: Es el usuario que realiza las publicaciones de alojamientos.

_En el resto de los CA se utilizará la nomenclatura Usuario como un usuario registrado_

**Criterios de aceptación**

- CA 1: Registro exitoso
  - Cuando el registro del usuario es correcto.
  - Entonces el sistema creará un nuevo usuario con su perfil y billetera correspondiente. Luego permitirá el ingreso al sistema.
- CA 2: Falta uno o más campos obligatorios
  - Cuando el registro del usuario es no correcto debido a un ingreso erroneo o faltante de campos. 
  - Entonces el sistema indicará los campos faltantes y/o erroneos y no permitirá el ingreso al sistema
- CA 3: Registro fallido
  - Cuando el registro del usuario falla debido a un error del servicio.
  - Entonces el sistema indicará un mensaje de error acorde al usuario.

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
  
___

#### Registro de administradores

**Descripción**

- Como administrador quiero poder dar de alta a otros administradores en la plataforma para acceder a las funcionalidades del sistema.
**Criterios de aceptación**

- CA 1: Registro exitoso
  - Cuando el registro del administrador es correcto.
  - Entonces el sistema registrará un nuevo administrador con sus respectivas credenciales y permitirá el ingreso al sistema.
- CA 2: Falta uno o más campos obligatorios
  - Cuando el registro del administrador es no correcto debido a un ingreso erroneo o faltante de campos. 
  - Entonces el sistema indicará los campos faltantes y/o erroneos y no permitirá el ingreso al sistema
- CA 3: Registro fallido
  - Cuando el registro del administrador falla debido a un error del servicio.
  - Entonces el sistema indicará un mensaje de error acorde al usuario.

___

#### Login de administradores

**Descripción**

- Como Administrador quiero ingresar con mi cuenta en la plataformapara acceder a las funcionalidades del sistema

**Criterios de aceptación**


- CA 1: Login exitoso 
  - Cuando el login del adminstrador utilizando sus credenciales es correcto
  - Entonces el sistema permitirá el ingreso al sistema
  - En caso contrario se deberá mostrar un mensaje de error acorde al usuario.
- CA 2: Login fallido
  - Cuando el login del usuario falla debido a un error del servicio.
  - Entonces el sistema indicará un mensaje de error acorde al usuario.
- CA 3: Sesión expirada
  - Cuando la sesión del usuario excede el tiempo de expiración
  - Entonces el sistema solicitará al usuario nuevamente el login
  
___

#### Recupero de contraseña

**Descripción**

- Como Usuario quiero poder recuperar mi contraseña en caso de que no la recuerde

**Criterios de aceptación**
- CA 1: Recupero de contraseña éxitoso
  - Cuando se realice un recupero de contraseña
  - Entonces se deberá enviar un email con un link de recupero de contraseña, el cual tiene solo un uso y un tiempo de expiración

___

#### Edición de perfil

**Descripción**

- Como Usuario quiero poder editar los datos de mi perfil de usuario para mantener actualizada mi información personal.

**Criterios de aceptación**

- CA 1: Edicíón de datos de perfil exitosa
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

#### Búsqueda de alojamiento geograficamente

**Descripción**

- Como huesped quiero poder realizar búsquedas de alojamientos geograficamente para visualizar las publicaciones y así concretar una reserva

**Criterios de aceptación**
- CA 1: Filtrado por geolocalización
  - Cuando se realiza una búsqueda utilizando un filtrado por distancia en base a mi localización
  - Entonces se deberán retornar las publicaciones que se encuentren a la distancia indicada.
- CA 2: Filtrado por ubicacion 
  - Cuando se realiza una búsqueda utilizando un filtrado por ubicacion en base a coordenadas. (Siendo estas coordenadas cualquier ciudad/pais junto con un radio determinado)
  - Entonces se deberán retornar las publicaciones que se encuentren en dicha area

___

#### Búsqueda de alojamiento por caracteristicas

**Descripción**

- Como huesped quiero poder realizar búsquedas de alojamientos por sus caracteristica para visualizar las publicaciones y así concretar una reserva

**Criterios de aceptación**
- CA 1: Filtrado por tipo de alojamiento
  - Cuando se realiza una búsqueda utilizando un filtrado por caracteristicas del alojamiento
  - Entonces se deberán retornar las publicaciones que cumplan dichos filtros
- CA 2: Filtrado por cantidad de huespedes 
  - Cuando se realiza una búsqueda utilizando un filtrado por cantidad de huespedes del alojamiento
  - Entonces se deberán retornar las publicaciones que cumplan dichos filtros
  
___

#### Búsqueda de alojamiento por fechas

**Descripción**

- Como huesped quiero poder realizar búsquedas de alojamientos por fechas de checkin y checkout para visualizar las publicaciones y así concretar una reserva

**Criterios de aceptación**
- CA 1: Filtrado por fecha de checkin
  - Cuando se realiza una búsqueda utilizando como filtro la fecha de checkin 
  - Entonces se deberán retornar las publicaciones que cumplan se encuentren disponibles a partir de esa fecha
- CA 2: Filtrado por fecha de checkout
  - Cuando se realiza una búsqueda utilizando como filtro la fecha de checkout 
  - Entonces se deberán retornar las publicaciones que cumplan se encuentren disponibles hasta esa fecha
___

#### Búsqueda de alojamiento por precio

**Descripción**

- Como huesped quiero poder realizar búsquedas de alojamientos por precio para visualizar las publicaciones y así concretar una reserva

**Criterios de aceptación**
- CA 1: Filtrado por rango de precio 
  - Cuando se realiza una búsqueda utilizando como filtro un rango de precios
  - Entonces se deberán retornar las publicaciones que cumplan se encuentren dentro de tal rango
- CA 2: Filtrado por precio minimo
  - Cuando se realiza una búsqueda utilizando como filtro un precio mínimo
  - Entonces se deberán retornar las publicaciones que cumplan se encuentren por encima de ese precio
- CA 3: Filtrado por precio maximo
  - Cuando se realiza una búsqueda utilizando como filtro un precio máximo
  - Entonces se deberán retornar las publicaciones que cumplan se encuentren por debajo de ese precio

___

#### Recomendaciones de alojamientos

**Descripción**

- Como huesped quiero recibir recomendaciones afines a mi perfil para poder encontrar con mayor facilidad una reserva de alojamiento

**Criterios de aceptación**
- CA 1: Recomendaciones por perfil de usuario
    - Los criterios de aceptacin de esta historia, deberán ser definidos junto con el corrector.

___

#### Visualización de publicación

**Descripción**

- Como huesped quiero poder visualizar una publicacion de un alojamiento para ver sus fotos y/o videos y revisar sus características.

**Criterios de aceptación**

- CA 1: Visualización exitosa
  - Cuando ingreso a una publicación como huesped
  - Entonces puedo visualizar su contenido multimedia, su descripción, sus caracteristicas, fecha de disponibilidad y precio por noche.

___

#### Reserva de alojamiento

**Descripción**

- Como huesped quiero poder reservar un alojamiento para poder alojarme en el mismo

**Criterios de aceptación**

- CA 1: Reserva exitosa
  - Cuando se realiza una reserva de manera exitosa
  - Entonces se deberá ejecutar el flujo correspondiente para establecer dicha reserva

___

#### Pago de reserva

**Descripción**

- Como huesped quiero poder pagar la reserva un alojamiento para poder finalizar la reserva

**Criterios de aceptación**

- CA 1: Pago exitoso
  - Cuando se realiza un pago de manera exitosa
  - Entonces se deberá ejecutar el flujo correspondiente para aplicar dicho pago y se deberá ver reflejado en mi billetera el descuento del monto del pago utilizando el smart contract que se definio 
- CA 2: Pago con error
  - Cuando sucede un error en el cobro del pago
  - Entonces no se deberá descontar de la billetara el monto de la reserva.

___

#### Consultas públicas

- Como huesped quiero poder realizar comentarios con consultas en una publicación para poder consultarle al anfitrion mis dudas 

**Criterios de aceptación**

- CA 1: Consulta en publicación
  - Cuando se realiza una consulta pública en una publicación
  - Entonces todo aquel que entre a la publicación podrá leerla y el anfitrion puede o no responderla

___

#### Consultas privadas
- Como huesped quiero poder realizar con consultas privadas a un anfitrion para poder consultarle mis dudas 

**Criterios de aceptación**

- CA 1: Mensaje directo
  - Cuando se realiza una consulta mediante el mensaje directo
  - Entonces solo los involucrados podran leer la misma y se deberá mantener una conversación en tiempo real por mensajes

___

#### Calificación cuantitativa del alojamiento

**Descripción**
- Como huesped quiero poder realizar una calificación cuantitativa del alojamiento para así poder brindar mi opinión del mismo

**Criterios de aceptación**
- CA 1: Calificación del alojamiento
  - Cuando un huesped realiza una calificación cuantitativa de un alojamiento en el cual se hospedo
  - Entonces esta calificación afectará la calificación del alojamiento 
  
___

#### Calificación cualitativa del alojamiento

**Descripción**
- Como huesped quiero poder realizar una opinion mas detallada del alojamiento para así poder brindar mi opinión del mismo

**Criterios de aceptación**

- CA 1: Calificación
  - Cuando un huesped realiza una calificación con comentarios de un alojamiento en el cual se hospedo
  - Entonces esta calificación luego podrá ser visualizada por otros huspedes.
  
___

#### Calificación cuantitativa de huesped

**Descripción**
- Como anfitrion quiero poder realizar una calificación cuantitativa del huesped que reservo mi alojamiento para así poder brindar mi opinin del mismo

**Criterios de aceptación**
- CA 1: Calificación de un huesped
  - Cuando un anfitrion realiza una calificación cuantitativa de un huesped al cual le reservo un alojamiento
  - Entonces esta calificación realizada afectará la calificación del huesped 

___

#### Calificación cualitativa de huesped
**Descripción**
- Como anfitrion quiero poder realizar una opinion mas detallada del huesped para así poder brindar mi opinin del mismo

**Criterios de aceptación**

- CA 1: Calificación
  - Cuando un anfitrion realiza una calificación con comentarios de un huesped al cual le reservo
  - Entonces esta calificación luego podrá ser visualizada en el perfil del huesped por otros anfitriones.
  
___

#### Historico de reservas

**Descripción**

- Como huesped quiero poder visualizar todas las reservas de alojamientos que realicé para así poder controlar mi historial

**Criterios de aceptación**

- CA 1: Listado de reservas
  - Cuando un huesped quiera visualizar sus reservas realizadas
  - Entonces se listarán todas las reservas que el huesped realizo, pudiendo filtrar las mismas
  
___

#### Reservas favoritas

**Descripción**

- Como huesped quiero poder seleccionar publicaciones de alojamientos como favoritas para luego poder revisarlas con mas detalle o compartirlas

**Criterios de aceptación**

- CA 1: Listado de reservas
  - Cuando un huesped quiera visualizar sus reservas favoritas
  - Entonces se listarán todas las reservas que el huesped seleccciono como favoritas, pudiendo filtrar las mismas

___

#### Alta de publicación

**Descripción**

- Como anfitrion quiero poder dar de alta una publicacion de mi alojamiento para que realicen reservas del mismo y poder cobrar su uso

**Criterios de aceptación**

- CA 1: Alta exitosa
  - Cuando un anfitrion de realice una nueva publicación de un alojamiento.
  - Entonces esta publicación podrá ser visualizada y reservada por los huespedes.

___

#### Edición de publicación

**Descripción**
- Como anfitrion quiero poder modificar una publicacion ya realizada para actualizar su contenido

**Criterios de aceptación**
- CA 1: A definir

___

#### Visualizacin de publicación

**Descripción**
- Como anfitrion quiero poder visualizar una publicacion ya realizada para revisar su contenido

**Criterios de aceptación**
- CA 1: A definir

___

#### Listado de publicaciones

**Descripción**
- Como anfitrion quiero poder listar mis publicaciones realizadas para administrarlas

**Criterios de aceptación**
- CA : A definir

___


<!-- Backoffice -->
#### Listar usuarios del sistema

**Descripción**

- Como administrador del sistema quiero poder listar todos los usuario del sistema para gestionar su uso

**Criterios de aceptación**
- CA : A definir

___

#### Visualizar perfil de usuario

**Descripción**

- Como administrador del sistema quiero poder visualizar el perfil de un  usuario del sistema para verificar sus datos

**Criterios de aceptación**

- CA : A definir

___

#### Bloquear usuario

**Descripción**

- Como administrador del sistema quiero poder bloquear y desbloquear un  usuario del sistema para controlar su ingreso a la plataforma

**Criterios de aceptación**

- CA 1: A definir

___

#### Listado de publicaciones

**Descripción**
- Como administrador del sistema quiero poder listar todas las publicaciones de alojamientos que se encuentren en el sistema para acceder a ellas 

**Criterios de aceptación**
- CA : A definir

___

#### Visualización de publicaciones

**Descripción**

- Como administrador del sistema quiero poder visualizar una publicación de un alojamiento para verificar su contenido. 

**Criterios de aceptación**

- CA : A definir

___

#### Bloqueo de publicación

**Descripción**

- Como administrador del sistema quiero poder bloquear una publicación de un alojamiento que se encuentren en el sistema para que no puedan acceder a la misma

**Criterios de aceptación**

- CA : A definir

___

#### Listar transacciones

**Descripción**

- Como administrador del sistema quiero poder listar todas las transacciones de reservas y sus pagos para poder controlar su uso de la plataforma

**Criterios de aceptación**
- CA : A definir

___

#### Carga de saldo

**Descripción**

- Como administrador del sistema quiero poder cargar saldo en la billetear de un cliente para poder realizar campañas de beneficios o solucionar inconvenientes

**Criterios de aceptación**

- CA : A definir

___

#### Listado de servidores

**Descripción**

- Como administrador del sistema quiero poder listar todos los servidores que se encuentren dentro del sistema para controlar su uso

**Criterios de aceptación**

- CA : A definir

___

#### Visualización de servidor

**Descripción**

- Como administrador del sistema quiero visualizar la información de un servidor que se encuentre en el sistema para verificar que sea válida

**Criterios de aceptación**

- CA : A definir

___

#### Alta de servidor

**Descripción**

- Como administrador del sistema quiero poder dar de alta un nuevo servidor para que pueda acceder a los distintos servicios del sistema

**Criterios de aceptación**

- CA 1: Alta de Api Key
  - Cuando se realice el alta de un nuevo servidor
  - Entonces se creara una nueva api key, la cual será utilizada por un servidor para poder acceder a los recursos y servicios de otros servidores dentro del sistema.

___

#### Bloqueo de servidor

**Descripción**
- Como administrador del sistema quiero poder bloquear un nuevo servidor para que no pueda acceder a los distintos servicios del sistema

**Criterios de aceptación**
- CA 1: Bloqueo de Api Key
  - Cuando se realice el bloqueo de un  servidor
  - Entonces se tomará como inválida su api key, la cual será tomada como inválida para poder acceder a los recursos y servicios de otros servidores dentro del sistema.

___

#### Métricas de negocio

**Descripción**
- Como administrador del sistema quiero poder visualizar distintas métricas del negocio para medir el uso de la plataforma y sus servicios

**Criterios de aceptación**
- CA : A definir

___
#### Uso de reglas para configurar disponibilidad geografica

**Descripción**
- Se requiere brindar un servicio, el cual pueda consumir de una API externa el estado de la pandemia en una región geográfica en particular. Esta información junto a otras reglas definidas por los administradores, deberán definir si las publicaciones que se encuentren en dicha región estan disponibles o no

**Criterios de aceptación**
- CA 1: A definir

___

#### Cambios en el smart contract

**Descripción**
- Se requiere realizar una serie de cambios en el smart contract que administra la gestión de pagos. 

**Criterios de aceptación**
- CA 1: A definir

___

#### Uso de kubernetes

**Descripción**

- Se requiere realizar una migración de los servicios backend de la plataforma a kubernetes

**Criterios de aceptación**

- CA 1: A definir

___
## Requisitos No Funcionales

### Componentes

La plataforma constará de los siguientes componentes:

### Aplicación mobile

Una aplicación mobile, el cual será utilizado por los usuarios.
_Las tecnologias a utilizar son detalladas en la sección [tecnologias](#tecnologias)_

### Backoffice web

Un backoffice web, el cual será utilizado por los administradores. 

_Las tecnologías a utilizar son detalladas en la sección [tecnologias](#tecnologias)_

### Servicios backend

Distintos servicios de backend para brindar soporte a la plataforma. Como enfoque se recomienda orientar estos servicios hacia una arquitetura de [microservices](https://martinfowler.com/articles/microservices.html). Dicha arquitectura propuesta deberá ser convalidada junto al ayudante. 
_Las tecnologías a utilizar son detalladas en la sección [tecnologias](#tecnologias)_

### Smart contract
La gestión de pagos de las transacciones se realizará utilizando un smart contract, el cual será provisto por la cátedra

___

### Tecnologias

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

Junto con sus respectivos frameworks. La catedrá recomienda alguno de estos
- Python:
  - [Flask](https://flask.palletsprojects.com/en/1.1.x/)
  - [Django](https://www.djangoproject.com/)
  - [FastAPI](https://fastapi.tiangolo.com/)
  - [Tornado](https://www.tornadoweb.org/en/stable/)
  
- JavaScript:
 - [NodeJs](https://nodejs.org/es/)

Se recomiendan como base de datos alguna de las siguientes 
- [PostgreSQL](https://www.postgresql.org/)
- [MongoDB](https://www.mongodb.com/es)

Esta elección será responsabilidad del grupo y la misma deberá estar consensuada junto al ayudante. Ademas quedará justificada en la documentación técnica que formará parte del TP.

___

#### Backoffice web

Para el desarrollo del backoffice web se utilizará React como biblioteca.

___

#### Notificaciones push

Para el uso de notificaciones push se recomienda utilizar el servicio provisto por firebase [Cloud Messaging](https://firebase.google.com/docs/cloud-messaging?hl=es)

___

#### Contenido multimedia

Para el uso de contenido multimediase recomienda utilizar el servicio provisto por firebase [Storage](https://firebase.google.com/docs/storage?hl=es)

___

#### Chat

Para el uso del chat en tiempo real se recomienda utilizar el servicio provisto por firebase [Real time database](https://firebase.google.com/docs/database?hl=es)

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

Para el monitoreo de los servicios se recomiendan alguna de las siguientes librerias/plataformas

- [Prometheus](https://prometheus.io/)
- [Grafana](https://grafana.com/)
- [New Relic](https://blog.newrelic.com/product-news/simple-pricing/)

___

### Empaquetamiento

Cada uno de los desarrollos solicitados debe empaquetarse según el estandar de la plataforma, es decir:

* _Python_: Python Setuptools (`setup.py` y `requeriments.txt`)
* _Node_: Node Package Manager (`npm`, `package.json`), Yarn Package Manager(https://yarnpkg.com/lang/en/)
* _Android Client_: Android Application Package (`apk`)

Además, los servidores deberán traer un `Dockerfile` que permita correrlos sin necesidad de tener instalado los respectivos lenguajes.

___

### Testing

El desarrollo de la aplicación se deberá adaptar a los estándares de calidad utilizados por AppMaker©. Dentro de estos estándares se encuentran:

* Pruebas unitarias
* Métricas: code coverage debe ser mayor a 75%
* Respetar estándar para estilo de codificación: Lint
* Pruebas de integración.
* Todas aquellas que se consideren convenientes para garantizar la calidad de las aplicaciones desarrolladas.
 
**Nota:** Esta sección hace solo referencía a los servicios de backend No se toma como requerimiento el realizar pruebas sobre el cliente Android, aunque es recomendado como una buena práctica.

___

### CI-CD

Las pruebas y métricas anteriormente mencionadas deberan correr bajo una plataforma de integración continua. 

Se sugiere el uso de [TravisCI](https://travis-ci.org/) ó [GitHub Actions](https://github.com/features/actions), pero se podrá utilizar otro previa justificación.

El resultado del _code coverage_ debe ser desplegado automáticamente a una plataforma que permita visualizarlas, entre muchas posibilidades se encuentran:

* [Coveralls](https://coveralls.io/)
* [Codecov](https://codecov.io/)
* Utilizar [Github Pages](https://pages.github.com/) para generar una web para visualizarlo

Finalmente, el despliegue al servidor de _PAAS_ elegido deberá ser automático. Este deberá tener en cuenta como la actualización de la base de datos (cambios en las tablas, etc). El mecanismo utilizado para disparar dicho despliegue (utilizar el branch _master_ como productivo, utilizar un tags con nombre especial) será definido por los desarrolladores y deberá ser detallado en la documentación

___

### Despliegue en la Nube

Los servidores, se deberán disponibilizar en la nube utilizando una plataforma como servicio (_[PAAS](https://en.wikipedia.org/wiki/Platform_as_a_service)_).

Se recomienda usar [Heroku](https://www.heroku.com/) ya que cuenta con todos los requerimientos tecnológicos pedidos anteriormente.

___

### UX

Se deberá presentar evidencia de prototipado del diseño de pantallas, las cuales serán convalidadas junto al ayudante a cargo

Para el diseño de la interfaz deben respetarse las guías de diseño propuestas por Google con _[Material Design](https://material.io/design/)_.

___

### Documentación


Se deberá entregar la siguiente documentación:

- Servicios Backend:
  - Documentación técnica: 
   - Instalación y configuración
   - Definición de arquitectura
   - Especificación de API REST: [OpenAPI](https://github.com/OAI/OpenAPI-Specification)

- Guia de usuario de la aplicacion disponible en [Github Pages](https://pages.github.com/)
- Guia de usuario del backoffice disponible en [Github Pages](https://pages.github.com/)
- Bitácora de proyecto
- [Análisis postmortem](https://en.wikipedia.org/wiki/Postmortem_documentation)

_Se espera que dicha documentación se elabore de manera incremental y que cada entrega parcial tenga parte de la misma._

___

## Instancias de entrega

| Instancia   |      Fecha      |  Alcance |
|----------|:-------------:|------:|
| Checkpoint 1 |  A definir | A definir |
| Checkpoint 2 |  A definir | A definir |
| Checkpoint 3 |  A definir | A definir |
| Checkpoint 4 |  A definir | A definir |
