---

title: "20251C - ClassConnect"
description: "Trabajo práctico grupal 2025 1C: ClassConnect, una plataforma de gestión educativa con clases y evaluaciones."
subtitle: "Grupal"
------------------

# ClassConnect

## Índice

1. [Descripción](#descripción)
2. [Condiciones de aprobación](#condiciones-de-aprobación)
3. [Requisitos](#requisitos)
   1. [Épicas](#épicas)
      1. [Usuarios](#usuarios)
      2. [Gestión de perfiles](#gestión-de-perfiles)
      3. [Gestión de Clases](#gestión-de-clases)
      4. [Asignaciones y Evaluaciones](#asignaciones-y-evaluaciones)
      5. [Comunicación y Notificaciones](#comunicación-y-notificaciones)
      6. [Métricas y Análisis](#métricas-y-análisis)
      7. [Administración de la Plataforma](#administración-de-la-plataforma)
   2. [Historias de Usuario](#historias-de-usuario)
4. [Requisitos No Funcionales](#requisitos-no-funcionales)
    1. [Componentes](#componentes)
    2. [Tecnologías](#tecnologias)
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
6. [Historias obligatorias y optativas](#historias-obligatorias-y-optativas)
    1. [Obligatorias](#obligatorias)
    2. [Optativas](#optativas)
7. [Material de referencia](#material-de-referencia)

## Descripción

ClassConnect es una plataforma de gestión educativa diseñada para facilitar la enseñanza y el aprendizaje en entornos digitales. Su propósito es permitir que docentes y estudiantes interactúen de manera efectiva mediante la creación de clases, asignaciones, exámenes, y recursos educativos en línea. La plataforma evalua integrar un modelo LLM para mejorar la generación de contenido educativo, automatizar correcciones y proporcionar asistencia personalizada a estudiantes y docentes.

## Condiciones de aprobación

El trabajo se aprobará al cumplir con una cantidad mínima de puntos obtenidos a partir de las historias de usuario implementadas. Habrá historias obligatorias y opcionales, permitiendo a los equipos elegir cómo completar los puntos necesarios.

## Requisitos

A continuación se describirán una serie de Épicas e Historias de usuario indicando la funcionalidad a cumplir por la plataforma. 

_En caso de que se observe alguna definición ambigua o la falta de la misma, esta debe ser aclarada y definida por el grupo junto a su corrector_ 

### [Épicas](#épicas)

#### [Usuarios](#usuarios)

 - [Registro de usuarios](#registro-de-usuarios)
 - [Login con email y contraseña](#login-de-usuarios-con-usuario-y-contraseña)
 - [Login con datos biométricos](#login-con-datos-biométricos)
 - [Login con proveedor de identidad federada](#login-de-usuarios-con-proveedores-de-identidad-federada)
 - [Recupero de contraseña](#recupero-de-contraseña)
 - [Registro Administradores](#registro-de-administradores)
 - [Login Administradores](#login-de-administradores)
 - [Notificación de PIN en proceso de registro](#notificación-de-pin-en-proceso-de-registro)

#### [Gestión de perfiles](#gestión-de-perfiles)

 - [Edición de perfil](#edición-de-perfil)
 - [Visualización de perfil propio](#visualización-de-perfil-propio)
 - [Visualización de perfil de otros usuarios](#visualización-de-perfil-de-otros-usuarios)

#### [Gestión de Clases](#gestión-de-clases)

- [Creación y gestión de cursos](#creación-y-gestión-de-cursos)
- [Docentes auxiliares](#docentes-auxiliares)
- [Listado de cursos disponibles para inscripción](#listado-de-cursos-disponibles-para-inscripción)
- [Inscripción de estudiantes](#inscripción-de-estudiantes)
- [Organización de módulos y recursos](#organización-de-módulos-y-recursos)
- [Visualización de cursos](#visualización-de-cursos)
- [Cursos favoritos](#cursos-favoritos)
- [Visualización de cursos favoritos](#visualización-de-cursos-favoritos)
- [Feedback de cursos](#feedback-de-cursos)
- [Feedback de alumnos](#feedback-de-alumnos)
- [Visualización de feedbacks como alumno](#visualización-de-feedbacks-como-alumno)
- [Visualización de feedbacks del curso](#visualización-de-feedbacks-del-curso)

#### [Asignaciones y Evaluaciones](#asignaciones-y-evaluaciones)

- [Creación de tareas y exámenes](#creación-de-tareas-y-exámenes)
- [Completar tarea/rendir examen](#completar-tarea-rendir-examen)
- [Listado de tareas/exámenes (docente)](#listado-de-tareasexámenes-docente)
- [Listado de tareas/exámenes (alumno)](#listado-de-tareasexámenes-alumno)
- [Corrección automática con IA](#corrección-automática-con-ia)
- [Retroalimentación y notas](#retroalimentación-y-notas)

#### [Comunicación y Notificaciones](#comunicación-y-notificaciones)

- [Foro de preguntas y respuestas](#foro-de-preguntas-y-respuestas)
- [Chat de asistencia](#chat-de-asistencia)
- [Notificaciones push y email](#notificaciones-push-y-email)

#### [Métricas y Análisis](#métricas-y-análisis)

- [Estadísticas de desempeño estudiantil](#estadísticas-de-desempeño-estudiantil)
- [Análisis de tendencias de aprendizaje](#análisis-de-tendencias-de-aprendizaje)
- [Detección de plagio con IA](#detección-de-plagio-con-ia)

#### [Administración de la Plataforma](#administración-de-la-plataforma)

- [Gestión de usuarios y permisos](#gestión-de-usuarios-y-permisos)
- [Configuración de reglas y normativas](#configuración-de-reglas-y-normativas)
- [Monitoreo de actividad y rendimiento](#monitoreo-de-actividad-y-rendimiento)


### Historias de Usuario


#### Registro de usuarios

**Descripción**

- Como usuario no registrado quiero registrarme en la plataforma para acceder a las funcionalidades del sistema. 

_En el resto de los CA se utilizará la nomenclatura Usuario como un usuario registrado_

**Criterios de aceptación**

- CA 1: Registro exitoso
  - Cuando el registro del usuario es correcto.
  - Entonces el sistema creará un nuevo usuario con su perfil. Luego permitirá el ingreso al sistema.
- CA 2: Obtención de ubicación
  - Cuando el registro del usuario es correcto.
  - Entonces el sistema deberá solicitarle al usuario una ubicación predeterminada
- CA 3: Falta uno o más campos obligatorios
  - Cuando el registro del usuario es incorrecto debido a un ingreso erróneo o faltante de campos. 
  - Entonces el sistema indicará los campos faltantes y/o erróneos y no permitirá el ingreso al sistema.
- CA 4: Registro fallido
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
- CA 5: Bloqueo de cuenta por intentos fallidos
  - Cuando se detectan múltiples intentos fallidos de inicio de sesión en un corto período de tiempo,
  - Entonces el sistema bloqueará temporalmente la cuenta del usuario y mostrará un mensaje de advertencia, indicando la necesidad de esperar o contactar soporte para desbloquearla.

___

#### Login de usuarios con proveedores de identidad federada

**Descripción**

- Como usuario, quiero poder iniciar sesión en la plataforma utilizando proveedores de identidad federada (por ejemplo, Google, Facebook, etc.) para acceder de forma rápida y segura sin necesidad de registrar manualmente mis datos.

**Criterios de aceptación**

- CA 1: Inicio de sesión exitoso mediante identidad federada  
  - Cuando el usuario selecciona un proveedor de identidad federada y autoriza el acceso,  
  - Entonces el sistema recibirá y validará el token proporcionado; si el token es válido, se iniciará la sesión y se redirigirá al usuario a la plataforma.

- CA 2: Manejo de errores de autenticación  
  - Cuando el proveedor federado devuelve un error (por ejemplo, token inválido, expirado o problemas de conexión),  
  - Entonces el sistema mostrará un mensaje de error claro, indicando que la autenticación ha fallado, y ofrecerá la opción de reintentar o utilizar otro método de autenticación.

- CA 3: Sincronización de datos de perfil  
  - Cuando el usuario inicia sesión mediante un proveedor federado,  
  - Entonces el sistema extraerá y sincronizará la información básica del perfil (nombre, correo electrónico, foto de perfil) para crear o actualizar la cuenta en la plataforma, permitiendo que el usuario modifique estos datos posteriormente si lo desea.

- CA 4: Mantener la unicidad del sistema de usuarios
    - Cuando un usuario registrado previamente con correo y contraseña se logea,
    - Entonces el sistema le preguntar sí quiere combinar la información y le pediria dichas credenciales
    - Entonces el usuario podrá logearse de ambas formas.

- CA 5: Seguridad en el manejo de tokens  
  - Cuando el sistema recibe un token de identidad federada,  
  - Entonces dicho token será validado mediante el proveedor correspondiente y almacenado de forma segura para garantizar la integridad y confidencialidad de la sesión del usuario.

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

- CA 2: Fallo en recuperar
    - Cuando se expiré el tiempo de recuperación
    - Entonces el sistema no podrá realizar la recuperación y el usuario deberá iniciar nuevamente el proceso.
___

#### Registro de administradores

**Descripción**

- Como administrador quiero poder dar de alta a otros administradores en la plataforma para acceder a las funcion

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

___


#### Notificación de PIN en proceso de registro

**Descripción**

- Como usuario que se ha registrado en la plataforma, quiero recibir un PIN de verificación vía correo electrónico o mediante WhatsApp/SMS para confirmar mi cuenta, de modo que se valide la autenticidad de mi registro y se active mi cuenta de forma segura.

**Criterios de aceptación**

- CA 1: Envío de PIN de verificación  
  - Cuando el usuario se registra exitosamente completando todos los campos obligatorios,  
  - Entonces el sistema generará un PIN único y lo enviará al medio seleccionado (correo electrónico, WhatsApp o SMS), mostrando un mensaje informativo que indique que se ha enviado el PIN.

- CA 2: Validación del PIN ingresado  
  - Cuando el usuario ingrese el PIN recibido en el formulario de verificación,  
  - Entonces el sistema comparará el PIN ingresado con el generado; si es correcto y se ingresa dentro del tiempo de expiración (por ejemplo, 10 minutos), la cuenta se activará y el usuario podrá acceder a la plataforma.  
  - Si el PIN es incorrecto o ha expirado, se mostrará un mensaje de error y se ofrecerá la opción de reenviar un nuevo PIN.

- CA 3: Seguridad y uso único del PIN  
  - Cuando se genera el PIN, este debe ser válido solo para un único intento de verificación y tener un tiempo de expiración definido,  
  - Entonces, una vez utilizado o vencido, el sistema invalidará el PIN para evitar reutilización y asegurar el proceso.

___


#### Edición de perfil

**Descripción**

- Como Usuario, quiero poder editar los datos de mi perfil de usuario (por ejemplo, nombre, correo, foto de perfil y otros detalles relevantes) para mantener actualizada mi información personal y reflejar mis cambios a lo largo del tiempo.

**Criterios de aceptación**

- CA 1: Edición de datos exitosa  
  - Cuando el usuario modifica y guarda sus datos de perfil de forma correcta,  
  - Entonces el sistema actualizará la información y mostrará una confirmación de éxito.

- CA 2: Validación de campos  
  - Cuando el usuario introduce información no válida o deja campos obligatorios vacíos,  
  - Entonces el sistema mostrará mensajes de error claros indicando qué datos necesitan corrección antes de guardar.

- CA 3: Retroalimentación en tiempo real  
  - Cuando el usuario realiza cambios en su perfil,  
  - Entonces el sistema mostrará una vista previa o confirmación de los cambios realizados antes de la actualización final.

- CA 4: Manejo de errores del servidor  
  - Cuando ocurre un error durante el proceso de actualización (por ejemplo, problemas de conexión),  
  - Entonces el sistema mostrará un mensaje de error informativo y sugerirá reintentar la operación.


___


#### Visualización de perfil propio

**Descripción**

- Como Usuario, quiero poder visualizar los datos de mi perfil de usuario para revisar mi información personal, de modo que pueda confirmar que es correcta y actualizarla si es necesario.

**Criterios de aceptación**

- CA 1: Visualización correcta del perfil  
  - Cuando el usuario accede a la sección "Mi Perfil",  
  - Entonces el sistema mostrará de forma organizada tanto los datos públicos como privados asociados a su cuenta.

- CA 2: Manejo de errores  
  - Cuando ocurre un error al cargar el perfil (por ejemplo, fallo en la conexión),  
  - Entonces el sistema mostrará un mensaje de error adecuado e indicará opciones para reintentar la carga.

___

#### Visualización de perfil de otros usuarios

**Descripción**

- Como Usuario, quiero poder visualizar los datos de otros usuarios para conocer su información de contacto y detalles públicos.

**Criterios de aceptación**

- CA 1: Visualización de datos públicos  
  - Cuando el usuario accede al perfil de otro usuario,  
  - Entonces el sistema mostrará únicamente los datos públicos configurados por el propietario, como nombre, foto de perfil y biografía.

- CA 2: Restricción de datos privados  
  - Cuando se visualiza el perfil de otro usuario,  
  - Entonces el sistema no mostrará información privada o sensible que no esté destinada a ser pública.

- CA 3: Manejo de perfiles inexistentes  
  - Cuando el usuario intenta acceder a un perfil que no existe o ha sido eliminado,  
  - Entonces el sistema mostrará un mensaje adecuado indicando que el perfil no está disponible.

___

#### Creación y gestión de cursos

**Descripción**

- Como docente, quiero poder crear y gestionar cursos en la plataforma para estructurar el proceso de enseñanza y organizar los contenidos de forma efectiva. Esto incluye la creación, edición y eliminación de cursos, así como la definición de criterios de elegibilidad para las inscripciones. 


__En este contexto, un curso se define como una unidad estructurada de enseñanza que abarca un conjunto de contenidos y actividades diseñadas para facilitar el aprendizaje de los estudiantes. Un curso puede incluir materiales educativos (como textos, videos y presentaciones), actividades de aprendizaje (como ejercicios y cuestionarios), evaluaciones y recursos adicionales. La gestión de cursos implica la creación, edición y eliminación de estos, así como la definición de criterios de elegibilidad para las inscripciones.__

**Criterios de aceptación**

- **CA 1: Creación exitosa de curso**  
  - Cuando el docente ingresa la información requerida (nombre, descripción, cupo, fechas, etc.) para crear un curso,  
  - Entonces el sistema debe guardar el curso y mostrar un mensaje de éxito.

- **CA 2: Edición de curso**  
  - Cuando el docente modifica la información de un curso existente,  
  - Entonces el sistema debe actualizar el curso con los nuevos datos y confirmar la actualización.

- **CA 3: Eliminación de curso**  
  - Cuando el docente decide eliminar un curso,  
  - Entonces el sistema debe solicitar confirmación antes de eliminar y, tras confirmarla, eliminar el curso de manera logica.

- **CA 4: Validación de datos**  
  - Cuando el docente ingresa datos incompletos o erróneos al crear o editar un curso,  
  - Entonces el sistema mostrará mensajes de error indicando qué campos deben corregirse.

- **CA 5: Configuración de criterios de elegibilidad**  
  - Cuando el docente crea o edita un curso,  
  - Entonces el sistema debe permitir definir y almacenar criterios de elegibilidad (prerrequisitos, nivel académico, etc.) que serán utilizados para verificar si un estudiante cumple con los requisitos durante el proceso de inscripción.

___


### Docentes auxiliares

**Descripción**

Como docente principal, deseo tener la capacidad de agregar a otros usuarios como docentes auxiliares en mis cursos para que puedan colaborar en la gestión y enseñanza del contenido, facilitando así una experiencia educativa más enriquecedora y compartida.

**Criterios de aceptación**

- **CA 1: Selección de docentes auxiliares**  
  - *Dado* que el docente principal accede a la configuración de su curso y decide agregar un docente auxiliar,  
  - *Entonces* el sistema debe permitirle buscar y seleccionar a cualquier usuario registrado en la plataforma para asignarle el rol de docente auxiliar en ese curso.

- **CA 2: Notificación de asignación**  
  - *Dado* que un usuario es asignado como docente auxiliar en un curso,  
  - *Entonces* el sistema debe enviarle una notificación informándole sobre su nuevo rol y proporcionándole acceso al curso correspondiente.

- **CA 3: Permisos de docentes auxiliares**  
  - *Dado* que un usuario es asignado como docente auxiliar,  
  - *Entonces* el sistema debe otorgarle permisos específicos que le permitan colaborar en la gestión del curso, como la creación de contenido, evaluación de estudiantes y comunicación dentro del curso, respetando las restricciones definidas por el docente principal.

- **CA 4: Revocación de rol de docente auxiliar**  
  - *Dado* que el docente principal decide remover a un docente auxiliar de su curso,  
  - *Entonces* el sistema debe permitirle hacerlo y notificar al usuario afectado sobre la revocación de su rol, eliminando sus permisos asociados en ese curso.

- **CA 5: Registro de actividades de docentes auxiliares**  
  - *Dado* que un docente auxiliar realiza acciones dentro del curso,  
  - *Entonces* el sistema debe registrar dichas actividades para mantener un historial que pueda ser revisado por el docente principal, garantizando transparencia y seguimiento de las contribuciones.
___

### Listado de cursos disponibles para inscripción

**Descripción**

Como estudiante, quiero poder visualizar una lista de todos los cursos disponibles en la plataforma, para explorar sus detalles y seleccionar aquellos en los que desee inscribirme.

**Criterios de aceptación**

- **CA 1: Visualización de cursos disponibles**
  - *Dado* que el estudiante accede a la sección de cursos disponibles,
  - *Cuando* el estudiante ingresa a la plataforma y navega a la sección de cursos disponibles,
  - *Entonces* el sistema mostrará una lista de todos los cursos abiertos para inscripción, incluyendo información básica como el nombre del curso, descripción breve, fechas de inicio y fin, y estado de disponibilidad.

- **CA 2: Filtros y búsqueda**
  - *Dado* que el estudiante desea encontrar cursos específicos,
  - *Cuando* el estudiante utiliza las opciones de filtrado o la barra de búsqueda,
  - *Entonces* el sistema permitirá filtrar la lista por categorías, niveles, fechas, y/o buscar por palabras clave relacionadas al título o contenido del curso.

- **CA 3: Detalles del curso**
  - *Dado* que el estudiante selecciona un curso de la lista,
  - *Cuando* el estudiante hace clic en un curso específico,
  - *Entonces* el sistema mostrará una página con información detallada del curso, incluyendo objetivos, temario, requisitos previos, perfil del instructor, modalidad (presencial/online), y cualquier otro dato relevante.

- **CA 4: Indicador de inscripción previa**
  - *Dado* que el estudiante visualiza la lista de cursos disponibles,
  - *Cuando* el estudiante ya está inscrito en un curso que aparece en la lista,
  - *Entonces* el sistema destacará aquellos cursos en los que el estudiante ya está inscrito, evitando confusiones y duplicidades.

- **CA 5: Estado de disponibilidad**
  - *Dado* que un curso tiene plazas limitadas o está próximo a cerrar inscripciones,
  - *Cuando* el estudiante visualiza la lista de cursos,
  - *Entonces* el sistema mostrará indicadores como "Cupos limitados" o "Últimos días para inscribirse" para informar al estudiante sobre la urgencia de la inscripción.

- **CA 6: Acceso a la inscripción**
  - *Dado* que el estudiante está interesado en un curso específico,
  - *Cuando* el estudiante decide inscribirse en un curso desde la lista o la página de detalles,
  - *Entonces* el sistema proporcionará un enlace o botón que lo redirija al proceso de inscripción correspondiente.

___


#### Inscripción de estudiantes

**Descripción**

- Como estudiante, quiero poder inscribirme en los cursos disponibles en la plataforma para acceder a su contenido y participar en el proceso de aprendizaje.

**Criterios de aceptación**

- **CA 1: Inscripción exitosa**  
  - Cuando el estudiante selecciona un curso y proporciona la información requerida,  
  - Entonces el sistema debe registrar su inscripción y mostrar una confirmación.

- **CA 2: Verificación de elegibilidad**  
  - Cuando un curso requiere ciertos prerrequisitos o condiciones,  
  - Entonces el sistema verificará que el estudiante cumpla con dichos requisitos antes de permitir la inscripción.

- **CA 3: Manejo de inscripciones duplicadas**  
  - Cuando un estudiante intenta inscribirse en el mismo curso más de una vez,  
  - Entonces el sistema mostrará un mensaje indicando que ya está inscrito en ese curso.

- **CA 4: Notificaciones de inscripción**  
  - Cuando un estudiante se inscribe exitosamente,  
  - Entonces el sistema enviará una notificación (por email o a través de la plataforma) confirmando su inscripción.

___


#### Organización de módulos y recursos

**Descripción**

- Como docente, quiero poder organizar los módulos y recursos dentro de un curso para estructurar el contenido de manera coherente y facilitar el acceso a los materiales de estudio.

**Criterios de aceptación**

- **CA 1: Creación de módulos**  
  - Cuando el docente crea un nuevo módulo dentro de un curso,  
  - Entonces el sistema debe permitir ingresar un título, descripción y establecer el orden de los módulos, guardándolos correctamente.

- **CA 2: Asignación de recursos a módulos**  
  - Cuando el docente agrega recursos (videos, documentos, enlaces, etc.) a un módulo,  
  - Entonces el sistema debe permitir subir o vincular dichos recursos y mostrarlos en el módulo correspondiente.

- **CA 3: Edición y reordenamiento de módulos y recursos**  
  - Cuando el docente edita la estructura de un curso,  
  - Entonces el sistema debe permitir modificar la información de los módulos y cambiar el orden de los recursos, actualizando la organización en tiempo real.

- **CA 4: Validación y manejo de errores**  
  - Cuando se ingresan datos incompletos o erróneos en la creación o edición de módulos y recursos,  
  - Entonces el sistema mostrará mensajes de error adecuados e indicará las correcciones necesarias.


___


#### Visualización de cursos

**Descripción**

- Como alumno, quiero poder ver los cursos en los que estoy inscrito (tanto los actuales como los previos) para gestionar mi aprendizaje y revisar mi historial académico.

**Criterios de aceptación**

- CA 1: Visualización de cursos actuales y previos  
  - Cuando el alumno accede a la sección "Mis Cursos",  
  - Entonces el sistema mostrará una lista diferenciada de cursos activos y finalizados.

- CA 2: Filtro de cursos  
  - Cuando el alumno utiliza la funcionalidad de filtrado (por estado, fecha, nombre del curso, etc.),  
  - Entonces el sistema mostrará únicamente los cursos que cumplan con el criterio seleccionado.

- CA 3: Paginación  
  - Cuando el alumno visualiza la lista de cursos,  
  - Entonces el sistema presentará los cursos paginados para una mejor experiencia de usuario.


___


#### Cursos favoritos

**Descripción**

- Como alumno, quiero tener la posibilidad de guardar cursos como favoritos para acceder rápidamente a aquellos cursos que considero importantes o de interés.

**Criterios de aceptación**

- CA 1: Marcar curso como favorito  
  - Cuando el alumno visualiza un curso y selecciona la opción "Guardar como favorito",  
  - Entonces el sistema marcará el curso como favorito y lo añadirá a su lista de favoritos.

- CA 2: Confirmación de acción  
  - Cuando un curso es marcado como favorito,  
  - Entonces el sistema mostrará una notificación o indicador visual confirmando que el curso ha sido guardado.


___


#### Visualización de cursos favoritos

**Descripción**

- Como alumno, quiero poder ver mis cursos favoritos para acceder de manera rápida a ellos, con la posibilidad de filtrarlos y verlos en una lista paginada.

**Criterios de aceptación**

- CA 1: Visualización de lista de cursos favoritos  
  - Cuando el alumno accede a la sección "Cursos Favoritos",  
  - Entonces el sistema mostrará una lista de todos los cursos marcados como favoritos.

- CA 2: Filtro de cursos favoritos  
  - Cuando el alumno utiliza la funcionalidad de filtrado en la sección de cursos favoritos (por nombre, categoría, fecha, etc.),  
  - Entonces el sistema mostrará únicamente los cursos que cumplan con el criterio seleccionado.

- CA 3: Paginación  
  - Cuando el alumno visualiza la lista de cursos favoritos,  
  - Entonces el sistema presentará los resultados paginados para facilitar la navegación.


___


#### Feedback de cursos

**Descripción**

- Como alumno, quiero tener la posibilidad de dar feedback a un curso, tanto en forma escrita como mediante una puntuación, para expresar mi opinión sobre la calidad del curso y ayudar a mejorar el proceso de enseñanza.

**Criterios de aceptación**

- CA 1: Envío de feedback escrito y puntuado  
  - Cuando el alumno envía su feedback para un curso,  
  - Entonces el sistema deberá permitirle ingresar un comentario y seleccionar una puntuación (por ejemplo, de 1 a 5) y registrar ambos datos.

- CA 2: Confirmación de envío  
  - Cuando el alumno envía el feedback,  
  - Entonces el sistema mostrará una notificación confirmando que su feedback ha sido registrado correctamente.

- CA 3: Validación de entrada  
  - Cuando el alumno envía feedback con información incompleta o errónea,  
  - Entonces el sistema mostrará mensajes de error indicando qué datos faltan o deben corregirse.

___


#### Feedback de alumnos

**Descripción**

- Como docente, quiero tener la posibilidad de dar feedback a un alumno en el contexto de un curso, para proporcionar retroalimentación constructiva sobre su desempeño y ayudarlo a mejorar.

**Criterios de aceptación**

- CA 1: Envío de feedback al alumno  
  - Cuando el docente ingresa feedback para un alumno en un curso,  
  - Entonces el sistema deberá permitir ingresar tanto un comentario escrito como asignar una puntuación o evaluación cuantitativa.

- CA 2: Notificación al alumno  
  - Cuando el docente envía feedback,  
  - Entonces el sistema notificará al alumno sobre el nuevo feedback recibido.

- CA 3: Validación y actualización  
  - Cuando el docente envía feedback con campos obligatorios (comentario y/o puntuación),  
  - Entonces el sistema validará la información y registrará el feedback correctamente; en caso de errores, se mostrará un mensaje de advertencia.


___



#### Visualización de feedbacks como alumno

**Descripción**

- Como alumno, quiero poder ver los feedbacks que he recibido en mis cursos para conocer mi desempeño y áreas de mejora, presentados de manera filtrable y paginada.

**Criterios de aceptación**

- CA 1: Visualización de feedbacks recibidos  
  - Cuando el alumno accede a la sección "Mis Feedbacks",  
  - Entonces el sistema mostrará una lista de todos los feedbacks recibidos en los cursos en los que ha participado.

- CA 2: Filtro de feedbacks  
  - Cuando el alumno utiliza la funcionalidad de filtrado (por curso, fecha, tipo de feedback, etc.),  
  - Entonces el sistema mostrará únicamente los feedbacks que cumplan con el criterio seleccionado.

- CA 3: Paginación  
  - Cuando el alumno visualiza la lista de feedbacks,  
  - Entonces el sistema presentará los resultados paginados para mejorar la navegación.

- CA 4: Resumen de feedbacks generado por IA  
  - Cuando el alumno solicita o el sistema detecta la necesidad de un resumen,  
  - Entonces el sistema utilizará un modelo de IA para generar un resumen conciso que destaque los puntos clave de los feedbacks recibidos (fortalezas, áreas de mejora, tendencias generales), presentándolo de manera clara y accesible.

___


#### Visualización de feedbacks del curso

**Descripción**

- Como docente, quiero poder ver los feedbacks proporcionados para un curso en particular, para evaluar la percepción y satisfacción de los estudiantes respecto al curso, presentados de forma filtrable y paginada.

**Criterios de aceptación**

- CA 1: Visualización de feedbacks del curso  
  - Cuando el docente accede a la sección de feedbacks de un curso,  
  - Entonces el sistema mostrará una lista de todos los feedbacks asociados a ese curso.

- CA 2: Filtro de feedbacks del curso  
  - Cuando el docente utiliza la funcionalidad de filtrado (por fecha, tipo de feedback, puntuación, etc.),  
  - Entonces el sistema mostrará únicamente los feedbacks que cumplan con el criterio seleccionado.

- CA 3: Paginación  
  - Cuando se visualiza la lista de feedbacks del curso,  
  - Entonces el sistema presentará los resultados paginados para facilitar la revisión.

- CA 4: Resumen de feedbacks del curso generado por IA  
  - Cuando el docente solicita un resumen de los feedbacks,  
  - Entonces el sistema empleará un modelo de IA para generar un resumen que resalte las tendencias generales, aspectos positivos y áreas de mejora, facilitando una visión rápida y global de la satisfacción y desempeño en el curso.


___


  #### Creación de tareas y exámenes

**Descripción**

- Como docente, quiero poder crear tareas y exámenes en la plataforma para evaluar el conocimiento de mis estudiantes de forma estructurada y automatizar, en la medida de lo posible, el proceso de corrección y retroalimentación.

**Criterios de aceptación**

- **CA 1: Creación exitosa**  
  - Cuando el docente completa todos los campos obligatorios (título, descripción, fecha de entrega, instrucciones, etc.) para una tarea o examen,  
  - Entonces el sistema debe crear y almacenar la actividad correctamente, mostrando un mensaje de confirmación.

- **CA 2: Validación de campos obligatorios**  
  - Cuando el docente intenta crear una tarea o examen sin completar uno o más campos esenciales,  
  - Entonces el sistema mostrará mensajes de error específicos indicando qué información falta o es incorrecta, impidiendo la creación hasta que se corrijan.

- **CA 3: Configuración de fecha y condiciones de entrega**  
  - Cuando el docente establece una fecha y hora de entrega para la tarea o examen,  
  - Entonces el sistema debe permitir configurar estos parámetros y, de ser necesario, definir condiciones adicionales (como tiempo de tolerancia o reglas de entrega).

- **CA 4: Edición y actualización**  
  - Cuando el docente decide modificar los detalles de una tarea o examen ya creada,  
  - Entonces el sistema deberá permitir la edición de los campos correspondientes y actualizar la información de forma inmediata, mostrando una notificación de éxito.

- **CA 5: Eliminación de tareas y exámenes**  
  - Cuando el docente decide eliminar una tarea o examen,  
  - Entonces el sistema solicitará una confirmación de la acción y, una vez confirmada, eliminará la actividad de la plataforma.

- **CA 6: Publicación y visibilidad para estudiantes**  
  - Cuando una tarea o examen se crea y se publica,  
  - Entonces el sistema deberá mostrarla en la sección de actividades de los estudiantes inscritos en el curso, asegurando que sólo los usuarios autorizados puedan visualizarla.



___


#### Completar tarea/rendir examen

**Descripción**

- Como alumno, quiero poder completar tareas y rendir exámenes asignados para evaluar mi aprendizaje, de modo que pueda ingresar mis respuestas y recibir retroalimentación de forma estructurada.

**Criterios de aceptación**

- **CA 1: Acceso a la tarea/examen**  
  - Cuando el alumno accede a la sección "Mis Actividades" o "Tareas y Exámenes",  
  - Entonces el sistema mostrará las actividades asignadas, incluyendo instrucciones, fecha límite y estado (pendiente, en curso, etc.).

- **CA 2: Registro y entrada de respuestas**  
  - Cuando el alumno interactúa con una tarea o examen,  
  - Entonces el sistema deberá permitirle ingresar respuestas (texto, selección múltiple, subida de archivos, etc.) según el tipo de actividad.

- **CA 3: Envío y confirmación de entrega**  
  - Cuando el alumno finaliza la actividad y hace clic en "Enviar",  
  - Entonces el sistema registrará la entrega con la marca de tiempo correspondiente y mostrará un mensaje de confirmación de envío exitoso.

- **CA 4: Validación del plazo de entrega**  
  - Cuando el alumno envía la actividad,  
  - Entonces el sistema verificará que se entregue dentro del plazo establecido; si se envía fuera del plazo, se notificará que la entrega es tardía y se aplicará la política correspondiente.


___


#### Listado de tareas/exámenes (docente)

**Descripción**

- Como docente, quiero poder ver un listado de todas las tareas y exámenes que he creado para gestionar y monitorear la actividad de mis estudiantes, permitiéndome filtrar y navegar los registros de manera organizada.

**Criterios de aceptación**

- **CA 1: Visualización del listado**  
  - Cuando el docente accede a la sección "Mis Tareas/Exámenes",  
  - Entonces el sistema mostrará una lista de todas las actividades creadas, con información resumida como título, fecha de entrega, estado y cantidad de envíos.

- **CA 2: Filtro de actividades**  
  - Cuando el docente utiliza opciones de filtrado (por curso, fecha, estado, etc.),  
  - Entonces el sistema mostrará únicamente las actividades que cumplan con los criterios seleccionados.

- **CA 3: Paginación**  
  - Cuando existen muchas actividades,  
  - Entonces el sistema presentará el listado paginado para facilitar la navegación.

- **CA 4: Acceso a detalles de la actividad**  
  - Cuando el docente selecciona una tarea o examen del listado,  
  - Entonces el sistema mostrará los detalles completos de la actividad, incluyendo las respuestas de los estudiantes y opciones para editar o eliminar la actividad.


___



#### Listado de tareas/exámenes (alumno)

**Descripción**

- Como alumno, quiero poder ver un listado de las tareas y exámenes asignados para gestionar mis actividades académicas, conocer cuáles debo completar y revisar mi historial, de forma filtrable y paginada.

**Criterios de aceptación**

- **CA 1: Visualización del listado**  
  - Cuando el alumno accede a la sección "Mis Tareas/Exámenes",  
  - Entonces el sistema mostrará una lista de todas las actividades asignadas, con detalles como título, fecha límite, estado (pendiente, completada, atrasada), etc.

- **CA 2: Filtro de actividades**  
  - Cuando el alumno utiliza opciones de filtrado (por estado, fecha, curso, etc.),  
  - Entonces el sistema mostrará únicamente las actividades que cumplan con los criterios seleccionados.

- **CA 3: Paginación**  
  - Cuando existen numerosos registros,  
  - Entonces el sistema presentará los resultados paginados para una navegación eficiente.

- **CA 4: Acceso a detalles de la actividad**  
  - Cuando el alumno selecciona una tarea o examen del listado,  
  - Entonces el sistema mostrará la información completa de la actividad, incluyendo instrucciones, recursos adjuntos y la opción para iniciar o revisar la actividad.

- **CA 5: Visualización de tiempo de examenes activos**
    - Cuando un alumno participa en un examen en línea con tiempo limitado,
    - Entonces el sistema debe mostrar claramente un contador regresivo visible que indique el tiempo restante para completar la prueba.

- **CA 6: Descarga de tareas y examenes**
    - Cuando el alumno o docente necesita obtener tareas y exámenes para trabajar sin conexión o conservarlos,
    - Entonces el sistema debe permitir la descarga de estos materiales en formatos comunes (PDF, DOC) preservando su estructura y contenido original.
___


#### Corrección automática con IA

**Descripción**

- Como docente, quiero que el sistema corrija automáticamente las respuestas de tareas y exámenes utilizando inteligencia artificial, para agilizar el proceso evaluativo y proporcionar calificaciones objetivas y consistentes sin intervención manual para respuestas de formato compatible.

**Criterios de aceptación**

- **CA 1: Procesamiento de respuestas**  
  - Cuando el alumno envía una tarea o examen con respuestas en formatos compatibles (por ejemplo, selección múltiple o verdadero/falso),  
  - Entonces el sistema enviará las respuestas al motor de IA para su evaluación.

- **CA 2: Asignación de calificaciones automáticas**  
  - Cuando la IA procesa las respuestas,  
  - Entonces el sistema asignará una nota numérica basada en criterios de evaluación predefinidos y mostrará el resultado tanto al docente como al alumno.

- **CA 3: Manejo de respuestas ambiguas o no evaluables**  
  - Cuando la IA detecte respuestas que no puedan evaluarse automáticamente (por ejemplo, respuestas abiertas o ambiguas),  
  - Entonces el sistema marcará dichas respuestas para revisión manual por parte del docente.

- **CA 4: Notificación de resultados**  
  - Cuando se complete el proceso de corrección automática,  
  - Entonces el sistema enviará una notificación informando a los usuarios que la evaluación ha finalizado y los resultados están disponibles.

___

#### Retroalimentación y notas

**Descripción**

- Como docente, quiero poder proporcionar retroalimentación detallada y asignar notas a las tareas y exámenes, ya sea de forma manual o complementada por la IA, para orientar a los alumnos sobre su desempeño y áreas de mejora.

**Criterios de aceptación**

- **CA 1: Envío de retroalimentación escrita**  
  - Cuando el docente agrega comentarios a una tarea o examen evaluado,  
  - Entonces el sistema deberá permitir la entrada de texto de retroalimentación junto con la calificación asignada.

- **CA 2: Visualización de retroalimentación y notas**  
  - Cuando el alumno revisa una actividad evaluada,  
  - Entonces el sistema mostrará la nota asignada y la retroalimentación detallada proporcionada por el docente.

- **CA 3: Edición de retroalimentación**  
  - Cuando el docente necesita modificar la retroalimentación antes de finalizar la evaluación,  
  - Entonces el sistema deberá permitir la edición de los comentarios y la actualización de la nota correspondiente.

- **CA 4: Generación de resumen de retroalimentación por IA**  
  - Cuando el docente opta por complementar su retroalimentación,  
  - Entonces el sistema podrá utilizar un modelo de IA para generar un resumen conciso que destaque los puntos clave de la evaluación.

- **CA 5: Seguridad y confidencialidad**  
  - Cuando se almacena la retroalimentación y las notas,  
  - Entonces el sistema asegurará que dicha información sea accesible únicamente para el docente y el alumno involucrado, cumpliendo con las normativas de privacidad.


___


#### Foro de preguntas y respuestas

**Descripción**

- Como usuario, quiero poder acceder a un foro de preguntas y respuestas dentro de la plataforma para interactuar con docentes y compañeros, resolver dudas y compartir conocimientos de manera colaborativa.

**Criterios de aceptación**

- **CA 1: Creación de preguntas**  
  - Cuando un usuario desea publicar una pregunta en el foro,  
  - Entonces el sistema deberá permitir la creación de una pregunta que incluya un título, una descripción detallada y la asignación de etiquetas o categorías relevantes.

- **CA 2: Publicación de respuestas**  
  - Cuando un usuario responde a una pregunta,  
  - Entonces el sistema deberá permitir la publicación de respuestas en formato de texto (y opcionalmente con recursos multimedia) que se adjunten a la pregunta original.

- **CA 3: Edición y eliminación de publicaciones**  
  - Cuando el autor de una pregunta o respuesta desea modificar o eliminar su publicación,  
  - Entonces el sistema deberá permitir la edición o eliminación de dicha publicación, siempre y cuando se cumplan las políticas de tiempo y moderación definidas.

- **CA 4: Votación y aceptación de respuestas**  
  - Cuando un usuario considera útil una pregunta o respuesta,  
  - Entonces el sistema deberá permitir que se emitan votos (positivos o negativos) y que el autor de la pregunta marque una respuesta como aceptada para resaltar la solución más adecuada.

- **CA 5: Filtrado y búsqueda de contenido**  
  - Cuando un usuario utiliza la funcionalidad de búsqueda o aplica filtros (por etiquetas, fecha, popularidad, etc.),  
  - Entonces el sistema deberá mostrar únicamente las preguntas y respuestas que cumplan con los criterios de búsqueda o filtro seleccionados.

- **CA 6: Notificaciones de actividad**  
  - Cuando se produzca actividad relevante en una pregunta (nuevas respuestas, comentarios o votos),  
  - Entonces el sistema deberá enviar notificaciones a los usuarios involucrados (autor de la pregunta, usuarios que han respondido o comentado).

- **CA 7: Paginación**  
  - Cuando existan numerosas preguntas en el foro,  
  - Entonces el sistema presentará los resultados paginados para facilitar la navegación y la carga eficiente de contenidos.

___


#### Chat de asistencia

**Descripción**

- Como usuario, quiero disponer de un chat de asistencia completamente gestionado por inteligencia artificial para resolver mis dudas en tiempo real, obtener información precisa y recibir recomendaciones automatizadas sin intervención humana, asegurando respuestas consistentes y rápidas.

**Criterios de aceptación**

- **CA 1: Acceso al chat IA**  
  - Cuando el usuario accede a la sección "Chat de Asistencia IA",  
  - Entonces el sistema mostrará una interfaz de chat interactiva exclusivamente gestionada por un bot de IA.

- **CA 2: Procesamiento de lenguaje natural**  
  - Cuando el usuario envía una consulta en lenguaje natural,  
  - Entonces el bot de IA interpretará la pregunta utilizando técnicas avanzadas de procesamiento de lenguaje natural para comprender la intención y el contexto.

- **CA 3: Respuestas inteligentes y contextualizadas**  
  - Cuando el usuario realiza una consulta,  
  - Entonces el bot de IA deberá proporcionar respuestas precisas, relevantes y adaptadas al contexto de la plataforma, incluyendo sugerencias y recursos adicionales cuando sea pertinente.

- **CA 4: Aprendizaje continuo**  
  - Cuando el bot de IA se enfrente a consultas desconocidas o ambiguas,  
  - Entonces registrará la interacción para análisis y mejora, permitiendo un proceso de aprendizaje continuo que optimice la calidad de sus respuestas futuras.

- **CA 5: Evaluación y feedback de las respuestas**  
  - Cuando el bot de IA responde a una consulta,  
  - Entonces el sistema ofrecerá al usuario la opción de calificar la respuesta y dejar comentarios, permitiendo así retroalimentación para ajustar y mejorar el desempeño del bot.


___


#### Notificaciones push y email

**Descripción**

- Como usuario, quiero recibir notificaciones push y correos electrónicos para estar informado de eventos importantes (por ejemplo, nuevas asignaciones, mensajes, recordatorios y actualizaciones) de manera oportuna, de modo que no me pierda información relevante y pueda actuar en consecuencia.

**Criterios de aceptación**

- **CA 1: Envío de notificaciones push**  
  - Cuando ocurre un evento relevante (como asignación de una nueva tarea, recepción de un mensaje o recordatorio de fecha límite),  
  - Entonces el sistema enviará una notificación push en tiempo real al dispositivo del usuario.

- **CA 2: Envío de notificaciones por correo electrónico**  
  - Cuando ocurre un evento relevante,  
  - Entonces el sistema enviará un correo electrónico con los detalles correspondientes a la dirección de correo registrada del usuario.

- **CA 3: Configuración de notificaciones**  
  - Cuando el usuario accede a la configuración de notificaciones,  
  - Entonces el sistema permitirá personalizar sus preferencias, pudiendo activar o desactivar notificaciones push y/o por email para distintos tipos de eventos.

- **CA 4: Seguridad y privacidad en el envío**  
  - Cuando se envían notificaciones,  
  - Entonces el sistema garantizará que la transmisión se realice de forma segura y que se respeten la integridad y privacidad de los datos del usuario.

- **CA 5: Registro y confirmación de envíos**  
  - Cuando se envía una notificación,  
  - Entonces el sistema registrará el evento de envío y, opcionalmente, mostrará una confirmación en la sección de configuración o mediante un log de actividad.



___



#### Estadísticas de desempeño estudiantil

**Descripción**

- Como docente, quiero poder ver estadísticas de desempeño de mis estudiantes en los cursos para monitorear su progreso, identificar áreas de mejora y ajustar mis estrategias de enseñanza de forma oportuna.

**Criterios de aceptación**

- **CA 1: Visualización de estadísticas globales**  
  - Cuando el docente accede a la sección "Estadísticas de desempeño estudiantil",  
  - Entonces el sistema mostrará indicadores globales como el promedio de calificaciones, la tasa de finalización de tareas y exámenes, y tendencias generales de desempeño.

- **CA 2: Filtrado por curso y periodo**  
  - Cuando el docente selecciona un curso y define un intervalo de tiempo específico,  
  - Entonces el sistema actualizará y mostrará las estadísticas detalladas correspondientes a ese curso y periodo.

- **CA 3: Desglose individual por estudiante**  
  - Cuando el docente selecciona un estudiante en particular dentro del curso,  
  - Entonces el sistema mostrará un desglose detallado del desempeño individual, incluyendo calificaciones, participación y progreso a lo largo del curso.

- **CA 4: Representación gráfica de datos**  
  - Cuando se visualizan las estadísticas,  
  - Entonces el sistema deberá representar la información mediante gráficos (por ejemplo, de barras o líneas) que faciliten la interpretación visual de los datos.

- **CA 5: Actualización en tiempo real**  
  - Cuando se registren nuevas evaluaciones, tareas o exámenes,  
  - Entonces el sistema actualizará automáticamente las estadísticas para reflejar el desempeño más reciente.

- **CA 6: Exportación de informes**  
  - Cuando el docente desee guardar o compartir las estadísticas,  
  - Entonces el sistema deberá permitir la exportación de los datos en formatos comunes (por ejemplo, PDF o Excel) para su análisis posterior.


___


#### Análisis de tendencias de aprendizaje

**Descripción**

- Como docente, quiero poder acceder a un análisis de tendencias de aprendizaje basado en los datos históricos de desempeño y participación de los estudiantes, para identificar patrones, detectar desviaciones y ajustar mis estrategias pedagógicas de forma proactiva.

**Criterios de aceptación**

- **CA 1: Agregación de datos históricos**  
  - Cuando el docente consulta la sección de análisis de tendencias,  
  - Entonces el sistema debe compilar datos históricos de desempeño, participación y evaluaciones de los estudiantes a lo largo de diferentes periodos.

- **CA 2: Visualización de tendencias a lo largo del tiempo**  
  - Cuando el docente selecciona un intervalo de tiempo específico,  
  - Entonces el sistema deberá generar gráficos y reportes que muestren la evolución de indicadores clave (calificaciones, participación, finalización de tareas, etc.) en ese periodo.

- **CA 3: Identificación de patrones y desviaciones**  
  - Cuando se realiza el análisis,  
  - Entonces el sistema debe resaltar patrones recurrentes y detectar desviaciones significativas en los indicadores de aprendizaje, facilitando la identificación temprana de áreas de mejora o éxito.

- **CA 4: Filtros y segmentación**  
  - Cuando el docente utiliza filtros (por curso, grupo de estudiantes, nivel, etc.),  
  - Entonces el sistema actualizará el análisis para mostrar tendencias específicas según los criterios seleccionados.

- **CA 5: Recomendaciones automatizadas**  
  - Cuando se detectan tendencias significativas (por ejemplo, disminución en las calificaciones o baja participación),  
  - Entonces el sistema, mediante un motor de IA, deberá generar recomendaciones automatizadas o sugerencias de intervenciones pedagógicas para abordar dichas tendencias.

___


#### Detección de plagio con IA

**Descripción**

- Como docente, quiero que el sistema utilice inteligencia artificial para detectar plagio en los trabajos y exámenes presentados, de modo que se asegure la originalidad de los contenidos y se mantengan los estándares académicos.

**Criterios de aceptación**

- **CA 1: Integración del motor de detección**  
  - Cuando se suba o entregue un trabajo o examen,  
  - Entonces el sistema enviará el contenido a un motor de IA especializado en detectar similitudes y plagio comparándolo con una base de datos de fuentes conocidas.

- **CA 2: Generación de informe detallado**  
  - Cuando se complete el análisis de plagio,  
  - Entonces el sistema generará un informe que incluya el porcentaje de similitud, las fuentes comparadas y los fragmentos coincidentes, permitiendo al docente evaluar la originalidad del contenido.

- **CA 3: Umbral de detección y notificación**  
  - Cuando el porcentaje de similitud supere un umbral predefinido,  
  - Entonces el sistema notificará al docente y marcará el trabajo para revisión, indicando la posible presencia de plagio.

- **CA 4: Gestión de falsos positivos**  
  - Cuando el sistema detecte similitudes que puedan ser falsos positivos,  
  - Entonces se deberá permitir al docente revisar el informe en detalle y confirmar o descartar la detección de plagio.

- **CA 5: Registro y seguimiento**  
  - Cuando se realice la detección de plagio,  
  - Entonces el sistema deberá almacenar un registro del análisis y sus resultados para futuras auditorías y referencia.


___


#### Gestión de usuarios y permisos

**Descripción**

- Como administrador, quiero poder gestionar los usuarios de la plataforma y asignar permisos adecuados para controlar el acceso a las funcionalidades y datos, de modo que se garantice la seguridad y se mantenga una administración eficiente del sistema.

**Criterios de aceptación**

- **CA 1: Visualización del listado de usuarios**  
  - Cuando el administrador accede a la sección de gestión de usuarios,  
  - Entonces el sistema mostrará una lista completa de los usuarios registrados, incluyendo información relevante como nombre, rol, estado (activo/bloqueado) y fecha de registro.

- **CA 2: Edición de roles y permisos**  
  - Cuando el administrador selecciona un usuario para modificar sus permisos o rol,  
  - Entonces el sistema deberá permitir actualizar estos datos y reflejar los cambios de acceso de forma inmediata, mostrando una confirmación de la actualización.

- **CA 3: Bloqueo y desbloqueo de usuarios**  
  - Cuando el administrador decide bloquear o desbloquear un usuario,  
  - Entonces el sistema cambiará el estado del usuario en consecuencia, impidiendo el acceso en caso de bloqueo y notificando la acción realizada.

- **CA 4: Registro de auditoría**  
  - Cuando se realice cualquier modificación en los roles o permisos de los usuarios,  
  - Entonces el sistema deberá registrar un log con la información de la acción, incluyendo el usuario afectado, el cambio realizado y la fecha/hora de la modificación.

- **CA 5: Validación de acciones**  
  - Cuando el administrador intente realizar una acción de modificación de permisos o roles,  
  - Entonces el sistema validará la operación para evitar conflictos o errores, mostrando mensajes de error claros en caso de datos inválidos o acciones no permitidas.


___

#### Configuración de reglas y normativas

**Descripción**

- Como administrador, quiero poder configurar y actualizar las reglas y normativas que rigen el uso de la plataforma para definir políticas de uso, restricciones y lineamientos de comportamiento. Esto garantizará un entorno seguro y el cumplimiento de los estándares institucionales y legales.

**Criterios de aceptación**

- **CA 1: Creación y actualización de reglas**  
  - Cuando el administrador accede a la sección de configuración de reglas,  
  - Entonces el sistema deberá permitir la creación de nuevas reglas y la actualización de las existentes, incluyendo campos como título, descripción, fecha de vigencia y condiciones de aplicación.

- **CA 2: Validación y consistencia**  
  - Cuando se ingresan nuevas reglas o se actualizan las existentes,  
  - Entonces el sistema validará que los datos sean correctos y consistentes, mostrando mensajes de error en caso de información incompleta o inconsistente.

- **CA 3: Publicación y notificación**  
  - Cuando el administrador finaliza la configuración de las reglas,  
  - Entonces el sistema publicará las normativas actualizadas y notificará a los usuarios relevantes mediante notificaciones push y/o correo electrónico.

- **CA 4: Registro de auditoría de cambios**  
  - Cuando se realicen modificaciones en las reglas y normativas,  
  - Entonces el sistema deberá registrar un log de auditoría que incluya el usuario que realizó el cambio, la naturaleza de la modificación y la fecha/hora de la acción.

- **CA 5: Acceso restringido y seguridad**  
  - Cuando el administrador accede a la sección de configuración,  
  - Entonces el sistema garantizará que solo los usuarios autorizados puedan realizar cambios, protegiendo la integridad y confidencialidad de la información.

___


#### Monitoreo de actividad y rendimiento

**Descripción**

- Como administrador, quiero poder monitorear la actividad y el rendimiento de la plataforma en tiempo real para detectar problemas, optimizar el uso de recursos y asegurar que todos los servicios funcionen de manera óptima.

**Criterios de aceptación**

- **CA 1: Visualización de indicadores clave**  
  - Cuando el administrador accede a la sección de monitoreo,  
  - Entonces el sistema mostrará indicadores clave (por ejemplo, uso de CPU, memoria, número de usuarios activos, tiempo de respuesta, etc.) en dashboards actualizados en tiempo real.

- **CA 2: Registro y acceso a logs**  
  - Cuando se produce cualquier evento relevante en la plataforma (errores, advertencias, acciones críticas),  
  - Entonces el sistema registrará automáticamente estos eventos y permitirá al administrador acceder a logs detallados para su análisis.

- **CA 3: Configuración de alertas y notificaciones**  
  - Cuando se detecten anomalías o se alcancen umbrales predefinidos (por ejemplo, alta latencia o caída de servicio),  
  - Entonces el sistema enviará alertas inmediatas al administrador mediante notificaciones push o correo electrónico.

- **CA 4: Reportes históricos y exportación**  
  - Cuando el administrador requiera analizar el rendimiento a lo largo del tiempo,  
  - Entonces el sistema deberá generar reportes históricos y permitir la exportación de estos datos en formatos comunes (por ejemplo, PDF o Excel).

- **CA 5: Escalabilidad y análisis predictivo (opcional)**  
  - Cuando se monitoree el rendimiento de la plataforma,  
  - Entonces el sistema podrá utilizar herramientas de análisis predictivo para identificar tendencias y sugerir acciones preventivas para mejorar la escalabilidad y el rendimiento general.


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

___

### Tecnologias

Stack de tecnologías recomendadas para el desarrollo de los distintos componentes.

#### Aplicación mobile

Para el desarrollo de la App se podrá optar por:
- Desarrollar sobre [React Native](https://reactnative.dev/) utilizando [JavaScript](https://developer.mozilla.org/es/docs/Web/JavaScript) como lenguaje de programación. 
- Desarrollar sobre [Android](https://developer.android.com/) nativo utilizando [Kotlin](https://kotlinlang.org/) como lenguaje de programación.

___

#### Servicios backend

Para el desarrollo de los servicios backend se deberá utilizar como lenguajes de programación:
- [Python](https://www.python.org/)
- [JavaScript](https://developer.mozilla.org/es/docs/Web/JavaScript)
- [Go](https://go.dev/)

Junto con sus respectivos frameworks. La cátedra recomienda alguno de estos
- Python:
  - [FastAPI](https://fastapi.tiangolo.com/)
  - [Flask](https://flask.palletsprojects.com/en/1.1.x/)
  - [Django](https://www.djangoproject.com/)
  - [Tornado](https://www.tornadoweb.org/en/stable/)
  
- JavaScript:
  - [NodeJs](https://nodejs.org/es/)
  - [Express](https://expressjs.com/)
  - [Fastify](https://www.fastify.io/)
  - [Nest.js](https://nestjs.com/)

 - GO:
   - [Gin](https://github.com/gin-gonic/gin)

Se recomiendan como base de datos alguna de las siguientes 
- [PostgreSQL](https://www.postgresql.org/)
- [MongoDB](https://www.mongodb.com/es)

Esta elección será responsabilidad del grupo y la misma deberá estar consensuada junto al ayudante. Además quedará justificada en la documentación técnica que formará parte del TP.

___

#### Backoffice web
Para el desarrollo del backoffice web se podrán utilizar las siguientes herramientas
  - [React](https://reactjs.org/)
  - [Vue.js](https://vuejs.org/)
  - [Next.js](https://nextjs.org/)

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


##### Mensajeria whatsapp/SMS
Para el uso de mensajería con SMS se recomienda utilizar el servicio provisto por [Twilio](https://www.twilio.com/docs/sms)

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

Para el monitoreo de los servicios se recomiendan alguna de las siguientes librerías/plataformas

- [Datadog](https://www.datadoghq.com/blog/datadog-github-student-developer-pack/)
- [New Relic](https://blog.newrelic.com/product-news/simple-pricing/)
- [Prometheus](https://prometheus.io/)
- [Grafana](https://grafana.com/)

___

### Empaquetamiento

Cada uno de los desarrollos solicitados debe empaquetarse según el estándar de la plataforma, es decir:

* _Python_: Python Setuptools (`setup.py` y `requeriments.txt`)
* _Node_: Node Package Manager (`npm`, `package.json`), Yarn Package Manager(https://yarnpkg.com/lang/en/)


Además, los proyectos backend deberán traer un `Dockerfile` que permita correrlos sin necesidad de tener instalado los respectivos lenguajes.

___

### Testing

El desarrollo de la aplicación se deberá adaptar a los estándares de calidad utilizados por AppMaker©. Dentro de estos estándares se encuentran:

* Pruebas unitarias
* Métricas: code coverage debe ser mayor a 75%
* Respetar estándar para estilo de codificación: Lint
* Pruebas de integración.
* Todas aquellas que se consideren convenientes para garantizar la calidad de las aplicaciones desarrolladas.
 
**Nota:** Esta sección hace sólo referencia a los servicios de backend No se toma como requerimiento el realizar pruebas sobre el cliente Android, aunque es recomendado como una buena práctica.

___

### CI-CD

Las pruebas y métricas anteriormente mencionadas deberán correr bajo una plataforma de integración continua. 

Se sugiere el uso de [GitHub Actions](https://github.com/features/actions) o [Gitlab Pipelines](https://docs.gitlab.com/ee/ci/pipelines/), pero se podrá utilizar otro previa justificación.

El resultado del _code coverage_ debe ser desplegado automáticamente a una plataforma que permita visualizarlas, entre muchas posibilidades se encuentran:

* [Coveralls](https://coveralls.io/)
* [Codecov](https://codecov.io/)
* Utilizar [Github Pages](https://pages.github.com/) para generar una web para visualizarlo

Finalmente, el despliegue al servidor de _PAAS_ elegido deberá ser automático. Este deberá tener en cuenta como la actualización de la base de datos (cambios en las tablas, etc). El mecanismo utilizado para disparar dicho despliegue (utilizar el branch _master_ como productivo, utilizar un tags con nombre especial) será definido por los desarrolladores y deberá ser detallado en la documentación

___

### Despliegue en la Nube

Los servicios, se deberán disponibilizar en la nube utilizando una plataforma como servicio (_[PAAS](https://en.wikipedia.org/wiki/Platform_as_a_service)_).
La catedra recomienda leer la (sección)[https://ingenieria-del-software-2.github.io/assignments/recommendations/] del sitio de la materia para informarse las distintas opciones disponibles
 

___

### Despliegue usando k8s

De manera optativa se podrá realizar una migración de los servicios backend de la plataforma a kubernetes

___

### UX

Se deberá presentar evidencia de prototipado del diseño de pantallas, las cuales serán convalidadas junto al ayudante a cargo

Para el diseño de la interfaz se valorara el uso de las guías de diseño propuestas por Google con _[Material Design](https://material.io/design/)_.


___

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

___

## Instancias de entrega

| Instancia   |      Fecha      |  Alcance |
|:----------|:-------------:|:------|
| Checkpoint 1 |  31/3 | Diagrama inicial de arquitectur, Tecnologías definidas, Herramienta de gestión definida.|
| Checkpoint 2 |  14/4 | Backlog comprometido, CI/CD (deploy y ejecución de tests junto con comprobación de coverage), e2e básico entre app y backend corriendo en cloud|
| Checkpoint 3 |  12/5 | Backlog comprometido, Herramientas de monitoreo integradas |
| Checkpoint 4 |  5/6  | Backlog comprometido |
| Entrega Final | 26/6 | App completa con requeridas y optativas, Documentación completa|
    
___

## Historias obligatorias y optativas


Las historias obligatorias y optativas se encuentran definidas 

### Obligatorias

| Epic                          | Required User stories                                       | Observaciones |
|------------------------------|------------------------------------------------------------|--------------|
| **Usuarios**                 | Registro de usuarios                                       |              |
|                              | Login de usuarios con email y contraseña                  |              |
|                              | Login de usuarios con proveedores de identidad federada   |              |
|                              | Registro Administradores                                   |              |
|                              | Login de administradores                                  |              |
| **Gestión de Perfiles**      | Edición de perfil                                         |              |
|                              | Visualización de perfil propio                            |              |
|                              | Visualización de perfil de otros usuarios                 |              |
| **Gestión de Clases**        | Creación y gestión de cursos                              |              |
|                              | Listado e inscripción a cursos                            |              |
|                              | Inscripción de estudiantes                                |              |
|                              | Organización de módulos y recursos                        |              |
|                              | Visualización de cursos                                   |              |
| **Asignaciones y Evaluaciones** | Creación de tareas y exámenes                      |              |
|                              | Completar tarea/rendir examen                             |              |
|                              | Listado de tareas/exámenes (docente)                     |              |
|                              | Listado de tareas/exámenes (alumno)                      |              |
|                              | Retroalimentación y notas                                | En esta US el CA 4: Generación de resumen de retroalimentación por IA es optativo |
| **Comunicación y Notificaciones** | Notificaciones push y email                      |              |
| **Métricas y Análisis**      | Estadísticas de desempeño estudiantil                     |              |
| **Administración de la Plataforma** | Gestión de usuarios y permisos               |              |


### Optativas

| Epic                           | Optional User stories                                     | Points |
|--------------------------------|-----------------------------------------------------------|------------------------------|
| **Usuarios**                   | Login con datos biométricos                               | 3                            |
|                                | Recupero de contraseña                                    | 2                            |
|                                | Notificación de PIN en proceso de registro                | 3                            |
| **Gestión de Clases**          | Docentes auxiliares                                       | 5                            |
|                                | Cursos favoritos                                          | 2                            |
|                                | Visualización de cursos favoritos                         | 2                            |
|                                | Feedback de cursos                                        | 3                            |
|                                | Feedback de alumnos                                       | 3                            |
|                                | Visualización de feedbacks como alumno                    | 3                            |
|                                | Visualización de feedbacks del curso                      | 3                            |
| **Asignaciones y Evaluaciones**| Corrección automática con IA                              | 8                            |
|                                | Retroalimentación y notas                                 | 5                            |
| **Comunicación y Notificaciones**| Foro de preguntas y respuestas                         | 5                            |
|                                | Chat de asistencia                                        | 8                            |
| **Métricas y Análisis**        | Análisis de tendencias de aprendizaje                     | 8                            |
|                                | Detección de plagio con IA                                | 8                            |
| **Administración de la Plataforma** | Configuración de reglas y normativas             | 5                            |
|                                | Monitoreo de actividad y rendimiento                      | 5                            |
| **Miscelaneo**                 | Uso de queues para métricas                               | 8                            |
|                                | Uso de k8s                                                | 8                            |
|                                | **Total**                                                 | **97**                       |


| Grupo       | Puntos a Pedir |
|-------------|----------------|
| Grupo de 6  | 60             |
| Grupo de 5  | 50             |
| Grupo de 4  | 40             |
