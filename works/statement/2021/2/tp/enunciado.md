# Ubademy

![Logo](ubademy.png)

## Indice

1. [Descripción](#descripción)
2. [Condiciones de aprobación](#condiciones-de-aprobación)
3. [Requisitos](#requisitos)
    1. [Epicas](#epicas)
       1. [Usuarios](#usuarios)
       2. [Perfil](#perfil)
       3. [Búsquedas](#búsquedas)
       4. [Estudiante](#estudiante)
       5. [Creador](#creador)
       6. [Colaborador](#colaborador)
       7. [Examen](#Examen)
       8. [Curso](#Curso)
       8. [Consultas](#consultas)
       9. [Calificaciones](#calificaciones)
       10. [Cobros y pagos](#cobros-y-pagos)
       11. [Notificaciones](#Notificaciones)
       12. [Administración de usuarios](#administración-de-usuarios)
       13. [Administración de cursos](#administración-de-cursos)
       14. [Administración de servicios](#administración-de-servicios)
       15. [Métricas](#métricas)
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
6. [Historias requeridas y optativas](#historias-requeridas-y-optativas)
    1. [Requeridas](#requeridas)
    2. [Optatitvas](#optativas)
7. [Material de referencia](#material-de-referencia)

## Descripción

Una importante empresa ha decidido encargarnos el desarrollo de una plataforma digital llamada Ubademy dedicada a la generación de cursos en línea, con el fin de brindar oferta de educación masiva a la población.
El espíritu de esta plataforma es poder brindar una conexión entre personas que generen quieran aprender nuevos contenidos (estudiantes) y las personas que lo generen (creadores).

Los cursos pueden ser tanto gratuitos como pagos y el creador del contenido obtendrá una remuneración en este último caso. Existen distintos tipos de suscripciones, las cuales habilitan a acceder a distintos contenidos.


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

<!-- Registro y login TODO -->

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

<!-- Perfil TODO -->

#### Perfil

Como usuario quiero poder editar mi perfil y acceder tanto a mi perfil como al de otros usuarios para conocer y que me conozcan otros usuarios.

Historias de usuario relacionadas:
 - [Edición de perfil](#edición-de-perfil)
 - [Visualización de perfil propio](#visualización-de-perfil-propio)
 - [Visualización de perfil de otros usuarios](#visualización-de-perfil-de-otros-usuarios)

<!-- Búsquedas TODO -->

#### Búsquedas
Como estudiante quiero poder realizar búsquedas de cursos con distintos filtros para visualizar los que me interesen

Historias de usuario relacionadas:
 - [Búsquedas por categorias](#búsqueda-de-curso-por-categorias)
 - [Búsquedas por suscripción](#búsqueda-de-curso-por-suscripción)
 - [Búsquedas por texto](#búsquedas-por-texto)
 - [Recomendación de cursos](#recomendación-de-cursos)
 
<!-- Estudiante TODO-->

#### Estudiante

Como Estudiante quiero poder suscribirme a distintas suscripciones e inscribirme a cursos que me resulten de interes.

Historias de usuario relacionadas:
 - [Inscripción a suscripción](#inscripción-a-suscripción)
 - [Modificación de suscripción](#modificación-de-suscripción)
 - [Inscripción a curso](#inscripción-a-curso)
 - [Desinscripción a curso](#desinscripción-a-curso)
 - [Histórico de cursos](#histórico-de-cursos)
 - [Cursos favoritos](#cursos-favoritos)

<!-- Creador TODO-->

#### Creador

Como creador quiero poder crear cursos para que sean realizados por estudiantes y asi poder concretar brindar dichos conocimientos y/o obtener ganancias por esto.

Historias de usuario relacionadas:
 - [Creación de curso](#creación-de-curso)
 - [Edición de curso](#edición-de-curso)
 - [Listar cursos](#listado-de-cursos)


 <!-- Colaborador TODO-->

#### Colaborador

Como colaborador quiero poder participar en distintos cursos, pudiendo responder consultas y realizar evaluaciones.

Historias de usuario relacionadas:
 - [Alta de colaborador en curso](#alta-de-colaborador-en-curso)
 - [Baja de colaborador en curso](#alta-de-colaborador-en-curso)
 - [Listado de colaboraciones](#listado-de-colaboraciones)

 <!-- Examenes TODO-->

#### Examen

- [Creación de examen](#creación-de-examen)
- [Edición de examen](#edición-de-examen)
- [Corrección de examen](#corrección-de-examen)
- [Listado de examenes](#listado-de-examenes)
- [Visualización de examen](#visualización-de-examen)
- [Completar examen](#completar-examen)


 <!-- Cursos TODO-->

#### Cursos

 - [Visualización de curso](#visualización-de-curso)
 - [Listado de alumnos](#listado-de-alumnos)
 - [Listado de examenes](#listado-de-examenes)
 - [Listado de profesores](#listado-de-profesores)
 - [Certificado de curso aprobado](#certificado-de-curso-aprobado)
 - [Cancelación de curso](#cancelación-de-curso)
 - [Métricas de curso](#métricas-de-curso)

<!-- Consultas TODO-->

#### Consultas

Como estudiante quiero poder realizar consultas sobre un curso para esclarecer dudas.

Historias de usuario relacionadas:
 - [Consultas públicas](#consultas-públicas)
 - [Mensajes privados](#mensajes-privados)
 
 <!-- Calificaciones TODO-->


#### Calificaciones

Como estudiante quiero poder calificar una experiencia de cursada que realicé para informar mi opinión.

Historias de usuario relacionadas:
 - [Calificación cuantitativa de curso](#calificación-cuantitativa-del-curso)
 - [Calificación cualitativa de curso](#calificación-cualitativa-del-curso)

<!-- Cobros y pagos TODO-->

#### Cobros y pagos

Como usuario quiero cobrar o retirar fondos según corresponda.

Historias de usuario relacionadas:
 - [Pagos de suscripción](#pago-de-suscripción)
 - [Retiro de fondos](#retiro-de-fondos)
 
<!-- Notificaciones TODO-->

#### Notificaciones

Como usuario quiero recibir notificaciones al dispositivo que utilizo para informarme sobre actividades en la plataforma

Historias de usuario relacionadas:
 - [Notificación por nuevo mensaje](#notificación-por-nuevo-mensaje)
 - [Notificación por flujo de curso](#notificación-por-flujo-de-curso)
 - [Notificación por flujo de examen](#notificación-por-flujo-de-examen)
 

<!-- Administración de usuarios TODO -->

#### Administración de usuarios

Como administrador del sistema quiero poder gestionar los usuarios que estan registrados en el mismo para administrar su uso

Historias de usuario relacionadas:
 - [Listar usuarios del sistema](#listar-usuarios-del-sistema)
 - [Visualizar perfil de usuario](#visualizar-perfil-de-usuario)
 - [Bloquear usuario](#bloquear-usuario)
 - [Listar transacciones](#listar-transacciones)
 - [Carga de saldo](#carga-de-saldo)

<!-- Administración de cursos TODO -->

#### Administración de cursos

Como administrador del sistema quiero poder gestionar los cursos que se encuentran en el mismo  para administrar su uso

Historias de usuario relacionadas:
 - [Listado de cursos](#listado-de-cursos)
 - [Visualización de curso](#visualización-de-curso)
 - [Bloqueo de curso](#bloquear-curso)


<!-- Administración de servicios TODO -->

#### Administración de servicios

Como administrador del sistema quiero poder gestionar los servicios que se encuentran en el mismo  para administrar su uso

Historias de usuario relacionadas:
 - [Listado de servicios](#listado-de-servicios)
 - [Visualización de servicio](#visualización-de-servicio)
 - [Alta de servicio](#alta-de-servicio)
 - [Bloqueo de servicio](#bloquear-de-servicio)

<!-- Metricas TODO -->

#### Métricas

Como administrador del sistema quiero poder visualizar métricas e información de la plataforma para administrar evaluar el estado del negocio

Historias de usuario relacionadas:
- [Métricas de usuarios](#métricas-de-usuarios)
- [Métricas de cursos](#métricas-de-cursos)
- [Métricas de transacciones](#métricas-de-transacciones)

___

### Historias de Usuario

<!-- Registro y login -->
___

#### Registro de usuarios

**Descripción**

- Como usuario no registrado quiero registrarme en la plataforma para acceder a las funcionalidades del sistema.  El usuario podrá utilizar los distintos perfiles en la cuenta: 

- Estudiante: Es el usuario que realiza el pago por una suscripción y se inscribe a los cursos de su interes. Un estudiante puede estar inscripto en varios cursos.
- Creador: Es el usuario que realiza las creación de cursos, junto con su contenido. También se encarga de la creación y correción de exámenes  y la administración de colaboradores  
- Colaborador: Es el usuario que realiza corrección de exámenes y responde consultas sin ser el creador del curso. 

_En el resto de los CA se utilizará la nomenclatura Usuario como un usuario registrado_

**Criterios de aceptación**

- CA 1: Registro exitoso
  - Cuando el registro del usuario es correcto.
  - Entonces el sistema creará un nuevo usuario con su perfil y billetera correspondiente. Luego permitirá el ingreso al sistema.
- CA 2: Obtención de ubicación (Para Estudiantes)
  - Cuando el registro del usuario es correcto.
  - Entonces el sistema deberá solicitarle al usuario una ubicación predeterminada
- CA 3: Obtención de perfil (Para Estudiantes)
  - Cuando el registro del usuario es correcto.
  - Entonces el sistema deberá solicitarle al usuario una que tipos de cursos son los que les causa mayor interés.
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


#### Búsqueda de curso por categorias

**Descripción**

- Como estudiante quiero poder realizar búsquedas de cursos por su categoria para visualizar los cursos y así poder obtener más información sobre los mismos.

**Criterios de aceptación**
- CA 1: Filtrado por categoria
  - Cuando se realiza una búsqueda utilizando un filtrado por categoria
  - Entonces se deberán retornar los cursos que cumplan dichos filtros.
- CA 2: Búsqueda sin resultados
  - Cuando se realiza una búsqueda utilizando un filtrado y no existen cursos que cumplan tal condición
  - Entonces se deberá notificar al usuario que no existen resultados para su búsqueda.
  
___

#### Búsqueda de curso por suscripción

**Descripción**

- Como estudiante quiero poder realizar búsquedas de cursos por tipo de suscripción para visualizar los cursos y así poder obtener más información sobre el mismo.

**Criterios de aceptación**
- CA 1: Filtrado etapa 
  - Cuando se realiza una búsqueda utilizando como filtro el tipo de suscripción de un curso
  - Entonces se deberán retornar los cursos que cumplan se encuentren en dicha suscripción.
- CA 2: Búsqueda sin resultados
  - Cuando se realiza una búsqueda utilizando un filtrado y no existen cursos que cumplan tal condición
  - Entonces se deberá notificar al usuario que no existen resultados para su búsqueda.
  
___

#### Búsquedas por texto

**Descripción**

- Como estudiante quiero poder realizar búsquedas de cursos utilizando texto libre y así poder obtener más información sobre el mismo.

**Criterios de aceptación**
- CA 1: Filtrado por texto libre 
  - Cuando se realiza una búsqueda utilizando como filtro texto libre
  - Entonces se deberán retornar los cursos que tengan alguna coincidencia en su titulo o descripción.
- CA 2: Búsqueda sin resultados
  - Cuando se realiza una búsqueda utilizando un filtrado y no existen cursos que cumplan tal condición
  - Entonces se deberá notificar al usuario que no existen resultados para su búsqueda.


___

#### Recomendación de cursos

**Descripción**
- Como estudiante quiero por recibir recomendaciones de cursos a realizar según mis intereses y mi ubicación geográfica.

**Criterios de aceptación**
- CA 1: Recomendación por zona geografica
  - Se requiere brindar un servicio en el que dado una serie de reglas definidas por los administradores, deberán definir si los cursos que se encuentren en dicha región estan disponibles o no
- CA 1: Recomendación por intereses
  - Se requiere recibir recomendaciones de cursos a realizar según mis intereses definidos al momento de registrarse y la intereacción con la plataforma

<!-- Estudiante -->

___

#### Inscripción a suscripción

**Descripción**

- Como estudiante quiero poder seleccionar un tipo de suscripción para así poder acceder a distintos tipos de cursos.

**Criterios de aceptación**

- CA 1: Solicitud de inscripción
  - Cuando se solicita una inscribirse a un tipo de suscripción
  - Entonces se deberá indicar al usuario cuales son las condiciones de esta suscripción.
  - En caso de que no desee ninguna suscripción se le asignara una por defecto

- CA 2: Inscripción exitosa
  - Cuando se aceptan las condiciones para la inscripción a la suscripción. 
  - Entonces se deberá ejecutar el flujo correspondiente para establecer dicha suscripción.

- CA 3: Inscripción fallida
- Cuando se rechacen las condiciones para la inscripción a la suscripción o el sistema rechaza su inscripción. 
- Entonces no se deberá el flujo de alta de suscripción

___

#### Modificación de suscripción

**Descripción**

- Como estudiante quiero poder modificar el tipo de suscripción para así poder acceder a distintos tipos de cursos.

**Criterios de aceptación**

- CA 1: Solicitud de modificación
  - Cuando se solicita una Modificación a una suscripción
  - Entonces se deberá indicar al usuario cuales son las condiciones de esta modificación.

- CA 2: Modificación exitosa
  - Cuando se aceptan las condiciones para la modificación a la suscripción. 
  - Entonces se deberá ejecutar el flujo correspondiente para establecer dicha modificación.

- CA 3: Modificación fallida
- Cuando se rechacen las condiciones para la modificación de la suscripción o el sistema rechaza esta. 
- Entonces no se deberá el flujo de modificación de suscripción

___


#### Inscripción a curso

**Descripción**

- Como estudiante quiero poder seleccionar un curso para así poder acceder a sus contenidos y evaluaciones.

**Criterios de aceptación**

- CA 1: Solicitud de inscripción
  - Cuando se solicita una inscribirse a un curso
  - Entonces se deberá indicar al usuario cuales son las condiciones de esta inscripción.


- CA 2: Inscripción exitosa
  - Cuando se aceptan las condiciones para la inscripción al curso. 
  - Entonces se deberá ejecutar el flujo correspondiente para establecer dicha inscripción.

- CA 3: Inscripción fallida
- Cuando se rechacen las condiciones para la inscripción a la suscripción o el sistema rechaza su inscripción. 
- Entonces no se deberá el flujo de inscripción en el curso

___

#### Desinscripción a curso

**Descripción**

- Como estudiante quiero poder desinscribirme de un curso para así no acceder a sus contenidos y evaluaciones.

**Criterios de aceptación**

- CA 1: Solicitud de desinscripción
  - Cuando se solicita una desinscripción a un curso
  - Entonces se deberá indicar al usuario cuales son las condiciones de esta desinscripción.


- CA 2: Desinscripción exitosa
  - Cuando se aceptan las condiciones para la desinscripción al curso. 
  - Entonces se deberá ejecutar el flujo correspondiente para establecer dicha desinscripción.

- CA 3: Desinscripción fallida
- Cuando se rechacen las condiciones para la desinscripción a la suscripción o el sistema rechaza su desinscripción. 
- Entonces no se deberá el flujo de desinscripción en el curso

___

#### Histórico de cursos

**Descripción**
- Como estudiante quiero poder visualizar todos los cursos que realicé para así poder controlar mi historial

**Criterios de aceptación**
- CA 1: Listado de cursos
  - Cuando un estudiante quiera visualizar sus cursos realizados
  - Entonces se listarán todos los cursos que el estudiante realizó, pudiendo filtrar los mismos

___

#### Cursos favoritos

**Descripción**
- Como estudiante quiero poder seleccionar cursos como favoritos para luego poder revisarlos con más detalle o compartirlos

**Criterios de aceptación**
- CA 1: Listado de cursos
  - Cuando un estudiante quiera visualizar sus cursos favoritos
  - Entonces se listarán todos los cursos que el estudiante seleccionó como favoritos, pudiendo filtrar las mismos


<!-- Creador -->
___

#### Creación de curso

**Descripción**
- Como creador quiero poder crear un curso para que realicen que los estudiantes se inscriban al mismo y poder obtener o no ganancias por esto.

**Criterios de aceptación**
- CA 1: Creación exitosa
  - Cuando un creador realice un nuevo curso. Se solicitarán datos como:
  
    - Titulo: Titulo principal del curso
    - Descripción: Descripción del curso
    - Hashtags asociados: Hashtags asociados para facilitar la búsqueda.
    - Tipo de curso: Se deberá elegir un tipo de curso dentro de los permitidos por la plataforma 
    - Fotos y/o videos: Material multimedia que acompañe 
    - Exámenes: Cantidad de exámenes a realizar
    - Suscripción: Tipo de suscripción asociada
    - Ubicacion: Ubicación geografica del curso 
    - Otros .

  - Entonces este curso podrá ser visualizado y realizado por los estudiantes. 
- CA 2: Creación fallida
  - Cuando un creador realice un nuevo curso con información faltante y/o erronea.
  - Entonces el sistema deberá informarle que no es una operación permitida.

___

#### Edición de curso

**Descripción**
- Como creador quiero poder modificar un curso para actualizar su contenido

**Criterios de aceptación**
- CA 1: Edición de datos exitosa
  - Cuando un creador realice la edición de datos editables (Imágenes, título, descripción, etc)
  - Entonces al confirmar los nuevos cambios, estos se verán reflejados en el curso.
- CA 2: Edición de datos fallida
  - Cuando un creador realice la edición de datos con datos erroneos y/o inválidos.
  - Entonces el sistema deberá informarle que no es una operación permitida.

___

#### Listado de cursos

**Descripción**
- Como creador quiero poder listar mis cursos realizados para administrarlos

**Criterios de aceptación**
- CA 1: Usuario con cursos
  - Cuando un creador ingrese a "Mis cursos"
  - Entonces podrá visualizar todos sus cursos creados
- CA 2: Usuario sin cursos
  - Cuando un creador ingrese a "Mis cursos"
  - Entonces tendrá una pantalla vacía


<!-- Colaborador -->

___

#### Alta de colaborador en curso

**Descripción**
- Como colaborador quiero poder participar en distintos cursos, pudiendo responder consultas y corregir exámenes.

**Criterios de aceptación**
- CA 1: Alta del rol de colaborador
 - Cuando un creador asigna a un usuario como colaborador en un curso.
 - Entonces será asignado a cumplir dicha función en el curso. Pudiendo responder consultas y corregir exámenes.

___

#### Baja de colaborador en curso
**Descripción**
- Como puedo solicitar la baja de este rol en un curso 

**Criterios de aceptación**
- CA 1: Baja de colaborador
 - Cuando un colaborador es dado de baja de un curso
 - Entonces ya no podrá responder consultas con este rol ni corregir exámenes.

___

#### Listado de colaboraciones
**Descripción**
- Como colaborador quiero poder listar los cursos en los cuales colaboré.

**Criterios de aceptación**
- CA 1: Colaborador sin cursos
  - Cuando un colaborador ingresa a la pantalla del listado de cursos y no tiene ninguno asociado.
  - Entonces debe visualizar que no tiene cursos asociados.

- CA 2: Colaborador con cursos
  - Cuando un colaborador con cursos asociados ingresa a la pantalla del listado de cursos.
  - Entonces debe visualizar el listado de cursos asociados.


<!-- Examen-->

___

#### Creación de examen

**Descripción**
- Como creador quiero crear exámenes para evaluar a los estudiantes de un curso

**Criterios de aceptación**
- CA 1: Creación de examen exitosa
  - Cuando un creador inicia la creación de un examen, con el formato que la plataforma le disponibilice, y complete todos los pasos de manera correcta.
  - Entonces se creará un nuevo examen, el cual podrá ser rendido por los estudiantes del curso cuando se encuentre disponible.

- CA 2: Publicación de examen
  - Cuando un creador quiera publicar un examen previamente creado.
  - Entonces el examen estara disponible para que los estudiantes lo rindan.

- CA 3: Creación de examen fallida
  - Cuando un creador inicia la creación de un examen, con el formato que la plataforma le disponibilice, y no complete todos los pasos de manera correcta o exista algun error por parte de la plataforma.
  - Entonces se no creará un nuevo examen y se le informará al usuario el error correspondiente

___

#### Edición de examen

**Descripción**
- Como creador quiero editar exámenes previamente a estar publicado.

**Criterios de aceptación**
- CA 1: Edición de examen exitosa
  - Cuando un creador edite los datos/información de un examen no publicado
  - Entonces el examen será actualizado con esta nueva información

- CA 2: Edición de examen fallida
    - Cuando un creador edite los datos/información de un examen no publicado de manera incorrecta o exista alguna falla en el sistema
    - Entonces se no editará el examen y se le informará al usuario el error correspondiente

___

#### Corrección de examen

**Descripción**
- Como creador o colaborador quiero corregir exámenes para evaluar el conocimiento de los estudiantes que rindan el examen.

**Criterios de aceptación**
- CA 1: Corrección de examen exitosa
  - Cuando un creador o colaborador inicia la corrección de un examen y esta finaliza de manera correcta
  - Entonces el examen pasara a un estado finalizado y tendrá una nota asociada.

- CA 2: Corrección de examen fallida
  - Cuando un creador o colaborador inicia la corrección de un examen y esta no finaliza de manera correcta
  - Entonces se no corregirá el examen y se le informará al usuario el error correspondiente

___

#### Listado de examenes

**Descripción**
- Como creador o colaborador quiero listar mis exámenes para poder administrarlos .

**Criterios de aceptación**
- CA 1: Listado de examenes para creador
  - Cuando un creador lista los examenes y no selecciona ningún filtro
  - Entonces se listaran en pantalla todos los examenes que ha creado, corregido o debe corregir.

- CA 2: Listado de examenes con filtros para creador 
  - Cuando un creador lista los examenes y no selecciona algun filtro
  - Entonces se listaran en pantalla todos los examenes que cumplan dicho filtro

- CA 3: Listado de examenes para colaborador
  - Cuando un colaborador lista los examenes y no selecciona ningún filtro
  - Entonces se listaran en pantalla todos los examenes que ha corregido o debe corregir.

- CA 4: Listado de examenes con filtros para colaborador 
  - Cuando un colaborador lista los examenes y no selecciona algun filtro
  - Entonces se listaran en pantalla todos los examenes que cumplan dicho filtro

- CA 5: Listado de examen fallida
  - Cuando un creador o colaborador con examenes asociados ingresa a la pantalla del listado de examenes y ocurre una falla en el sistema.
  - Entonces se le informará al usuario el error correspondiente

___

#### Visualización de examen

**Descripción**
- Como creador o colaborador quiero visualizar un examen para así revisar su contenido.

**Criterios de aceptación**
- CA 1: Visualización de examen exitosa
  - Cuando creador o colaborador ingresa a la pantalla de visualización de un examen 
  - Entonces se abria la pantalla de vista de examen

- CA 2: Visualización de examen fallida
  - Cuando creador o colaborador ingresa a la pantalla de visualización de un examen y ocurre una falla en el sistema.
  - Entonces se le informará al usuario el error correspondiente

___

#### Completar examen

**Descripción**
- Como estudiante quiero completar un examen para poder así verificar mis conocimientos y aprobar 

**Criterios de aceptación**
- CA 1: Examen completado de manera exitosa
  - Cuando un estudiante completa un examen de manera exitosa (Con criterio a definir en su implementación)
  - Entonces el estudiante no podrá completarlo nuevamente y se enviará el examen para su corrección.

- CA 2: Examen completado con errores
  - Cuando un estudiante no completa un examen de manera exitosa debido a que ocurre un error en el sistema.
  - Entonces el estudiante no podrá completarlo nuevamente y se enviará el examen para su revisión.


<!-- Cursos-->

___

#### Visualización de curso

**Descripción**
- Como creador quiero poder visualizar un curso para revisar su contenido

**Criterios de aceptación**
- CA 1: Visualización dse curso
  - Cuando un creador ingrese a un curso publicado.
  - Entonces podrá visualizar el curso si fuese un estudiante

___

#### Listado de alumnos

**Descripción**
- Como creador quiero poder listar los alumnos inscriptos en el curso

**Criterios de aceptación**
- CA 1: Listado de alumnos sin filtros
  - Cuando un creador o colaborador ingresa al listado de alumnos
  - Entonces se listaran todos los y las alumnas inscriptas en el curso.

- CA 2: Listado de alumnos filtrado
  - Cuando un creador o colaborador ingresa al listado de alumnos y selecciona alguno de los filtros disponibles
  - Entonces se listaran todos los y las alumnas inscriptas en el curso que cumplan con el criterio del filtro.

___

#### Listado de examenes

**Descripción**
- Como creador quiero poder listar los examenes en el curso

**Criterios de aceptación**
- CA 1: Listado de examenes sin filtros
  - Cuando un creador o colaborador ingresa al listado de examenes
  - Entonces se listaran todos los examenes dictados en el curso.

- CA 2: Listado de examenes filtrado
  - Cuando un creador o colaborador ingresa al listado de examenes y selecciona alguno de los filtros disponibles
  - Entonces se listaran todos los examenes dictados en el curso que cumplan con el criterio del filtro.

___

#### Listado de profesores

**Descripción**
- Como creador quiero poder listar los profesores en el curso

**Criterios de aceptación**
- CA 1: Listado de profesores sin filtros
  - Cuando un creador  ingresa al listado de examenes
  - Entonces se listaran todos los profesores involucrados en el curso.

- CA 2: Listado de profesores filtrado
  - Cuando un creador ingresa al listado de profesores y selecciona alguno de los filtros disponibles
  - Entonces se listaran todos los profesores involucrados en el curso que cumplan con el criterio del filtro.

___

#### Certificado de curso aprobado

**Descripción**
- Como estudiante quiero poder recibir una certificación que finalice el curso una vez aprobado todos los examenes correspondientes.

**Criterios de aceptación**
- CA 1: Certificación generada de manera exitosa
  - Cuando un estudiante aprueba todos los examenes de un curso
  - Entonces se le generará un certificado que demuestre dicha aprobación

___

#### Cancelación de curso


**Descripción**
- Como creador quiero poder cancelar un curso ya iniciado

**Criterios de aceptación**
- CA 1: Cancelación de curso exitosa
  - Cuando un creador cancela un curso de manera exitosa
  - Entonces se deberá: 
    - Visualizar el estado del curso como cancelado.
    - Retornar los pagos a los estudiantes.


___

#### Métricas de curso

**Descripción**
- Como creador quiero poder visualizar las métricas de un curso para revisar su evolución.

**Criterios de aceptación**
- CA 1: Visualización de métricas curso
  - Cuando un creador ingrese a las métricas de un curso.
  - Entonces podra visualizar información asociada al curso como:
    - Cantidad de estudiantes que lo cursan.
    - Cantidad de veces que fue seleccionado favorito.
    - Cantidad de estudiantes que lo aprobaron.
    - Cantidad de examenes rendidos.
    - Otros.

<!-- Consultas-->

___

#### Consultas públicas

- Como estudiante quiero poder realizar comentarios con consultas en un curso para poder consultarle al docente mis dudas 

**Criterios de aceptación**

- CA 1: Consulta en curso
  - Cuando se realiza una consulta pública en un curso
  - Entonces todo aquel que entre a el curso podrá leerla y los docentes pueden o no responderla

___

#### Mensajes privados
- Como usuario quiero poder enviar mensajes privados a otro usuario de la plataforma

**Criterios de aceptación**

- CA 1: Mensaje directo
  - Cuando se realiza un mensaje directo
  - Entonces solo los involucrados podrán leer el mismo y se deberá mantener una conversación en tiempo real por mensajes


<!-- Calificaciones-->

___

#### Calificación cuantitativa del curso

**Descripción**
- Como estudiante quiero poder realizar una calificación cuantitativa del curso para así poder brindar mi opinión del mismo

**Criterios de aceptación**
- CA 1: Calificación del curso
  - Cuando un estudiante realiza una calificación cuantitativa de un curso realizado.
  - Entonces esta calificación afectará la calificación del curso 

___

#### Calificación cualitativa del curso

**Descripción**
- Como estudiante quiero poder realizar una opinion mas detallada del curso para así poder brindar mi opinión del mismo

**Criterios de aceptación**

- CA 1: Calificación
  - Cuando un estudiante realiza una calificación con comentarios de un curso realizado.
  - Entonces esta calificación luego podrá ser visualizada por otros estudiantes.

 <!-- Cobros y pagos -->

___

#### Pago de suscripción

**Descripción**

- Como estudiante quiero poder pagar la inscripción en alguna de las suscripciones disponibles para poder así cursar los cursos que esta habilite.

**Criterios de aceptación**

- CA 1: Pago exitoso
  - Cuando un pago se realiza de manera exitosa.
  - Entonces se ejecutará el flujo correspondiente a un pago por una suscripción en el SC y deberá verse reflejado tanto en la wallet del usuario que paga como el que recibe
- CA 2: Pago con error
  - Cuando un pago NO se realiza de manera exitosa.
  - Entonces NO se ejecutará el flujo correspondiente a un pago por una suscripción en el SC y deberá notificarse dicho error.

___

#### Retiro de fondos

**Descripción**

- Como creador quiero extraer los fondos que fueron recolectados de las inscripciones de los alumnos en los cursos.
**Criterios de aceptación**

- CA 1: Retiro de fondos exitoso
  - Cuando un creador solicita un retiro de fondos del curso y se cumplen las regla de negocio pautadas.
  - Entonces se podrá realizar el retiro de fondos

- CA 2: Retiro de fondos fallido
  - Cuando un creador solicita un retiro de fondos del curso y aún no se cumplen las regla de negocio pautadas.
  - Entonces NO se podrá realizar el retiro de fondos

 <!-- Notificaciones -->

___

#### Notificación por nuevo mensaje

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


#### Notificación por estado de curso

**Descripción**
- Como usuario quiero poder recibir una notificación en caso de existir una modificación del estado del curso

**Criterios de aceptación**
- CA 1: Pantalla de notificaciones
  - Cuando un usuario tiene un curso asociado y este tiene un cambio en su estado.
  - Entonces deberá poder visualizar una notificación en la aplicación para acceder a dicho mensaje 
- CA 2: Notificación push.
  - Cuando un usuario tiene un curso asociado y este tiene un cambio en su estado.
  - Entonces deberá recibir notificación push en la aplicación para acceder a dicho mensaje
- CA 3: Notificación whatsapp:
  - Cuando un usuario tiene un curso asociado y este tiene un cambio en su estado.
  - Entonces deberá poder recibir un mensaje de whatsapp para informarse de dicho cambio. 

___


#### Notificación por flujo de examen

**Descripción**
- Como usuario quiero poder recibir una notificación en caso existir una modificación en el estado del examen

**Criterios de aceptación**
- CA 1: Pantalla de notificaciones
  - Cuando un usuario tiene un examen asociado y este tiene un cambio en su estado.
  - Entonces deberá poder visualizar una notificación en la aplicación para acceder a dicho mensaje 
- CA 2: Notificación push.
  - Cuando un usuario tiene un examen asociado y este tiene un cambio en su estado.
  - Entonces deberá recibir notificación push en la aplicación para acceder a dicho mensaje
- CA 3: Notificación whatsapp:
  - Cuando un usuario tiene un curso asociado y este tiene un cambio en su estado.
  - Entonces deberá poder recibir un mensaje de whatsapp para informarse de dicho cambio.

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


<!-- Administración de cursos -->
___

#### Listado de cursos

**Descripción**
- Como administrador del sistema quiero poder listar todas los cursos que se encuentren en el sistema para acceder a ellos 

**Criterios de aceptación**
- CA 1: Listado con cursos existentes
 - Cuando un administrador solicita visualizar el listado de cursos en la plataforma
 - Entonces se deberán listar todos los cursos existentes en el sistema
- CA 2: Listado con cursos existentes utilizando filtros
 - Cuando un administrador solicita visualizar el listado de cursos en la plataforma y aplica un filtrado 
 - Entonces se deberán listar todos los cursos existentes en el sistema que cumplan con dichos filtros

___

#### Visualización de cursos

**Descripción**
- Como administrador del sistema quiero poder visualizar un curso para verificar su contenido. 

**Criterios de aceptación**
- CA 1: Visualización de curso 
 - Cuando un administrador visualiza el un curso existente en la plataforma
 - Entonces se deberá poder visualizar todos sus datos asociados

___

#### Bloqueo de curso

**Descripción**
- Como administrador del sistema quiero poder bloquear un curso que se encuentren en el sistema para que no puedan acceder al mismo

**Criterios de aceptación**
- CA 1: Bloqueo exitoso 
 - Cuando un administrador realiza el bloqueo de un curso existente en la plataforma
 - Entonces se deberá visualizar que el curso está bloqueado y los usuarios no deberán poder acceder a él en la aplicación
- CA 2: Desbloqueo exitoso 
 - Cuando un administrador realiza el desbloqueo de un curso existente en la plataforma
 - Entonces se deberá visualizar que el curso no esta bloqueado y los usuarios deberán poder acceder a el en la aplicación
 
 
<!-- Administración de transacciones -->
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
- CA 1: Métricas de nuevos usuarios utilizando mail y contraseña
- CA 2: Métricas de nuevos usuarios utilizando identidad federada
- CA 3: Métricas de login de usuarios utilizando mail y contraseña
- CA 4: Métricas de login de usuarios utilizando identidad federada
- CA 5: Métricas de usuarios bloqueados
- CA 6: Metricas de recupero de contrasena  

___

#### Métricas de cursos

**Descripción**
- Como administrador del sistema quiero poder visualizar las métricas de cursos para medir el uso de la plataforma y sus servicios

**Criterios de aceptación**
- CA 1: Métricas de nuevos cursos
- CA 2: Métricas de cursos por categorias
- CA 3: Métricas de cursos por suscripciones
- CA 4: Métricas de cursos por usuario

___

#### Métricas de transacciones

**Descripción**
- Como administrador del sistema quiero poder visualizar las métricas de transacciones para medir el uso de la plataforma y sus servicios

**Criterios de aceptación**
- CA 1: Metricas de pagos
- CA 2: Metricas de cobros

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
  - [FastAPI](https://fastapi.tiangolo.com/)
  - [Flask](https://flask.palletsprojects.com/en/1.1.x/)
  - [Django](https://www.djangoproject.com/)
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

#### Contenido multimedia
Para el uso de contenido multimedia se recomienda utilizar el servicio provisto por firebase [Storage](https://firebase.google.com/docs/storage?hl=es)

___

#### Chat
Para el uso del chat en tiempo real se recomienda utilizar el servicio provisto por firebase [Real time database](https://firebase.google.com/docs/database?hl=es)

___

#### Notificaciones 

##### Push
Para el uso de notificaciones push se recomienda utilizar el servicio provisto por firebase [Cloud Messaging](https://firebase.google.com/docs/cloud-messaging?hl=es)


##### Mensajeria whatsapp
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

- Guia de usuario de la aplicación disponible en [Github Pages](https://pages.github.com/)
- Guia de usuario del backoffice disponible en [Github Pages](https://pages.github.com/)
- Bitácora de proyecto
- [Análisis postmortem](https://en.wikipedia.org/wiki/Postmortem_documentation)

_Se espera que dicha documentación se elabore de manera incremental y que cada entrega parcial tenga parte de la misma._

## Instancias de entrega

| Instancia   |      Fecha      |  Alcance |
|----------|:-------------:|------:|
| Checkpoint 1 |  14/10 | A definir |
| Checkpoint 2 |  11/11 | A definir |
| Checkpoint 3 |  9/12 | A definir |
| Entrega Final |  23/12 | A definir |
