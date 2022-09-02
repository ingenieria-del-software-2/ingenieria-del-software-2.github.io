# FI-UBER

![Logo](logo.png)

## Indice

1. [Descripción](#descripción)
2. [Condiciones de aprobación](#condiciones-de-aprobación)
3. [Requisitos](#requisitos)
    1. [Épicas](#épicas)
       1. [Usuarios](#usuarios)
       2. [Perfil](#perfil)
       3. [Inicio de viaje](#inicio-de-viaje)
       4. [Viaje en curso](#viaje-en-curso)
       5. [Pago de viaje y wallets](#pago-de-viaje-y-wallets)
       6. [Servicio VIP](#servicio-vip)
       7. [Calificaciones](#calificaciones)
       8. [Notificaciones](#notificaciones)
       9. [Administración de usuarios](#administración-de-usuarios)
       10. [Administración de servicios](#administración-de-servicios)
       11. [Métricas](#métricas)
    2. [Historias de Usuario](#historias-de-usuario)
4. [Requisitos No Funcionales](#requisitos-no-funcionales)
    1. [Componentes](#componentes)
    2. [Tecnologías](#tecnologías)
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

Una importante empresa ha decidido encargarnos el desarrollo de una plataforma digital llamada FI-Uber para el transporte de personas.
El espíritu de esta plataforma es poder conectar personas que necesitan un servicio de transporte (en adelante llamados pasajeros) con proveedores(en adelante llamados choferes) de ese servicio en tiempo real.

La plataforma de conectar a las personas, procesar los pagos y proveer cierta seguridad en el servicio.


## Condiciones de aprobación

Cada historia de usuario tiene asociada una cierta cantidad de puntos, además, algunas son consideradas obligatorias y otras opcionales.
Para considerar aprobado el trabajo, se requiere cumplir una cierta cantidad de puntos asociados a las historias de usuario. 
Esta cantidad de puntos asociados está compuesto por los puntos provenientes de historias de usuario obligatorias y luego cada grupo deberá escoger entre las historias opcionales para llegar a cumplir con la cantidad de puntos.

Por ejemplo:
- Se requieren 100 puntos provenientes de historias de usuario para aprobar el trabajo.
- Existen 70 puntos que provienen de historias de usuario obligatorias. Todo grupo deberá cumplir con estas historias.
- Los 30 puntos restantes deberán provenir de historias optativas donde el grupo decidirá cuales implementar para llegar a tal numero.

## Requisitos

A continuación se describirán una serie de Épicas e Historias de usuario indicando la funcionalidad a cumplir por la plataforma. 

_En caso de que se observe alguna definición ambigua o la falta de la misma, esta debe ser aclarada y definida por el grupo junto a su corrector_ 

### Épicas

<!-- Registro y login -->

#### Usuarios
Como pasajero/chofer quiero poder registrarme y tener una cuenta para poder acceder a los servicios de la plataforma.

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

Como pasajero/chofer quiero poder editar mi perfil y acceder tanto a mi perfil como al perfil de mi chofer asignado(de manera acotada).

Historias de usuario relacionadas:
 - [Edición de perfil](#edición-de-perfil)
 - [Visualización de perfil propio](#visualización-de-perfil-propio)
 - [Visualización de perfil de otros usuarios](#visualización-de-perfil-de-otros-usuarios)

<!-- Inicio de viaje -->

#### Inicio de viaje

Como pasajero/chofer quiero poder iniciar un viaje

Historias de usuario relacionadas:
 - [Home](#home)
 - [Búsqueda de destino por dirección](#búsqueda-de-destino-por-dirección)
 - [Búsqueda de destino por nombre](#búsqueda-de-destino-por-nombre)
 - [Cotización del viaje](#cotización-del-viaje)
 - [Confirmación de viaje](#confirmación-de-viaje)
 - [Aceptar/rechazar un viaje](#aceptar-rechazar-un-viaje)
 - [Inicio del viaje](#inicio-del-viaje)
 - [Pantalla de espera](#pantalla-de-espera)
 - [Mensajería instantánea](#mensajería-instantánea)
 
<!-- viaje en curso -->

#### Viaje en curso

Como usuario quiero tener una experiencia amena, segura y guiada durante el viaje

Historias de usuario relacionadas:
 - [Guía de viaje](#guía-de-viaje)
 - [Aviso de fin](#aviso-de-fin)
 - [Denuncia de chofer](#denuncia-de-chofer)
 - [Cancelación de viaje](#cancelación-de-viaje)

#### Pago de viaje y wallets

Como pasajero quiero poder realizar el pago una vez finalizado el viaje. Como chofer quiero poder recibir el pago de los servicios prestados

Historias de usuario relacionadas:
 - [Carga de fondos](#carga-de-fondos)
 - [Ejecución de pago](#ejecución-de-pago)
 - [Retiro de fondos](#retiro-de-fondos)
 - [Utilización de stablecoin](#utilización-de-stablecoin)
 

#### Servicio VIP

Como pasajero/chofer quiero tener un servicio VIP disponibilizado en la app para poder viajar mejor/cobrar mas por mis viajes

Historias de usuario relacionadas:
 - [Suscripción a servicio vip como pasajero](#suscripción-a-servicio-vip-como-pasajero)
 - [Suscripción a servicio vip como chofer](#suscripción-a-servicio-vip-como-chofer)

 <!-- Calificaciones -->


#### Calificaciones

Como pasajero/chofer quiero poder calificar a los choferes/pasajeros

Historias de usuario relacionadas:
 - [Calificación cualitativa de un chofer](#calificación-cualitativa-de-un-chofer)
 - [Calificación cuantitativa de un chofer  ](#calificación-cuantitativa-de-un-chofer)
 - [Calificación cuantitativa de un pasajero  ](#calificación-cuantitativa-de-un-pasajero)
 - [Calificación cualitativa de un pasajero ](#calificación-cualitativa-de-un-pasajero)

#### Notificaciones

Como usuario quiero recibir notificaciones ante eventos importantes

Historias de usuario relacionadas:
 - [Notificación por recibo de pago](#notificación-por-recibo-de-pago)
 - [Notificación por chofer asignado](#notificación-por-chofer-asignado)
 - [Notificación por mensaje recibido](#notificación-por-mensaje-recibido)
 - [Notificación por posible viaje](#notificación-por-posible-viaje)


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
 - [Modificación de reglas de cotización](#modificación-de-reglas-de-cotización)
 - [Listado de servicios](#listado-de-servicios)
 - [Visualización de servicio](#visualización-de-servicio)
 - [Alta de servicio](#alta-de-servicio)
 - [Bloqueo de servicio](#bloqueo-de-servicio)

<!-- Métricas TODO -->

#### Métricas

Como administrador del sistema quiero poder visualizar métricas e información de la plataforma para evaluar el estado del negocio

Historias de usuario relacionadas:
- [Métricas de usuarios](#métricas-de-usuarios)
- [Métricas de viajes](#métricas-de-viajes)
- [Métricas de transacciones](#métricas-de-transacciones)


___

### Historias de Usuario

<!-- Registro y login -->

___

#### Registro de usuarios

**Descripción**

- Como usuario no registrado quiero registrarme en la plataforma para acceder a las funcionalidades del sistema. El usuario podrá utilizar los distintos perfiles en la cuenta, donde ambos perfiles no son excluyentes: 

- Pasajero: Es el usuario que solicita el viaje por medio de la aplicación y accede a las distintas funcionalidades generales de la misma. Ademas es quien realiza el pago por el viaje realizado

- Chofer: Es el usuario que acepta y realiza los viajes . También es quien cobra por estos viajes realizados.

_En el resto de los CA se utilizará la nomenclatura Usuario como un usuario registrado_

**Criterios de aceptación**

- CA 1: Registro exitoso
  - Cuando el registro del usuario es correcto.
  - Entonces el sistema creará un nuevo usuario con su perfil y billetera correspondiente. Luego permitirá el ingreso al sistema.
- CA 2: Obtención de ubicación 
  - Cuando el registro del usuario es correcto.
  - Entonces el sistema deberá solicitarle al usuario una ubicación predeterminada
- CA 3: Obtención de perfil (Para choferes)
  - Cuando el registro del usuario es correcto.
  - Entonces el sistema deberá solicitarle al usuario datos sobre su persona y el vehículo que utilizara. 
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


#### Home

**Descripción**

- Como usuario quiero poder realizar ingresar a la una pantalla principal que me provea acceso a distintos contenidos de utilidad

**Criterios de aceptación**

- CA 1: Home 
  - Cuando se accede la pantalla principal de la aplicación
  - Entonces se deberá retornar información de relevancia a mi actividad reciente
- CA 2: Error al cargar
  - Cuando se accede la pantalla principal de la aplicación y ocurre un error
  - Entonces se deberá notificar al usuario que ha sucedido un error

___


#### Búsqueda de destino por dirección

**Descripción**

- Como pasajero quiero poder realizar búsquedas de destinos utilizando la dirección del mismo y así poder iniciar el proceso de viaje

**Criterios de aceptación**

- CA 1: Búsqueda con resultados
  - Cuando se realiza una búsqueda de un destino con una dirección válida
  - Entonces se deberá retornar el resultado adecuado.
- CA 2: Búsqueda sin resultados
  - Cuando se realiza una búsqueda utilizando una dirección que no que cumpla tal condición
  - Entonces se deberá notificar al usuario que no existen resultados para su búsqueda.

___

#### Búsqueda de destino por nombre

**Descripción**

- Como pasajero quiero poder realizar búsquedas de destinos utilizando un nombre previamente agendado y así poder iniciar el proceso de viaje

**Criterios de aceptación**
- CA 1: Búsqueda con resultados
  - Cuando se realiza una búsqueda de un destino con un nombre agendado
  - Entonces se deberá retornar el resultado adecuado.
- CA 2: Búsqueda sin resultados
  - Cuando se realiza una búsqueda utilizando un nombre que no  que cumpla tal condición
  - Entonces se deberá notificar al usuario que no existen resultados para su búsqueda.

___

#### Cotización del viaje

**Descripción**

- Como pasajero quiero poder saber previamente cual es el precio estimado del viaje a realizar, sabiendo el destino seleccionado y la modalidad de viaje. 

**Criterios de aceptación**
- CA 1: Cotización de un viaje 
  - Cuando se dispone de un destino seleccionado y un modo de viaje 
  - Entonces se deberá retornar el precio correspondiente a este viaje, utilizando el servicio de cotización de viajes.

___

#### Confirmación de viaje

**Descripción**

- Como pasajero quiero poder confirmar la realización del viaje

**Criterios de aceptación**
- CA 1: Confirmación del viaje 
  - Cuando se realiza la confirmación del viaje
  - Entonces se deberá iniciar la solicitud de búsqueda de chofer para iniciar el viaje correspondiente

- CA 2: Rechazo del viaje 
  - Cuando se realiza el rechazo del viaje
  - Entonces se deberá informar que el usuario rechazo el viaje y se cancelará todo el proceso.

___

#### Aceptar rechazar un viaje

**Descripción**

- Como chofer quiero poder aceptar o rechazar la realización de un viaje  

**Criterios de aceptación**
- CA 1: Aceptación de un viaje 
  - Cuando el chofer es informado sobre las condiciones de un viaje (monto a cobrar, destino, tiempo estimado) y se realiza la aceptación del mismo
  - Entonces se deberá iniciar el proceso de viaje en curso, en donde se le notificará al pasajero que el chofer esta en camino y se visualizara la pantalla de espera.

- CA 2: Rechazo del viaje 
  - Cuando se realiza el rechazo de un  viaje
  - Entonces se deberá informar que el usuario rechazo el viaje y se cancelará todo el proceso.

___

#### Inicio del viaje

**Descripción**

- Como usuario quiero iniciar un viaje tanto sea en condición de pasajero como de chofer

**Criterios de aceptación**

- CA 1: Chofer en destino
  - Cuando el chofer es se encuentre en la ubicación de origen del pasajero
  - Entonces se le informará que el chofer ya se encuentra esperando y se habilitará el inicio del viaje

- CA 2: Viaje iniciado
  - Cuando se inicie el viaje
  - Entonces se deberá informarle al usuario el tiempo transcurrido ademas de mostrar la ubicación en tiempo real del auto y el recorrido a realizar

___

#### Pantalla de espera

**Descripción**

- Como usuario quiero estar informado del estado del viaje la espera del chofer previo al inicio del viaje

**Criterios de aceptación**

- CA 1: Chofer en destino
  - Cuando el chofer es se encuentre en viaje a la dirección de origen del pasajero
  - Entonces se le informará al usuario el recorrido en tiempo real del chofer

___

#### Mensajería instantánea

**Descripción**

- Como pasajero/chofer quiero poder enviar mensajes privados a otro chofer/pasajero de la plataforma durante un viaje iniciado

**Criterios de aceptación**

- CA 1: Mensaje directo
  - Cuando se realiza un mensaje directo
  - Entonces solo los involucrados podrán leer el mismo y se deberá mantener una conversación en tiempo real por mensajes
___


#### Guía de viaje

**Descripción**

- Como pasajero/chofer quiero poder visualizar el recorrido a realizar y conocer la posición actual.

**Criterios de aceptación**

- CA 1: Ubicación actual
  - Cuando el viaje se ha iniciado y el vehículo se ha movido
  - Entonces se actualiza la posición actual del vehículo con respecto al recorrido.
___

#### Aviso de fin

**Descripción**

- Como chofer quiero poder indicar que el viaje a finalizado

**Criterios de aceptación**

- CA 1: Finalización de viaje exitosa
  - Cuando se el vehículo se encuentra en la dirección de destino
  - Entonces el chofer podrá indicar que el viaje a finalizado y se realizará el cobro al pasajero.

- CA 2: Finalización de viaje fallida
  - Cuando se el vehículo aún no se encuentra en la dirección de destino
  - Entonces el chofer no podrá indicar que el viaje a finalizado.
___

#### Denuncia de chofer

**Descripción**

- Como pasajero quiero poder denunciar a un chofer durante un viaje si su conducta me parece incorrecta

**Criterios de aceptación**

- CA 1: Mensaje directo
  - Cuando se realiza un mensaje directo
  - Entonces solo los involucrados podrán leer el mismo y se deberá mantener una conversación en tiempo real por mensajes
___

#### Cancelación de viaje

**Descripción**

- Como pasajero/chofer quiero poder cancelar un viaje.

**Criterios de aceptación**

- CA 1: Cancelacíon chofer/pasajero viaje no iniciado
  - Cuando el viaje no ha iniciado y es cancelado por el chofer/pasajero
  - Entonces se notificará se notificará al pasajero/chofer que el mismo fue cancelado
  - Y se cobrará el valor del viaje a favor del pasajero/chofer.

- CA 2: Cancelacíon pasajero viaje iniciado
  - Cuando el viaje a iniciado y el pasajero decide cancelar el viaje
  - Entonces se cobrará al pasajero el valor del viaje hasta la ubicación actual al momento de
    cancelar aplicando las reglas de cotización correspondientes.

- CA 3: Cancelacíon chofer viaje iniciado
  - Cuando el viaje a iniciado y el chofer decide cancelar el viaje
  - Entonces se reembolsará al pasajero el valor total viaje.

___


#### Carga de fondos

**Descripción**

- Como pasajero quiero poder ingresar fondos en mi wallet para así poder utilizarlos en mis futuros viajes.

**Criterios de aceptación**

- CA 1: Carga exitosa
  - Cuando se realiza una carga de fondos de manera exitosa
  - Entonces se verá reflejado en la wallet del usuario el nuevo monto correspondiente.
___

#### Ejecución de pago

**Descripción**

- Como pasajero quiero realizar el pago correspondiente del viaje recientemente finalizado

**Criterios de aceptación**

- CA 1: Ejecución de pago exitosa
  - Cuando se un viaje finaliza de manera exitosa
  - Entonces se le descontará el monto correspondiente a la billetera del pasajero y luego se hará un deposito a la cuenta del chofer. **Se debe tener en cuenta que a este deposito se le descontará la comisión de la plataforma.**
___

#### Retiro de fondos

**Descripción**

- Como chofer quiero extraer los fondos que fueron recolectados de los pagos de viajes realizados.

**Criterios de aceptación**

- CA 1: Retiro de fondos exitoso
  - Cuando un chofer solicita un retiro de fondos y se cumplen las regla de negocio pautadas.
  - Entonces se podrá realizar el retiro de fondos a la wallet indicada por el chofer.

- CA 2: Retiro de fondos fallido
  - Cuando un chofer solicita un retiro de fondos y aún no se cumplen las regla de negocio pautadas.
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
  - Cuando un administrador envía saldo a una usuario a traves del sistema
  - Entonces el pago se ejecuta a traves de una stablecoin

___

#### Suscripción a servicio vip como pasajero

**Descripción**
- Como pasajero quiero poder suscribirme a un servicio VIP para poder tener mejor confort en mis viajes.

**Criterios de aceptación**
- CA 1: Suscripción exitosa
  - Cuando un pasajero se inscribe de manera exitosa al servicio VIP
  - Entonces la plataforma le realizará el cobro correspondiente a este servicio y a partir de ese momento el pasajero puede solicitar viajes en modalidad VIP.

___
 
#### Suscripción a servicio vip como chofer

**Descripción**
- Como chofer quiero poder suscribirme a un servicio VIP para poder brindar mis servicios en este tipo de viajes.

**Criterios de aceptación**
- CA 1: Suscripción exitosa
  - Cuando un chofer se inscribe de manera exitosa al servicio VIP
  - Entonces la plataforma le realizará el cobro correspondiente por brindar este servicio y a partir de ese momento el chofer puede realizar viajes en modalidad VIP.
___


#### Calificación cuantitativa de un chofer

**Descripción**
- Como pasajero quiero poder realizar una calificación cuantitativa de un chofer para así poder brindar mi opinión de este.

**Criterios de aceptación**
- CA 1: Calificación de chofer
  - Cuando un pasajero realiza una calificación cuantitativa de un chofer. Por ejemplo, utilizando una escala del 1 al 5
  - Entonces esta calificación afectará la calificación del chofer 

___

#### Calificación cualitativa de un chofer

**Descripción**
- Como pasajero quiero poder realizar una opinion mas detallada del chofer para así poder brindar mi opinión de este.

**Criterios de aceptación**

- CA 1: Calificación
  - Cuando un pasajero realiza una calificación utilizando comentarios para un chofer.
  - Entonces esta calificación luego podrá ser visualizada por otros usuarios.

___


#### Calificación cuantitativa de un pasajero

**Descripción**
- Como chofer quiero poder realizar una calificación cuantitativa de un pasajero para así poder brindar mi opinión de este.

**Criterios de aceptación**
- CA 1: Calificación de pasajero
  - Cuando un pasajero realiza una calificación cuantitativa de un pasajero. Por ejemplo, utilizando una escala del 1 al 5
  - Entonces esta calificación afectará la calificación del pasajero 
___

#### Calificación cualitativa de un pasajero

**Descripción**
- Como chofer quiero poder realizar una opinion mas detallada del pasajero para así poder brindar mi opinión de este.

**Criterios de aceptación**

- CA 1: Calificación
  - Cuando un pasajero realiza una calificación utilizando comentarios para un chofer.
  - Entonces esta calificación luego podrá ser visualizada por otros usuarios.

___

#### Notificación por recibo de pago

**Descripción**
- Como chofer quiero poder recibir una notificación en caso de recibir un nuevo pago

**Criterios de aceptación**
- CA 1: Pantalla de notificaciones
  - Cuando un chofer recibe un nuevo pago
  - Entonces deberá poder visualizar una notificación en la aplicación para acceder a la información del mismo. 
- CA 2: Notificación push.
  - Cuando un chofer recibe un nuevo pago 
  - Entonces deberá recibir notificación push en la aplicación para acceder a la información del mismo.
___


#### Notificación por chofer asignado

**Descripción**
- Como pasajero quiero poder recibir una notificación en caso de que mi viaje ya posea un chofer asignado

**Criterios de aceptación**
- CA 1: Pantalla de notificaciones
  - Cuando un pasajero tiene un viaje iniciado y este ya posee un chofer asignado
  - Entonces deberá poder visualizar una notificación en la aplicación para acceder a la información del mismo. 
- CA 2: Notificación push.
  - Cuando un pasajero tiene un viaje iniciado y este ya posee un chofer asignado
  - Entonces deberá recibir notificación push en la aplicación para acceder a la información del mismo.
___

#### Notificación por mensaje recibido

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


#### Notificación por posible viaje

**Descripción**
- Como chofer quiero poder recibir una notificación en caso de recibir una nueva propuesta de viaje

**Criterios de aceptación**
- CA 1: Pantalla de notificaciones
  - Cuando un chofer recibe una nueva propuesta de viaje
  - Entonces deberá poder visualizar una notificación en la aplicación para acceder a la información del mismo. 
- CA 2: Notificación push.
  - Cuando un chofer recibe una nueva propuesta de viaje 
  - Entonces deberá recibir notificación push en la aplicación para acceder a la información del mismo.
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

#### Visualizar métricas de usuario

**Descripción**
- Como administrador del sistema quiero poder visualizar métricas de un usuario del sistema para verificar su comportamiento

**Criterios de aceptación**
- CA 1: Panel de métricas de un usuario
  - Cuando un administrador del sistema ingrese a la sección de métricas de un usuario
  - Entonces se visualizarán todos las métricas relevantes de un usuario del sistema. Por ejemplo, viajes realizados, viajes cancelados, calificaciones realizadas, etc.

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

___

#### Modificación de reglas de cotización

**Descripción**
- Como administrador del sistema quiero poder tener flexibilidad a la hora de establecer los precios . Para esto se exige que el cálculo del precio sea realizado utilizando un sistema de reglas.

El servidor deberá permitir la modificación y guardado de las mismas manteniendo un registro de cambios. Además, deberá permitir al usuario hacer pruebas con las reglas escritas previo a quedar efectivas en la cotización de los viajes.

**Criterios de aceptación**
- CA 1: Reglas a establecer
  - Las reglas deben permitir el cálculo del precio del viaje utilizando, entre otras cosas, la siguientes variables:

  * Características del conductor (viajes en el día, viajes en el mes, antigüedad)
  * Características del pasajero (viajes en el día, viajes en el mes, antigüedad, saldo)
  * Método de pago
  * Características del viaje (duración, distancia, posición geográfica, fecha y hora)
  * Cantidad de viajes que se realizaron en la última ventana temporal (Hora, 30 mins, 10 mins)
  * Día y horario de la realización del viaje
  * Tiempo de espera del pasajero para:
    * Que un conductor le confirme el viaje
    * Que el conductor llegue a buscarlo

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

#### Bloqueo de servicio

**Descripción**
- Como administrador del sistema quiero poder bloquear un nuevo servicio para que no pueda acceder a los distintos servicios del sistema

**Criterios de aceptación**

- CA 1: Bloqueo de Api Key
  - Cuando un administrador bloquee un servicio.
  - Entonces se deberá bloquear su API key asociada y tal servicio no podrá comunicarse con sus pares.

___

#### Métricas de usuarios

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

#### Métricas de viajes

**Descripción**
- Como administrador del sistema quiero poder visualizar las métricas de viajes para medir el uso de la plataforma y sus servicios

**Criterios de aceptación**
- CA 1: Métricas de nuevos viajes
- CA 2: Métricas de duración de viajes
- CA 3: Métricas de tipos de viaje 

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
_Las tecnologías a utilizar son detalladas en la sección [tecnologías](#tecnologías)_

### Backoffice web

Un backoffice web, el cual será utilizado por los administradores. 

_Las tecnologías a utilizar son detalladas en la sección [tecnologías](#tecnologías)_

### Servicios backend

Distintos servicios de backend para brindar soporte a la plataforma. Como enfoque se recomienda orientar estos servicios hacia una arquitectura de [microservices](https://martinfowler.com/articles/microservices.html). Dicha arquitectura propuesta deberá ser convalidada junto al ayudante. 
_Las tecnologías a utilizar son detalladas en la sección [tecnologías](#tecnologías)_

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


##### Mensajería whatsapp

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

- Guía de usuario de la aplicación disponible en [Github Pages](https://pages.github.com/)
- Guía de usuario del backoffice disponible en [Github Pages](https://pages.github.com/)
- Bitácora de proyecto
- [Análisis postmortem](https://en.wikipedia.org/wiki/Postmortem_documentation)

_Se espera que dicha documentación se elabore de manera incremental y que cada entrega parcial tenga parte de la misma._

## Instancias de entrega

| Instancia   |      Fecha      |  Alcance |
|----------|:-------------:|------:|
| Checkpoint 1 |  A definir | A definir |
| Checkpoint 2 |  A definir | A definir |
| Checkpoint 3 |  A definir | A definir |
| Entrega Final |  A definir | A definir |
