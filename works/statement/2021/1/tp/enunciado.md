# SeedyFiuba

![Logo](seedyfiuba-logo.png)

## Indice

1. [Descripción](#descripción)
2. [Condiciones de aprobación](#condiciones-de-aprobación)
3. [Requisitos](#requisitos)
    1. [Epicas](#epicas)
       1. [Usuarios](#usuarios)
       2. [Perfil](#perfil)
       3. [Búsquedas](#búsquedas)
       4. [Patrocinador](#patrocinador)
       5. [Emprendedor](#emprendedor)
       6. [Veedor](#veedor)
       7. [Consultas](#consultas)
       8. [Calificaciones](#calificaciones)
       9. [Cobros y pagos](#cobros-y-pagos)
       10. [Notificaciones](#notificaciones)
       11. [Administración de usuarios](#administración-de-usuarios)
       12. [Administración de proyectos](#administración-de-proyectos)
       13. [Administración de servicios](#administración-de-servicios)
       14. [Métricas](#métricas)
       15. [Bonus](#bonus)
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

## Descripción

Una importante empresa ha decidido encargarnos el desarrollo de una plataforma digital llamada __SeedyFiuba__ dedicada a la financiación de proyectos de manera colaborativa [crowdfounding](https://es.wikipedia.org/wiki/Micromecenazgo).
El espíritu de esta plataforma es poder brindar una conexión entre personas que necesitan fondos para financiar sus proyectos con fines humanitarios (emprendedor social, o simplemente, emprendedor) y personas que quieran colaborar financiando los mismos (patrocinador).
Por otro lado, existen veedores que deben comprobar el correcto avance de los proyectos para garantizar que los fondos de aporte se estén utilizando con el fin adecuado.  

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

### Epicas

<!-- Registro y login OK -->

#### Usuarios
Como usuario quiero poder registrarme y tener una cuenta para poder acceder a los servicios de la plataforma.

Historias de usuario relacionadas:
 - [Registro](#registro-de-usuarios)
 - [Login con email y contraseña](#login-de-usuarios-con-usuario-y-contraseña)
 - [Login con proveedor de identidad federada](#login-de-usuarios-con-proveedores-de-identidad-federada)
 - [Recupero de contraseña](#recupero-de-contraseña)
 - [Registro Administradores](#registro-de-administradores)
 - [Login Administradores](#login-de-administradores)

<!-- Perfil OK -->

#### Perfil

Como usuario quiero poder editar mi perfil y acceder tanto a mi perfil como al de otros usuarios para conocer y que me conozcan otros usuarios.

Historias de usuario relacionadas:
 - [Edición de perfil](#edición-de-perfil)
 - [Visualización de perfil propio](#visualización-de-perfil-propio)
 - [Visualización de perfil de otros usuarios](#visualización-de-perfil-de-otros-usuarios)

<!-- Búsquedas OK -->

#### Búsquedas
Como patrocinador quiero poder realizar búsquedas de proyectos con distintos filtros para visualizar las proyectos que me interesen

Historias de usuario relacionadas:
 - [Búsquedas geográficas](#búsqueda-de-proyecto-geográficamente)
 - [Búsquedas por tipo de proyecto](#búsqueda-de-proyecto-por-tipo-de-proyecto)
 - [Búsquedas por estado](#búsqueda-de-proyecto-por-estado)
 - [Búsquedas por hashtag](#búsquedas-por-hashtag)
 
<!-- Patrocinador OK-->

#### Patrocinador

Como patrocinador quiero poder recibir recomendaciones de proyectos para encontrar de manera más simple las proyectos que me resulten interesantes.

Historias de usuario relacionadas:
 - [Patrocinio de proyecto](#patrocinio-de-proyecto)
 - [Recomendaciones de proyectos](#recomendaciones-de-proyectos)
 - [Histórico de patrocinios](#histórico-de-patrocinios)
 - [Proyectos favoritos](#proyectos-favoritos)

<!-- Emprendedor OK-->

#### Emprendedor

Como emprendedor quiero poder crear proyectos para que sean patrocinados y asi poder concretar el objetivo que tales tienen planificado.

Historias de usuario relacionadas:
 - [Alta de proyecto](#alta-de-proyectos)
 - [Edición de proyectos](#edición-de-proyectos)
 - [Listar proyectos](#listado-de-proyectos)
 - [Visualización de proyecto](#visualización-de-proyectos)
 - [Métricas de proyecto](#métricas-de-proyectos)
 - [Cancelación de proyecto](#cancelación-de-proyectos)

<!-- Veedores-->

#### Veedor

Como veedor quiero poder verificar el correcto avance del proyecto para garantizar que los fondos de aporte se estén utilizando con el fin adecuado.  

Historias de usuario relacionadas:
 - [Alta en proyecto](#alta-en-proyecto)
 - [Aceptar veeduría](#aceptar-veedoria)
 - [Listar proyectos](#listado-de-proyectos-veedor)


<!-- Consultas-->

#### Consultas

Como patrocinador quiero poder realizar consultas sobre un proyecto para esclarecer dudas.

Historias de usuario relacionadas:
 - [Consultas públicas](#consultas-públicas)
 - [Consultas privadas](#consultas-privadas)
 
 <!-- Calificaciones-->


#### Calificaciones

Como patrocinador o emprendedor quiero poder calificar una experiencia de colaboración que realicé para informar mi opinión.

Historias de usuario relacionadas:
 - [Calificación cuantitativa de proyecto](#calificación-cuantitativa-del-proyecto)
 - [Calificación cualitativa de proyecto](#calificación-cualitativa-del-proyecto)

<!-- Cobros y pagos-->

#### Cobros y pagos

Como usuario quiero cobrar o retirar pagos según corresponda para poder concretar el proyecto.

Historias de usuario relacionadas:
 - [Pagos de patrocinio](#pagos-de-patrocinio)
 - [Retiro de fondos](#retiro-de-fondos)
 
<!-- Notificaciones-->

#### Notificaciones

Como usuario quiero recibir notificaciones al dispositivo que utilizo para informarme sobre actividades en la plataforma

Historias de usuario relacionadas:
 - [Notificación por nuevo mensaje](#notificación-por-nuevo-mensaje)
 - [Notificación por flujo de proyecto](#notificación-por-flujo-de-proyecto)
 

<!-- Administración de usuarios -->

#### Administración de usuarios

Como administrador del sistema quiero poder gestionar los usuarios que estan registrados en el mismo para administrar su uso

Historias de usuario relacionadas:
 - [Listar usuarios del sistema](#listar-usuarios-del-sistema)
 - [Visualizar perfil de usuario](#visualizar-perfil-de-usuario)
 - [Bloquear usuario](#bloquear-usuario)
 - [Listar transacciones](#listar-transacciones)
 - [Carga de saldo](#carga-de-saldo)

<!-- Administración de proyectos -->

#### Administración de proyectos

Como administrador del sistema quiero poder gestionar las proyectos que se encuentran en el mismo  para administrar su uso

Historias de usuario relacionadas:
 - [Listado de proyectos](#listado-de-proyectos)
 - [Visualización de proyectos](#visualización-de-proyectos)
 - [Bloqueo de proyectos](#bloqueo-de-proyectos)


<!-- Administración de servicios -->

#### Administración de servicios

Como administrador del sistema quiero poder gestionar los servicios que se encuentran en el mismo  para administrar su uso

Historias de usuario relacionadas:
 - [Listado de servicios](#listado-de-servicios)
 - [Visualización de servicios](#visualización-de-servicios)
 - [Alta de servicios](#alta-de-servicios)
 - [Bloqueo de servicios](#bloquear-de-servicios)

<!-- Metricas -->

#### Métricas

Como administrador del sistema quiero poder visualizar métricas e información de la plataforma para administrar evaluar el estado del negocio

Historias de usuario relacionadas:
- [Métricas de usuarios](#métricas-de-usuarios)
- [Métricas de proyectos](#métricas-de-proyectos)
- [Métricas de transacciones](#métricas-de-transacciones)


#### Bonus

Las funcionalidades y requerimientos extras, están siendo definidas por el cliente, pero en una primer captura de requisitos surgió lo siguiente

Historias de usuario relacionadas:
- [Uso de reglas para configurar disponibilidad geográfica](#uso-de-reglas-para-configurar-disponibilidad-geográfica)
- [Implementación de sistema de votos para veedores](#votos-veedores)

___

### Historias de Usuario

<!-- Registro y login -->
___

#### Registro de usuarios

**Descripción**

- Como usuario no registrado quiero registrarme en la plataforma para acceder a las funcionalidades del sistema.  El usuario podrá utilizar los distintos perfiles en la cuenta: 

- Patrocinador: Es el usuario que realiza la búsqueda y financia proyectos. Un patrocinador puede financiar varios proyectos.
- Emprendedor: Es el usuario que realiza las proyectos de proyectos.
- Veedor: Es el usuario que realiza verificación de proyectos sin recibir una contribución financiera por esto.

_En el resto de los CA se utilizará la nomenclatura Usuario como un usuario registrado_

**Criterios de aceptación**

- CA 1: Registro exitoso
  - Cuando el registro del usuario es correcto.
  - Entonces el sistema creará un nuevo usuario con su perfil y billetera correspondiente. Luego permitirá el ingreso al sistema.
- CA 2: Obtención de ubicación (Para Patrocinadores)
  - Cuando el registro del usuario es correcto.
  - Entonces el sistema deberá solicitarle al usuario una ubicacion predeterminada
- CA 3: Obtención de perfil (Para Patrocinadores)
  - Cuando el registro del usuario es correcto.
  - Entonces el sistema deberá solicitarle al usuario una que tipos de proyectos son los que les causa mayor interés.
- CA 4: Falta uno o más campos obligatorios
  - Cuando el registro del usuario es incorrecto debido a un ingreso erróneo o faltante de campos. 
  - Entonces el sistema indicará los campos faltantes y/o erróneos y no permitirá el ingreso al sistema.
- CA 5: Registro fallido
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

#### Búsqueda de proyecto geográficamente

**Descripción**

- Como patrocinador quiero poder realizar búsquedas de proyectos geográficamente para visualizar las proyectos y así poder obtener más información sobre el mismo.

**Criterios de aceptación**
- CA 1: Filtrado por geolocalización
  - Cuando se realiza una búsqueda utilizando un filtrado por distancia en base a mi localización
  - Entonces se deberán retornar los proyectos que se encuentren a la distancia indicada.
- CA 2: Filtrado por ubicación 
  - Cuando se realiza una búsqueda utilizando un filtrado por ubicación en base a coordenadas. (Siendo estas coordenadas cualquier ciudad/país junto con un radio determinado)
  - Entonces se deberán retornar las proyectos que se encuentren en dicha área
- CA 3: Búsqueda sin resultados
  - Cuando se realiza una búsqueda utilizando un filtrado y no existen proyectos que cumplan tal condición
  - Entonces se deberá notificar al usuario que no existen resultados para su búsqueda.
 
___

#### Búsqueda de proyecto por tipo de proyecto

**Descripción**

- Como patrocinador quiero poder realizar búsquedas de proyectos por su tipo para visualizar las proyectos y así poder obtener más información sobre el mismo.

**Criterios de aceptación**
- CA 1: Filtrado por tipo de proyecto
  - Cuando se realiza una búsqueda utilizando un filtrado por tipo de proyecto
  - Entonces se deberán retornar las proyectos que cumplan dichos filtros.
- CA 2: Búsqueda sin resultados
  - Cuando se realiza una búsqueda utilizando un filtrado y no existen proyectos que cumplan tal condición
  - Entonces se deberá notificar al usuario que no existen resultados para su búsqueda.

___

#### Búsqueda de proyecto por estado

**Descripción**

- Como patrocinador quiero poder realizar búsquedas de proyectos por estado para visualizar las proyectos y así poder obtener más información sobre el mismo.

**Criterios de aceptación**
- CA 1: Filtrado estado 
  - Cuando se realiza una búsqueda utilizando como filtro una de las estados de un proyecto
  - Entonces se deberán retornar las proyectos que cumplan se encuentren en tal estado.
- CA 2: Búsqueda sin resultados
  - Cuando se realiza una búsqueda utilizando un filtrado y no existen proyectos que cumplan tal condición
  - Entonces se deberá notificar al usuario que no existen resultados para su búsqueda.

___

#### Búsquedas por hashtag

**Descripción**

- Como patrocinador quiero poder realizar búsquedas de proyectos utilizando hashtags y así poder obtener más información sobre el mismo.

**Criterios de aceptación**
- CA 1: Filtrado por hashtag 
  - Cuando se realiza una búsqueda utilizando como filtro un hashtag asociado al proyecto
  - Entonces se deberán retornar las proyectos que tengan el hashtag asociado.
- CA 2: Búsqueda sin resultados
  - Cuando se realiza una búsqueda utilizando un filtrado y no existen proyectos que cumplan tal condición
  - Entonces se deberá notificar al usuario que no existen resultados para su búsqueda.

<!-- Patrocinador -->

___

#### Patrocinio de proyecto

**Descripción**

- Como patrocinador quiero poder patrocinar un proyecto para que este pueda concretarse.

**Criterios de aceptación**

- CA 1: Solicitud de patrocinio
  - Cuando se solicita ingresar como patrocinador a un proyecto
  - Entonces se deberá indicar al usuario cuales son las condiciones del proyecto y como se realizará su aporte.
  
- CA 2: Patrocinio exitoso
  - Cuando se aceptan las condiciones para ser patrocinador. 
  - Entonces se deberá ejecutar el flujo correspondiente para establecerse como patrocinador.

- CA 3: Patrocinio fallido
- Cuando se aceptan las condiciones para ser patrocinador o el sistema rechaza su inscripción. 
- Entonces no se deberá el flujo de alta de patrocinador

___

#### Recomendaciones de proyectos
**Descripción**

- Como patrocinador quiero recibir recomendaciones afines a mi perfil para poder encontrar con mayor facilidad un proyecto al cual aportar.

**Criterios de aceptación**
- CA 1: Recomendaciones por perfil de usuario sin actividad
  - Cuando creo mi cuenta y quiero recibir recomendaciones 
  - Entonces se deberán retornar recomendaciones en base a mi ubicación y gustos elegidos al crear mi cuenta.
- CA 2: Recomendaciones por perfil de usuario con actividad
  - Cuando ya tengo actividad en mi cuenta y quiero recibir recomendaciones 
  - Entonces se deberán retornar recomendaciones en base a mi ubicación y gustos elegidos al crear mi cuenta, además se deberá tener en cuenta las últimas actividades del usuario

___

#### Histórico de patrocinios
**Descripción**
- Como patrocinador quiero poder visualizar todas los patrocinios de proyectos que realicé para así poder controlar mi historial
**Criterios de aceptación**
- CA 1: Listado de proyectos
  - Cuando un patrocinador quiera visualizar sus patrocinios realizados
  - Entonces se listarán todas las patrocinios que el patrocinador realizó, pudiendo filtrar los mismos
  
___

#### Proyectos favoritos
**Descripción**
- Como patrocinador quiero poder seleccionar proyectos de proyectos como favoritas para luego poder revisarlas con más detalle o compartirlas

**Criterios de aceptación**
- CA 1: Listado de proyectos
  - Cuando un patrocinador quiera visualizar sus proyectos favoritos
  - Entonces se listarán todos los proyectos que el patrocinador seleccionó como favoritos, pudiendo filtrar las mismas

___

#### Visualización de proyecto

**Descripción**

- Como patrocinador quiero poder visualizar una publicación de un proyecto para informarme sobre el mismo, ver sus fotos y/o videos, revisar sus características.

**Criterios de aceptación**

- CA 1: Visualización exitosa
  - Cuando ingresó a una proyecto como patrocinador
  - Entonces puedo visualizar su contenido multimedia, su descripción, sus características, fecha de creación y en qué etapa se encuentra.


<!-- Emprendedor-->

___

#### Alta de proyectos

**Descripción**
- Como emprendedor quiero poder dar de alta una publicación de mi proyecto para que realicen patrocinio del mismo y poder concretar su objetivo.

**Criterios de aceptación**
- CA 1: Alta exitosa
  - Cuando un emprendedor realice un nuevo proyecto. Se solicitarán datos como:
  
    - Titulo: Titulo principal del proyecto
    - Descripción: Descripción del proyecto
    - Hashtags asociados: Hashtags asociados para facilitar la búsqueda.
    - Tipo de proyecto: Se deberá elegir un tipo de proyecto dentro de los permitidos por la plataforma 
    - Fotos y/o videos: Material multimedia que acompañe 
    - Monto a recaudar: Monto total a recaudar 
    - Fecha de finalización: Fecha en la que el proyecto se determina finalizado.
    - Ubicacion: Ubicacion geografica del proyecto 
    - Otros .

  - Entonces este proyecto podrá ser visualizado y patrocinado por los patrocinadores. 
  Además se generará una wallet asociada al proyecto, la cual contendrá los fondos recaudados y se asignará de manera aleatoria una cantidad de veedores determinada por la plataforma, para controlar el avance del mismo. 

___

#### Edición de proyectos
**Descripción**
- Como emprendedor quiero poder modificar un proyecto para actualizar su contenido

**Criterios de aceptación**
- CA 1: Edición de datos exitosa
  - Cuando un emprendedor realice la edición de datos editables (Imágenes, título, descripción, etc)
  - Entonces al confirmar los nuevos cambios, estos se verán reflejados en el proyecto.
- CA 2: Edición de datos fallida
  - Cuando un emprendedor realice la edición de datos no editables (etapa, monto a recaudar)
  - Entonces el sistema deberá informarle que no es una operación permitida.

___

#### Listado de proyectos

**Descripción**
- Como emprendedor quiero poder listar mis proyectos realizadas para administrarlos

**Criterios de aceptación**
- CA 1: Usuario con proyectos
  - Cuando un emprendedor ingrese a "Mis proyectos"
  - Entonces podrá visualizar el acceso a todos sus proyectos
- CA 2: Usuario sin proyectos
  - Cuando un emprendedor ingrese a "Mis proyectos"
  - Entonces tendrá una pantalla vacía

___

#### Visualización de proyectos

**Descripción**
- Como emprendedor quiero poder visualizar un proyecto para revisar su contenido

**Criterios de aceptación**
- CA 1: Visualización de proyecto
  - Cuando un emprendedor ingrese a un proyecto publicado.
  - Entonces podrá visualizar el proyecto como si fuese un patrocinador

___

#### Métricas de proyectos

**Descripción**
- Como emprendedor quiero poder visualizar las métricas de un proyecto para revisar su evolución.

**Criterios de aceptación**
- CA 1: Visualización de métricas proyecto
  - Cuando un emprendedor ingrese a las métricas de un proyecto.
  - Entonces podra visualizar información asociada al proyecto como:
    - Cantidad de patrocinadores.
    - Cantidad de veces que fue seleccionado favorito.
    - Monto total recaudado.
    - Monto restante por recaudar.
    - Otros.

#### Cancelación de proyectos


**Descripción**
- Como emprendedor quiero poder cancelar un proyecto ya iniciado

**Criterios de aceptación**
- CA 1: Cancelación de proyexto exitosa
  - Cuando un emprendedor cancela un proyecto de manera exitosa
  - Entonces se deberá: 
    - Visualizar el estado del proyecto como cancelado.
    - Retornar los pagos a los patrocinadores.

___

<!-- Veedores-->

#### Alta en proyecto
**Descripción**
- Como veedor quiero poder ser dado de alta en proyectos para poder supervisarlo

**Criterios de aceptación**
- CA 1: Alta del rol de veedor
 - Cuando un usuario acepta las condiciones para ser registrado como veedor
 - Entonces podrá ser asignado a cumplir dicha función en los distintos proyectos que lo dispongan. 

___

#### Aceptar veedoria
**Descripción**
- Como veedor quiero poder aceptar ser dado de alta en proyectos para poder supervisarlo

**Criterios de aceptación**
- CA 1: Aceptación de nueva veeduría
 - Cuando un veedor acepta realizar la veeduría de un proyecto.
 - Entonces debe cumplir con las reglas de negocio dispuestas para garantizar el correcto avance del proyecto y el ingreso de fondos correspondiente. Quedando asociado al proyecto hasta la finalización del mismo.
- CA 2: Rechazo de nueva veeduría
  - Cuando un veedor acepta realizar la veeduría de un proyecto.
  - Entonces queda asociado al proyecto.

___

#### Listado de proyectos veedor
**Descripción**
- Como veedor quiero poder listar los proyectos que supervise.

**Criterios de aceptación**
- CA 1: Veedor sin proyectos
  - Cuando un veedor ingresa a la pantalla del listado de proyectos y no tiene ninguno asociado.
  - Entonces debe visualizar que no tiene proyectos asociados.

- CA 2: Veedor con proyectos
  - Cuando un veedor con proyectos asociados ingresa a la pantalla del listado de proyectos.
  - Entonces debe visualizar el listado de proyectos asociados.

<!-- Consultas-->

___

#### Consultas públicas

- Como patrocinador quiero poder realizar comentarios con consultas en una proyecto para poder consultarle al emprendedor mis dudas 

**Criterios de aceptación**

- CA 1: Consulta en proyecto
  - Cuando se realiza una consulta pública en una proyecto
  - Entonces todo aquel que entre a el proyecto podrá leerla y el emprendedor puede o no responderla

___

#### Consultas privadas
- Como patrocinador quiero poder realizar con consultas privadas a un emprendedor para poder consultarle mis dudas 

**Criterios de aceptación**

- CA 1: Mensaje directo
  - Cuando se realiza una consulta mediante el mensaje directo
  - Entonces solo los involucrados podrán leer la misma y se deberá mantener una conversación en tiempo real por mensajes


<!-- Calificaciones-->

___

#### Calificación cuantitativa del proyecto

**Descripción**
- Como patrocinador quiero poder realizar una calificación cuantitativa del proyecto para así poder brindar mi opinión del mismo

**Criterios de aceptación**
- CA 1: Calificación del proyecto
  - Cuando un patrocinador realiza una calificación cuantitativa de un proyecto en el cual aportó.
  - Entonces esta calificación afectará la calificación del proyecto 

___

#### Calificación cualitativa del proyecto

**Descripción**
- Como patrocinador quiero poder realizar una opinion mas detallada del proyecto para así poder brindar mi opinión del mismo

**Criterios de aceptación**

- CA 1: Calificación
  - Cuando un patrocinador realiza una calificación con comentarios de un proyecto en el cual aportó.
  - Entonces esta calificación luego podrá ser visualizada por otros patrocinadores.

 <!-- Cobros y pagos -->

___

#### Pagos de patrocinio

**Descripción**

- Como patrocinador quiero poder aportar en un proyecto.

**Criterios de aceptación**

- CA 1: Pago exitoso
  - Cuando se un proyecto demanda que sus patrocinadores realicen su aporte para dicha etapa.
  - Entonces se deberá ejecutar el flujo correspondiente para aplicar dicho pago y se deberá ver reflejado en mi billetera el descuento del monto del pago utilizando el smart contract que se definió 
- CA 2: Pago con error
  - Cuando sucede un error en el cobro del pago
  - Entonces no se deberá descontar de la billetera el monto del aporte.

___

#### Retiro de fondos

**Descripción**

- Como emprendedor quiero extraer los fondos que aportaron a un proyecto

**Criterios de aceptación**

- CA 1: Retiro de fondos exitoso
  - Cuando un emprendedor solicita un retiro de fondos del proyecto y se cumplen las regla de negocio pautadas.
  - Entonces se podrá realizar el retiro de fondos

- CA 2: Retiro de fondos fallido
  - Cuando un emprendedor solicita un retiro de fondos del proyecto y aún no se cumplen las regla de negocio pautadas.
  - Entonces NO se podrá realizar el retiro de fondos

 <!-- Notificaciones -->

___

#### Notificación por nuevo mensaje

**Descripción**
- Como usuario quiero poder recibir una notificación en caso de recibir un nuevo mensaje

**Criterios de aceptación**
- CA 1: Pantalla de notificaciones
  - Cuando un usuario recibe un mensaje por una consulta pública o privada.
  - Entonces deberá poder visualizar una notificacion en la aplicación para acceder a dicho mensaje 
- CA 2: Notificación push.
  - Cuando un usuario recibe un mensaje por una consulta pública o privada.
  - Entonces deberá recibir notificación push en la aplicación para acceder a dicho mensaje

___

#### Notificación por flujo de proyecto

**Descripción**
- Como usuario quiero poder recibir una notificación en caso de recibir un nuevo mensaje

**Criterios de aceptación**
- CA 1: Pantalla de notificaciones
  - Cuando un usuario tiene un proyecto asociado y este tiene un cambio en su flujo.
  - Entonces deberá poder visualizar una notificación en la aplicación para acceder a dicho mensaje 
- CA 2: Notificación push.
  - Cuando un usuario tiene un proyecto asociado y este tiene un cambio en su flujo.
  - Entonces deberá recibir notificación push en la aplicación para acceder a dicho mensaje
- CA 3: Notificación whatsapp:
  - Cuando un usuario tiene un proyecto asociado y este tiene un cambio en su flujo.
  - Entonces deberá poder recibir un mensaje de whatsapp para informarse de dicho cambio. 

___


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


<!-- Administración de proyectos -->

___

#### Listado de proyectos

**Descripción**
- Como administrador del sistema quiero poder listar todas las proyectos de proyectos que se encuentren en el sistema para acceder a ellas 

**Criterios de aceptación**
- CA 1: Listado con proyectos existentes
 - Cuando un administrador solicita visualizar el listado de proyectos en la plataforma
 - Entonces se deberán listar todos los proyectos existentes en el sistema
- CA 2: Listado con proyectos existentes utilizando filtros
 - Cuando un administrador solicita visualizar el listado de proyectos en la plataforma y aplica un filtrado 
 - Entonces se deberán listar todos los proyectos existentes en el sistema que cumplan con dichos filtros

___

#### Visualización de proyectos

**Descripción**
- Como administrador del sistema quiero poder visualizar un proyecto para verificar su contenido. 

**Criterios de aceptación**
- CA 1: Visualización de proyecto 
 - Cuando un administrador visualiza el un proyecto existente en la plataforma
 - Entonces se deberá poder visualizar todos sus datos asociados
___

#### Bloqueo de proyectos

**Descripción**
- Como administrador del sistema quiero poder bloquear un proyecto que se encuentren en el sistema para que no puedan acceder a la misma

**Criterios de aceptación**
- CA 1: Bloqueo exitoso 
 - Cuando un administrador realiza el bloqueo de un proyecto existente en la plataforma
 - Entonces se deberá visualizar que el proyecto está bloqueado y los usuarios no deberán poder acceder a él en la aplicación
- CA 2: Desbloqueo exitoso 
 - Cuando un administrador realiza el desbloqueo de un proyecto existente en la plataforma
 - Entonces se deberá visualizar que el proyecto no esta bloqueado y los usuarios deberán poder acceder a el en la aplicación
 
 
<!-- Administración de transacciones -->

___

#### Listar transacciones

**Descripción**

- Como administrador del sistema quiero poder listar todas las transacciones de patrocinios y sus pagos, como también los cobros, para poder controlar su uso de la plataforma

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

#### Visualización de servicios

**Descripción**
- Como administrador del sistema quiero visualizar la información de un servicio que se encuentre en el sistema para verificar que sea válida

**Criterios de aceptación**
- CA 1: Visualizacion de informacion de un servicio
 - Cuando un administrador ingresa a visualizar la información de un servicio
 - Entonces podrá encontrar datos como:
   - Estado del servicio.
   - Fecha de creación.
   - Descripción.
   - Otros.
___

#### Alta de servicios

**Descripción**
- Dado que existen requisitos de seguridad que solicitan tener un mecanismo para verificar la autenticidad de los servicios internos de la plataforma. Como administrador del sistema quiero poder dar de alta un nuevo servicio para que pueda acceder a los distintos servicios del sistema

**Criterios de aceptación**
- CA 1: Alta de Api Key
 - Cuando un administrador da de alta un nuevo servicio.
 - Entonces se genera un API key que deberá ser utilizada de manera interna en la plataforma para que un servicio pueda comunicarse con sus pares

___

#### Bloqueo de servicios

**Descripción**
- Como administrador del sistema quiero poder bloquear un nuevo servicio para que no pueda acceder a los distintos servicios del sistema

**Criterios de aceptación**
- CA 1: Alta de Api Key
 - Cuando un administrador bloquee un servicio.
 - Entonces se deberá bloquear su API key asociada y tal servicio no podrá comunicarse con sus pares.

<!-- Metricas -->

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
- CA 6: Metricas de recupero de contrasena  

___

#### Métricas de proyectos

**Descripción**
- Como administrador del sistema quiero poder visualizar las métricas de proyectos para medir el uso de la plataforma y sus servicios

**Criterios de aceptación**
- CA 1: Métricas de nuevos proyectos
- CA 2: Métricas de proyectos por estado
- CA 3: Métricas de proyectos por usuario

___

#### Métricas de transacciones

**Descripción**
- Como administrador del sistema quiero poder visualizar las métricas de transacciones para medir el uso de la plataforma y sus servicios

**Criterios de aceptación**
- CA 1: Metricas de pagos
- CA 2: Metricas de cobros

___

#### Uso de reglas para configurar disponibilidad geográfica

**Descripción**
- Se requiere brindar un servicio, el cual pueda consumir de una API externa el estado de la pandemia en una región geográfica en particular. Esta información junto a otras reglas definidas por los administradores, deberán definir si las proyectos que se encuentren en dicha región estan disponibles o no

**Criterios de aceptación**
- CA 1: A definir

___

#### Votos veedores

**Descripción**
- Se requiere realizar una serie de cambios en el smart contract que administra la gestión de pagos. 

**Criterios de aceptación**
- CA 1: A definir
- 
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

Junto con sus respectivos frameworks. La cátedra recomienda alguno de estos
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

Esta elección será responsabilidad del grupo y la misma deberá estar consensuada junto al ayudante. Además quedará justificada en la documentación técnica que formará parte del TP.

___

#### Backoffice web
Para el desarrollo del backoffice web se utilizará React como biblioteca.

___

#### Notificaciones push
Para el uso de notificaciones push se recomienda utilizar el servicio provisto por firebase [Cloud Messaging](https://firebase.google.com/docs/cloud-messaging?hl=es)

___

#### Contenido multimedia
Para el uso de contenido multimedia se recomienda utilizar el servicio provisto por firebase [Storage](https://firebase.google.com/docs/storage?hl=es)

___

#### Chat
Para el uso del chat en tiempo real se recomienda utilizar el servicio provisto por firebase [Real time database](https://firebase.google.com/docs/database?hl=es)

___

#### Mensajeria
Para el uso de mensajería se recomienda utilizar el servicio provisto por [Twilio](https://www.twilio.com/)

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

- [Prometheus](https://prometheus.io/)
- [Grafana](https://grafana.com/)
- [New Relic](https://blog.newrelic.com/product-news/simple-pricing/)
- [Datadog](https://www.datadoghq.com/blog/datadog-github-student-developer-pack/)

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

Se sugiere el uso de [TravisCI](https://travis-ci.org/) ó [GitHub Actions](https://github.com/features/actions), pero se podrá utilizar otro previa justificación.

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
| Checkpoint 0 |  22/4 | A definir |
| Checkpoint I |  13/5 | A definir |
| Checkpoint II |  10/6 | A definir |
| Checkpoint III |  8/7 | A definir |
| Entrega FInal |  29/7 | A definir |
