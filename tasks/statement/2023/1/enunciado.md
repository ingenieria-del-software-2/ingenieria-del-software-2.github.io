# FiuFit


## Indice

1. [Descripción](#descripción)
2. [Condiciones de aprobación](#condiciones-de-aprobación)
3. [Requisitos](#requisitos)
    1. [Épicas](#epicas)
       1. [Usuarios](#usuarios)
       2. [Perfil](#perfil)
       3. [Búsquedas](#búsquedas)
       4. [Atleta](#atleta)
       5. [Trainer](#trainer)
       6. [Mensajes](#mensajes)
       7. [Calificaciones](#calificaciones)
       8. [Cobros y pagos](#cobros-y-pagos)
       9. [Notificaciones](#Notificaciones)
       11. [Administración de usuarios](#administración-de-usuarios)
       12. [Administración de contenidos](#administración-de-contenidos)
       13. [Administración de servicios](#administración-de-servicios)
       14. [Métricas](#métricas)
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

Una importante empresa ha decidido encargarnos el desarrollo de una plataforma digital llamada FiuFit la cual permite a los usuarios realizar un seguimiento de sus entrenamientos y actividad física, establecer y realizar un seguimiento de los objetivos de fitness y ver su progreso a lo largo del tiempo
El espíritu de esta plataforma es poder brindar una conexión entre los usuarios y los entrenadores, para poder así lograr sus objetivos.


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

### Épicas

<!-- Registro y login -->

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
 - [Notificación de PIN en proceso de registro](#notificación-de-pin-en-proceso-de-registro)

<!-- Perfil -->

#### Perfil

Como usuario quiero poder editar mi perfil y acceder tanto a mi perfil como al de otros usuarios para conocer y que me conozcan otros usuarios.

Historias de usuario relacionadas:
 - [Edición de perfil](#edición-de-perfil)
 - [Visualización de perfil propio](#visualización-de-perfil-propio)
 - [Visualización de perfil de otros usuarios](#visualización-de-perfil-de-otros-usuarios)

<!-- Búsquedas -->

#### Búsquedas
Como atleta quiero poder realizar búsquedas de entrenamientos o entrenadores con distintos filtros para visualizar los que me interesen

Historias de usuario relacionadas:
 - [Búsquedas por tipo de entrenamiento](#búsqueda-por-tipo-de-entrenamiento)
 - [Búsquedas por dificultad](#búsqueda-por-dificultad)
 - [Búsquedas por cercanía](#búsqueda-por-cercania)
 - [Recomendación de entrenamientos](#recomendación-de-entrenamientos)
 
<!-- Atleta-->

#### Atleta

Como Atleta quiero poder utilizar la app para monitorear el entrenamiento en base a las metas que me desafíen. También quiero conectarme con otros atletas y compartir mis logros.

Historias de usuario relacionadas:
 - [Monitoreo de entrenamiento](#monitoreo-de-entrenamiento)
 - [Establecimiento de metas](#establecimiento-de-metas)
 - [Seguir usuario](#seguir-usuario)
 - [Entrenamientos favoritos](#entrenamientos-favoritos)
 - [Redes sociales](#redes-sociales)

<!-- Trainer -->

#### Trainer

Como entrenador quiero crear planes de entrenamientos para ayudar a los atletas a lograr sus metas

Historias de usuario relacionadas:
 - [Creación de plan de entrenamiento](#creación-de-plan-de-entrenamiento)
 - [Edición de plan de entrenamiento](#edición-de-plan-de-entrenamiento)
 - [Listado de plan de entrenamiento](#listado-de-plan-de-entrenamiento)
 - [Transmisión en directo](#transmisión-en-directo)
 - [Métricas del entrenador](#métricas-del-entrenador)
 - [Certificado de entrenador reconocido](#certificado-de-entrenador-reconocido)


<!-- Mensajes TODO-->

#### Mensajes

Como atleta o entrenador quiero poder enviar mensajes directos.
 
Historias de usuario relacionadas:
 - [Mensajes directos](#mensajes-directos)
 
 <!-- Calificaciones -->


#### Calificaciones

Como atleta quiero poder calificar los planes de entrenamiento que existen en la plataforma.

Historias de usuario relacionadas:
 - [Calificación cuantitativa de un plan de entrenamiento](#calificación-cuantitativa-de-un-plan-de-entrenamiento)
 - [Calificación cualitativa de un plan de entrenamiento](#calificación-cualitativa-de-un-plan-de-entrenamiento)

<!-- Cobros y pagos -->

#### Cobros y pagos

Como usuario quiero poder tener una billetera virtual en la plataforma para poder hacer pagos, retirar y depositar.

Historias de usuario relacionadas:
 - [Aporte para entrenador](#aporte-para-entrenador)
 - [Retiro de fondos](#retiro-de-fondos)
 - [Utilización de stablecoin](#utilización-de-stablecoin)
 
<!-- Notificaciones TODO-->

#### Notificaciones

Como usuario quiero recibir notificaciones al dispositivo que utilizo para informarme sobre actividades en la plataforma

Historias de usuario relacionadas:
 - [Notificación por nuevo mensaje](#notificación-por-nuevo-mensaje)
 - [Notificación por meta cumplida](#notificación-por-meta-cumplida)
 - [Notificación por transmisión en directo](#notificación-por-transmisión-en-directo)
 - [Notificación por hito de seguidores](#notificación-por-hito-de-seguidores)
 

<!-- Administración de usuarios TODO -->

#### Administración de usuarios

Como administrador del sistema quiero poder gestionar los usuarios que están registrados en el mismo para administrar su uso

Historias de usuario relacionadas:
 - [Listar usuarios del sistema](#listar-usuarios-del-sistema)
 - [Visualizar perfil de usuario](#visualizar-perfil-de-usuario)
 - [Bloquear usuario](#bloquear-usuario)
 - [Listar transacciones](#listar-transacciones)
 - [Carga de saldo](#carga-de-saldo)

<!-- Administración de contenido TODO -->

#### Administración de contenido

Como administrador del sistema quiero poder gestionar el contenido que se encuentran en el mismo para administrar su uso

Historias de usuario relacionadas:
 - [Listado de planes de entrenamiento](#listado-de-planes-de-entrenamiento)
 - [Visualización de plan de entrenamiento](#visualización-de-plan-de-entrenamiento)
 - [Bloqueo de plan de entrenamiento](#bloquear-plan-de-entrenamiento)
 - [Aprobar solicitud de entrenador reconocido](#aprobar-solicitud-de-entrenador-reconocido)


<!-- Administración de servicios TODO -->

#### Administración de servicios

Como administrador del sistema quiero poder gestionar los servicios que se encuentran en el mismo para administrar su uso

Historias de usuario relacionadas:
 - [Listado de servicios](#listado-de-servicios)
 - [Visualización de servicio](#visualización-de-servicio)
 - [Alta de servicio](#alta-de-servicio)
 - [Bloqueo de servicio](#bloquear-de-servicio)

<!-- Metricas TODO -->

#### Métricas

Como administrador del sistema quiero poder visualizar métricas e información de la plataforma para evaluar el estado del negocio

Historias de usuario relacionadas:
- [Métricas de usuarios](#métricas-de-usuarios)
- [Métricas de contenido](#métricas-de-contenido)
- [Métricas de transacciones](#métricas-de-transacciones)

___

### Historias de Usuario

<!-- Registro y login -->
___

#### Registro de usuarios

**Descripción**

- Como usuario no registrado quiero registrarme en la plataforma para acceder a las funcionalidades del sistema. El usuario podrá utilizar los distintos perfiles en la cuenta, donde ambos perfiles no son excluyentes: 

- Atleta: Es el usuario que usa la aplicación para realizar un seguimiento de sus actividades físicas.
- Trainer: Es el usuario que brinda orientación y consejos a los atletas sobre cómo lograr sus objetivos de acondicionamiento físico.. Una característica fundamental que lo distingue, es que puede recibir pagos de sus seguidores 

_En el resto de los CA se utilizará la nomenclatura Usuario como un usuario registrado_

**Criterios de aceptación**

- CA 1: Registro exitoso
  - Cuando el registro del usuario es correcto.
  - Entonces el sistema creará un nuevo usuario con su perfil y billetera correspondiente. Luego permitirá el ingreso al sistema.
- CA 2: Obtención de ubicación
  - Cuando el registro del usuario es correcto.
  - Entonces el sistema deberá solicitarle al usuario una ubicación predeterminada
- CA 3: Obtención de perfil (Para atletas)
  - Cuando el registro del usuario es correcto.
  - Entonces el sistema deberá solicitarle al usuario cuales son sus intereses y metas. 
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


#### Búsquedas por tipo de entrenamiento

**Descripción**

- Como atleta quiero poder realizar búsquedas de distintos tipos de entrenamiento para así poder descubrir nuevas maneras de entrenar

**Criterios de aceptación**
- CA 1: Filtrado por tipo de entrenamiento
  - Cuando se realiza una búsqueda utilizando un filtrado por tipo de entrenamiento
  - Entonces se deberán retornar los entrenamientos que cumplan dichos filtros.
- CA 2: Búsqueda sin resultados
  - Cuando se realiza una búsqueda utilizando un filtrado y no existe contenido que cumpla tal condición
  - Entonces se deberá notificar al usuario que no existen resultados para su búsqueda.
___

#### Búsqueda por dificultad

**Descripción**

- Como atleta quiero poder realizar búsquedas de distintas dificultades de entrenamiento para visualizar su información y así poder incluirlos en mi rutina


**Criterios de aceptación**
- CA 1: Filtrado por  dificultad
  - Cuando se realiza una búsqueda utilizando como filtro el nivel de dificultad de un entrenamiento
  - Entonces se deberán retornar los entrenamientos que se encuentren en dicha dificultad.
- CA 2: Búsqueda sin resultados
  - Cuando se realiza una búsqueda utilizando un filtrado y no existe contenido que cumplan tal condición
  - Entonces se deberá notificar al usuario que no existen resultados para su búsqueda.

___

#### Búsqueda por cercanía

**Descripción**

- Como atleta quiero poder realizar búsquedas de entrenadores por cercania para visualizar su información y así poder contactarlos

**Criterios de aceptación**
- CA 1: Filtrado por cercania
  - Cuando se realiza una búsqueda utilizando como filtro la cercania de los entrenadores
  - Entonces se deberán retornar los entrenadores que se encuentren a la distancia indicada en el filtro
- CA 2: Búsqueda sin resultados
  - Cuando se realiza una búsqueda utilizando un filtrado y no existe contenido que cumplan tal condición
  - Entonces se deberá notificar al usuario que no existen resultados para su búsqueda.
___

#### Recomendación de entrenamientos

**Descripción**

- Como atleta quiero por recibir recomendaciones de entrenamientos basadas en mis intereses y disponibles según mi ubicación geográfica.

**Criterios de aceptación**
- CA 1: Recomendación por zona geográfica
  - Se requiere brindar un servicio en el que dado una serie de reglas definidas por los administradores, deberán definir si los entrenamientos que se encuentren en dicha región están disponibles o no
- CA 1: Recomendación por intereses
  - Se requiere recibir recomendaciones de entrenamientos según mis intereses definidos al momento de registrarse y la interacción con la plataforma

<!-- Atleta -->

___

#### Monitoreo de entrenamiento

**Descripción**

- Como atleta quiero poder realizar un seguimiento de como es la evoluciòn de mis entrenamientos. Para esto se brindaran distintas métricas donde pueda 
encontrar toda la información que me permite controlar el estado de los mismos

**Criterios de aceptación**

- CA 1: Panel de métricas 
  - Cuando se ingresa al panel de métricas 
  - Entonces se deberá visualizar las métricas siguientes métricas dentro de un período de tiempo:
    - Distancia recorrida 
    - Tiempo utilizado 
    - Calorias utilizadas
    - Cantidad de hitos realizados
    - Tipo de actividad realizada
  - En caso de que no se encuentre ninguna métrica, deberá visualizarse un mensaje claro que indique dicha situaciòn.

- CA 2: Modificación del período
- Cuando se modifique el período en el cual se visualizan las métricas
- Entonces se deberán mostrar las métricas asociadas a dicho período

___

#### Establecimiento de metas

**Descripción**

- Como atleta quiero poder establecerme ciertas metas para asi poder tener distintos desafios a cumplir

**Criterios de aceptación**

- CA 1: Creación de meta
  - Cuando se crea una meta
  - Entonces se deberá solicitar la siguiente información: 
    - Titulo
    - Descripción
    - Métrica a cumplir
    - Limite de tiempo (opcional)
  Y dicha meta se encontrará listada y activa para cumplirse.

- CA 2: Modificación de meta
  - Cuando requiera modificar una meta
  - Entonces se deberá permitir modificar la descripciòn de la misma. También se permitirá incluir material multimedia (fotos y videos) asociados a la misma

- CA 3: Eliminar meta
  - Cuando se elimine una meta
  - Entonces no debera listarse en las metas del usuario

- CA 4: Listado de metas
  - Cuando se necesite visualizar las metas de un usuario
  - Entonces se deberá listar todas las metas del mismo.

- CA 5: Visualización de meta
  - Cuando se necesite visualizar la información de una meta
  - Entonces se accedera a una pantalla donde se encuentre toda la información relevante de la misma.

- CA 6: Cumplimiento de metas
  - Cuando se cumpla con la métrica definida en la meta
  - Entonces se deberá modificar el estado de la misma como cumplida.

___

#### Seguir atleta

**Descripción**

- Como usuario quiero poder seguir a otros usuarios de mi preferencia para poder encontrarlos de una manera mas sencilla en la plataforma

**Criterios de aceptación**

- CA 1: Comenzar a seguir un usuario
  - Cuando realiza click sobre el botón 'Seguir'
  - Entonces se deberá agregar al usuario al listado de usuarios seguidos


- CA 2: Dejar de seguir un usuario
  - Cuando realiza click sobre el botón 'Dejar de Seguir'
  - Entonces se deberá quitar al usuario al listado de usuarios seguidos

- CA 3: Listado de usuario seguidos
  - Cuando se ingrese a la pantalla de usuarios seguidos
  - Entonces se deberá listar el total de los usuarios que el usuario sigue.

- CA 4: Listado de seguidores
  - Cuando se ingrese a la pantalla de seguidores
  - Entonces se deberá listar el total de los usuarios que siguen mi cuenta.

___


#### Entrenamientos favoritos

**Descripción**

- Como atleta quiero poder guardar mis entrenamientos preferidos para acceder de una manera mas simple a estos

**Criterios de aceptación**

- CA 1: Agregar entrenamiento a favoritos
  - Cuando realiza click sobre el botón 'Favoritos' en un entrenamiento
  - Entonces se deberá agregar dicho entrenamiento al listado de entrenamientos favoritos


- CA 2: Quitar contenido de favoritos
  - Cuando realiza click sobre el botón 'Quitar de Favoritos' en un entrenamiento
  - Entonces se deberá quitar dicho contenido al listado de entrenamientos favoritos


- CA 3: Listado de entrenamientos favoritos
  - Cuando se ingrese a la pantalla de entrenamientos favoritos
  - Entonces se deberá listar el total de los entrenamientos favoritos del usuario.

___


#### Redes sociales

**Descripción**

- Como atleta quiero compartir mis metas cumplidas en las redes sociales

**Criterios de aceptación**

- CA 1: Compartir en red Social
  - Cuando realiza click sobre el botón 'Compartir en redes sociales' 
  - Entonces se deberá compartir dicho contenido en la red social que el usuario seleccione


<!-- Trainer -->

___

#### Creación de plan de entrenamiento

**Descripción**
- Como entrenador quiero poder crear un plan de entrenamiento para que luego sea utilizado por los atletas de la plataforma

**Criterios de aceptación**
- CA 1: Creación exitosa
  - Cuando un entrenador realice un nuevo plan de entrenamiento. Se solicitarán datos como:
  
    - Titulo: Titulo principal del plan de entrenamiento
    - Descripción: Descripción del plan de entrenamiento
    - Tipo de entrenamiento: Definir si es caminata, running, etc.
    - Dificultad: Dificultad del plan de entrenamiento
    - Recursos multimedia: De manera optativa se podrán adjuntar imagenes o videos al entrenamiento.
    - Metas: Metas a cumplir para finalizar el entrenamiento
    - Otros

- CA 2: Creación fallida
  - Cuando un entrenador realice un plan de entrenamiento con información faltante y/o erronea.
  - Entonces el sistema deberá informarle que no es una operación permitida.

___

#### Edición de plan de entrenamiento

**Descripción**
- Como entrenador quiero poder modificar un plan de entrenamiento para actualizar su contenido

**Criterios de aceptación**
- CA 1: Edición de datos exitosa
  - Cuando un entrenador realice la edición de datos editables (Imágenes, título, descripción, etc)
  - Entonces al confirmar los nuevos cambios, estos se verán reflejados en el plan de entrenamiento.
- CA 2: Edición de datos fallida
  - Cuando un entrenador realice la edición de datos con datos erróneos y/o inválidos.
  - Entonces el sistema deberá informarle que no es una operación permitida.


___

#### Listado de entrenamientos

**Descripción**
- Como entrenador me gustaría tener la capacidad de visualizar una lista de los planes de entrenamiento que he creado

**Criterios de aceptación**
- CA 1: Listado de entrenamientos sin filtrar
  - Cuando un entrenador ingrese a la pantalla de "Mis entrenamientos" 
  - Entonces se deberán listar todos los entrenamientos que el entrenador creo
- CA 2: Filtrado de entrenamientos
  - Cuando un entrenador ingrese a la pantalla de "Mis entrenamientos" y aplique alguno de los filtros (tipo, titulo, etc)
  - Entonces se deberán listar todos los entrenamientos que el entrenador creo y cumplan con los criterios de los filtros

___


#### Transmisión en directo

**Descripción**
- Como entrenador quiero poder realizar transmisiones en directo para que mis atletas puedan acceder a este contenido inédito en vivo.

**Criterios de aceptación**

- CA 1: Realización de transmisión en directo
  - Cuando un entrenador comience una transmisión en directo.
  - Entonces todo usuario que este habilitado a acceder a dicho contenido, podrá realizarlo en tal momento.

- CA 2: Guardado de transmisión en directo
  - Cuando un entrenador indique se una transmisión en directo puede ser guardada.
  - Entonces al finalizar, dicha transmisión deberá ser guardada en el dispositivo desde donde se realizó. 

___


#### Métricas del entrenador

**Descripción**
- Como entrenador quiero poder visualizar las métricas de un entrenamiento para revisar su evolución.

**Criterios de aceptación**
- CA 1: Visualización de métricas de un entrenamiento
  - Cuando un entrenador ingrese a las métricas de un entrenamiento.
  - Entonces podrá visualizar información asociada al entrenamiento como:
    - Cantidad de likes.
    - Cantidad 
    - Cantidad de favoritos.
    - Etc.
___


#### Certificado de entrenador reconocido

**Descripción**
- Como entrenador quiero poder obtener un reconocimiento que indique que soy un entrenador reconocido por dicha plataforma, para poder avalar mi identidad en la misma.

**Criterios de aceptación**

- CA 1: Solicitud de entrenador reconocido
  - Cuando un entrenador solicite a la plataforma ser reconocido como entrenador .
  - Entonces deberá enviar un video que avale su identidad a los administradores de la misma.

- CA 2: Aprobación como entrenador reconocido
  - Cuando un entrenador obtenga el reconocimiento de su identidad por parte de los administradores de la plataforma.
  - Entonces podrá indicar en su perfil que es un entrenador reconocido.


<!-- Comments-->
___

#### Mensajes privados
- Como usuario quiero poder enviar mensajes privados a otro usuario de la plataforma

**Criterios de aceptación**

- CA 1: Mensaje directo
  - Cuando se realiza un mensaje directo
  - Entonces solo los involucrados podrán leer el mismo y se deberá mantener una conversación en tiempo real por mensajes


<!-- Calificaciones-->

___

#### Calificación cuantitativa de un plan de entrenamiento

**Descripción**
- Como atleta quiero poder realizar una calificación cuantitativa de un plan de entrenamiento para así poder brindar mi opinión de este.

**Criterios de aceptación**
- CA 1: Calificación de plan de entrenamiento
  - Cuando un atleta realiza una calificación cuantitativa de un plan de entrenamiento. Por ejemplo, utilizando una escala del 1 al 5
  - Entonces esta calificación afectará la calificación del plan de entrenamiento 
___

#### Calificación cualitativa de un plan de entrenamiento

**Descripción**
- Como atleta quiero poder realizar una opinion mas detallada del plan de entrenamiento para así poder brindar mi opinión de este.

**Criterios de aceptación**

- CA 1: Calificación
  - Cuando un atleta realiza una calificación utilizando comentarios para un plan de entrenamiento.
  - Entonces esta calificación luego podrá ser visualizada por otros usuarios.

 <!-- Cobros y pagos -->

___

#### Aporte para entrenador

**Descripción**

- Como atleta quiero poder realizar aportes financieros a un entrenador cuando quiera reconocer su trabajo.

**Criterios de aceptación**

- CA 1: Pago exitoso
  - Cuando un pago se realiza de manera exitosa.
  - Entonces se ejecutará el flujo correspondiente a un aporte y deberá verse reflejado tanto en la wallet del usuario que paga como el que recibe
- CA 2: Pago con error
  - Cuando un pago NO se realiza de manera exitosa.
  - Entonces NO se ejecutará el flujo correspondiente a un aporte y deberá notificarse dicho error.

___

#### Retiro de fondos

**Descripción**

- Como entrenador quiero extraer los fondos que fueron recolectados de los aportes de los atletas.
**Criterios de aceptación**

- CA 1: Retiro de fondos exitoso
  - Cuando un artista solicita un retiro de fondos y se cumplen las regla de negocio pautadas.
  - Entonces se podrá realizar el retiro de fondos a la wallet indicada por el artista.

- CA 2: Retiro de fondos fallido
  - Cuando un artista solicita un retiro de fondos del contenido y aún no se cumplen las regla de negocio pautadas.
  - Entonces NO se podrá realizar el retiro de fondos

___

#### Utilización de stablecoin

**Descripción**

- Como usuario del sistema quiero que el sistema acepte una stablecoin como método de intercambio de valor para no preocuparme por la volatilidad del ETH
**Criterios de aceptación**

- CA 1: Retiro de fondos
  - Cuando un trainer solicita un retiro de fondos de su cuenta y se cumplen las regla de negocio pautadas.
  - Entonces el pago se ejecuta a traves de una stablecoin


- CA 2: Carga de saldo
  - Cuando un administrador enviá saldo a una usuario a traves del sistema
  - Entonces el pago se ejecuta a traves de una stablecoin



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


#### Notificación por meta cumplida

**Descripción**
- Como atleta quiero poder recibir una notificación en caso de haber completado una meta 

**Criterios de aceptación**
- CA 1: Pantalla de notificaciones
  - Cuando un atleta cumple con alguna de las metas que tiene definida
  - Entonces deberá poder visualizar una notificación en la aplicación para acceder a dicho mensaje 
- CA 2: Notificación push.
  - Cuando un atleta cumple con alguna de las metas que tiene definida
  - Entonces deberá recibir notificación push en la aplicación para acceder a dicho mensaje
- CA 3: Notificación whatsapp:
  - Cuando un atleta cumple con alguna de las metas que tiene definida
  - Entonces deberá poder recibir un mensaje de whatsapp para informarse de dicho cambio.

___


#### Notificación por transmisión en directo

**Descripción**
- Como atleta quiero poder recibir una notificación en caso existir una transmision en directo de alguno de los entrenadores que sigo en la plataforma

**Criterios de aceptación**
- CA 1: Pantalla de notificaciones
  - Cuando un entrenador realiza una transmisión en directo.
  - Entonces todo atleta que cumpla con las condiciones de negocio deberá poder visualizar una notificación en la aplicación para acceder a dicho mensaje
- CA 2: Notificación push.
  - Cuando un entrenador realiza una transmisión en directo.
  - Entonces todo atleta que cumpla con las condiciones de negocio deberá recibir notificación push en la aplicación para acceder a dicho mensaje

___


#### Notificación por hito de seguidores

**Descripción**
- Como usuario quiero poder recibir una notificación en caso que nuevos usuarios empiecen a seguir mi perfil


**Criterios de aceptación**
- CA 1: Pantalla de notificaciones
  - Cuando un usuario logra nuevos seguidores.
  - Entonces deberá poder visualizar una notificación en la aplicación para acceder a dicho mensaje
- CA 2: Notificación push.
  - Cuando un usuario logra nuevos seguidores.
  - Entonces deberá recibir notificación push en la aplicación para acceder a dicho mensaje

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


<!-- Administración de contenidos -->
___

#### Listado de planes de entrenamiento

**Descripción**
- Como administrador del sistema quiero poder listar todas los planes de entrenamiento que se encuentren en el sistema para acceder a ellos 

**Criterios de aceptación**
- CA 1: Listado con planes de entrenamiento existentes
 - Cuando un administrador solicita visualizar el listado de planes de entrenamiento en la plataforma
 - Entonces se deberán listar todos los planes de entrenamiento existentes en el sistema
- CA 2: Listado con planes de entrenamiento existentes utilizando filtros
 - Cuando un administrador solicita visualizar el listado de plan de entrenamientso en la plataforma y aplica un filtrado 
 - Entonces se deberán listar todos los planes de entrenamiento existentes en el sistema que cumplan con dichos filtros

___

#### Visualización de plan de entrenamiento

**Descripción**
- Como administrador del sistema quiero poder visualizar un plan de entrenamiento para verificar su contenido. 

**Criterios de aceptación**
- CA 1: Visualización de plan de entrenamiento 
 - Cuando un administrador visualiza el plan de entrenamiento existente en la plataforma
 - Entonces se deberá poder visualizar todos sus datos asociados
___

#### Bloqueo de plan de entrenamiento

**Descripción**
- Como administrador del sistema quiero poder bloquear un plan de entrenamiento que se encuentren en el sistema para que no puedan acceder al mismo

**Criterios de aceptación**
- CA 1: Bloqueo exitoso 
 - Cuando un administrador realiza el bloqueo de un plan de entrenamiento existente en la plataforma
 - Entonces se deberá visualizar que el plan de entrenamiento está bloqueado y los usuarios no deberán poder acceder a él en la aplicación
- CA 2: Desbloqueo exitoso 
 - Cuando un administrador realiza el desbloqueo de un plan de entrenamiento existente en la plataforma
 - Entonces se deberá visualizar que el plan de entrenamiento no esta bloqueado y los usuarios deberán poder acceder a el en la aplicación
 
 
___

#### Aprobar solicitud de entrenador reconocido

**Descripción**
- Como administrador del sistema quiero poder aprobar o no las solicitudes de entrenador reconocido 

**Criterios de aceptación**
- CA 1: Visualización de solicitudes de entrenador reconocido
 - Cuando un administrador entra a la pantalla de solicitudes de entrenador reconocido
 - Entonces se deberá poder visualizar dichas solicitudes

- CA 2: Solicitud de entrenador reconocido aprobada
 - Cuando un administrador aprueba una solicitud de entrenador reconocido
 - Entonces dicha solicitud deberá cambiar su estado acorde a esta aprobación

- CA 2: Solicitud de entrenador reconocido denegada
 - Cuando un administrador deniega una solicitud de entrenador reconocido
 - Entonces dicha solicitud deberá cambiar su estado acorde a esta aprobación
___

#### Bloqueo de plan de entrenamiento

**Descripción**
- Como administrador del sistema quiero poder bloquear un plan de entrenamiento que se encuentren en el sistema para que no puedan acceder al mismo

**Criterios de aceptación**
- CA 1: Bloqueo exitoso 
 - Cuando un administrador realiza el bloqueo de un plan de entrenamiento existente en la plataforma
 - Entonces se deberá visualizar que el plan de entrenamiento está bloqueado y los usuarios no deberán poder acceder a él en la aplicación
- CA 2: Desbloqueo exitoso 
 - Cuando un administrador realiza el desbloqueo de un plan de entrenamiento existente en la plataforma
 - Entonces se deberá visualizar que el plan de entrenamiento no esta bloqueado y los usuarios deberán poder acceder a el en la aplicación
 




<!-- Administración de transacciones -->
 ___

#### Listar transacciones

**Descripción**

- Como administrador del sistema quiero poder listar todas las transacciones de aportes para poder controlar su uso de la plataforma

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
- CA 6: Métricas de recupero de contraseña  
- CA 7: Métricas de usuarios por zona geográfica

___
#### Métricas de entrenamientos

**Descripción**
- Como administrador del sistema quiero poder visualizar las métricas de entrenamientos para medir el uso de la plataforma y sus servicios

**Criterios de aceptación**
- CA 1: Métricas de nuevos entrenamientos
- CA 2: Métricas de entrenamientos por tipo
- CA 3: Métricas de usuarios 
- CA 4: Métricas de contenidos por usuario

___

#### Métricas de transacciones

**Descripción**
- Como administrador del sistema quiero poder visualizar las métricas de transacciones para medir el uso de la plataforma y sus servicios

**Criterios de aceptación**
- CA 1: Metricas de aportes


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
La catedra recomienda leer la sección <<COMPLETAR>> del sitio de la materia para informarse las distintas opciones disponibles
 

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
| Checkpoint 0 |  23/3 | A definir |
| Checkpoint 1 |  13/4 | A definir |
| Checkpoint 2 |  11/5 | A definir |
| Checkpoint 3 |  8/6  | A definir |
| Entrega Final | 29/6 | A definir |
    
## Historias obligatorias y optativas

### Obligatorias

- Usuarios	
    - Registro de usuarios
    - Login de usuarios con email y contraseña
    - Login de usuarios con proveedores de identidad federada
    - Registro Administradores
    - Login de administradores
    - Perfil	Edición de perfil
    - Visualización de perfil propio
    - Visualización de perfil de otros usuarios
- Búsquedas	
    - Búsquedas por tipo de entrenamiento
    - Búsquedas por cercanía
- Atleta	
 	- Monitoreo de entrenamiento
 	- Establecimiento de metas
	- Seguir usuario
- Trainer	
    - Creación de plan de entrenamiento
    - Edición de plan de entrenamiento
    - Listado de planes de entrenamiento
- Mensajes	
    - Mensajes directos
- Calificaciones	
    - Calificación cuantitativa de un plan de entrenamiento
- Notificaciones	
    - Notificación por nuevo mensaje
    - Notificación por meta cumplida
- Administración de usuarios	
    - Listar usuarios del sistema
    - Visualizar perfil de usuario
- Administración de contenidos	
    - Listado de planes de entrenamiento
    - Visualización de plan de entrenamiento
- Métricas	
    - Métricas de usuarios


### Optativas
    
## Material de referencia
  
- Conectividad con google fit
  - https://developers.google.com/fit/  
  - https://docs.expo.dev/versions/latest/sdk/pedometer/
  - https://developers.google.com/fit/android/record 
- Calculo de calorias utilizadas
   -  https://www.healthline.com/health/what-are-mets#:~:text=The%20formula%20to%20use%20is,200%20%3D%2010.2%20calories%20per%20minute.
