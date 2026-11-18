# Régimen de Aprobación

## Correlativas

| Código | Materia                                            | Correlativas                                                      |
| :----: | -------------------------------------------------- | ----------------------------------------------------------------- |
| TA049  | Ingeniería del Software II                         | Base de Datos · Ingeniería de Software I · Taller de Programación |
|  9521  | Métodos y modelos en la Ingeniería del Software II | Métodos y Modelos en la Ingeniería de Software I                  |
|  7510  | Técnicas de Diseño                                 | Análisis de la Información · Sistemas Operativos                  |

## Objetivos

-   Mejorar las **habilidades y prácticas de programación** del estudiante.
-   Exponer al estudiante a **herramientas y tecnologías actuales**.
-   Discutir el **rol profesional** de la persona desarrolladora.
-   Reflexionar sobre **habilidades blandas** demandadas en el mercado laboral.
-   Practicar **oratoria y presentación**.

---

## Evaluación

### Trabajo práctico individual (TPI)

-   **Obligatorio y excluyente** para continuar.
-   La **no entrega** o **desaprobación** implica pérdida de la cursada.

### Trabajo práctico grupal (TPG)

-   Inicia tras aprobar el TPI.
-   Se desarrolla en **etapas con entregas**.
-   Durante la cursada se realizarán **4 checkpoints**. Si un grupo desaprueba **2 de ellos**, pierde la cursada.
-   Se realiza en **equipos**, cuyo tamaño se informa al inicio de cada cuatrimestre, con **docente asignado**, que actúa como **Product Owner** del equipo durante todo el cuatrimestre: al inicio de cada checkpoint acuerda con el grupo las historias a trabajar, y hace seguimiento semanal del avance.
-   El enunciado se explica al inicio, pero puede **ajustarse** durante el cuatrimestre.
-   Ante puntos no especificados, se espera **criterio** y decisiones **de producto** (sin alterar el espíritu académico).
-   **Distribución de tareas**:
    -   El **equipo es responsable** en forma conjunta.
    -   La distribución debe ser **equitativa**.
    -   No participar en un módulo **no exime** de conocer lo básico de la tecnología (relevante en **parcial/final**).
-   En cada una de las cuatro entregas se exige un **mínimo** de funcionalidad, documentación, pruebas, etc.
-   **Metas de historias por checkpoint**: como referencia orientativa, se espera un avance progresivo — 70% de historias obligatorias y 50% de optativas para el Checkpoint 2; 100% de obligatorias y 80% de optativas para el Checkpoint 3. El cumplimiento de cada checkpoint se evalúa contra el alcance acordado con el docente-PO para ese período, no como un umbral fijo igual para todos los grupos.
-   **Uso de herramientas de IA**: se espera su uso como parte natural del desarrollo. No se evalúa si se usó IA, sino la calidad de la dirección del equipo y la capacidad de **cada integrante de explicar y defender cualquier parte del código** en la defensa del proyecto. El equipo es responsable final del código, independientemente de la herramienta que lo produjo.

#### Red Lines

Los siguientes incumplimientos **bloquean la evaluación** del proyecto y requieren corrección inmediata:

-   **Pipeline de CI roto**: la rama principal debe estar en estado ejecutable en todo momento; un CI en rojo no atendido en la sesión siguiente es un bloqueante.
-   **Secretos en el código fuente o historial de Git**: cualquier credencial o token que aparezca en el repositorio (incluso en commits anteriores) requiere rotación inmediata y limpieza del historial.
-   **Evidencia de trabajo individual**: cada integrante del equipo debe contar con evidencia de su participación y trabajo durante el cuatrimestre (commits, PRs, actas de reuniones, etc.). Su ausencia habilita a la cátedra a desaprobar a ese alumno en particular, independientemente de la nota del grupo.
-   **Ausencia reiterada a checkpoints o sesiones de seguimiento sin justificar**: la falta de participación activa en las instancias de seguimiento del equipo, sin justificación, habilita a la cátedra a desaprobar al alumno ausente, independientemente del resultado del grupo.

#### Dimensiones de Evaluación

El seguimiento semanal y la evaluación final del TPG se basan en **7 dimensiones de calidad**, jerarquizadas por su impacto en la ingeniería de la solución:

1.  **Diseño de Software y Modelado** _(crítico)_: estructura de la solución, desacoplamiento, aplicación de patrones y modelado del dominio.
2.  **Confiabilidad y Calidad de Validación** _(alto)_: rigor en la suite de pruebas (unitarias, integración, carga) y automatización del pipeline (CI).
3.  **Integridad y Flujo de Datos** _(alto)_: gestión del estado, persistencia coherente y manejo de la asincronía y el error.
4.  **Gestión de Ingeniería** _(medio)_: trazabilidad entre backlog y repositorio, atomicidad en Git y uso crítico de herramientas de asistencia (IA).
5.  **Resiliencia e Infraestructura** _(alto)_: soporte de ejecución, observabilidad (logs/health), seguridad de secretos y estabilidad del entorno.
6.  **Mantenibilidad y Documentación** _(bajo)_: contratos de comunicación, registro de decisiones técnicas (ADR) y facilidad de transferencia.
7.  **Ética y Privacidad** _(bajo)_: seguridad por diseño, protección de datos sensibles y transparencia en la autoría del código.

Cada dimensión se valora en una escala de 1 a 10, agrupada en tres niveles de rigor:

-   **Insuficiente (1-3)**: solución con debilidades estructurales o deuda técnica no gestionada.
-   **Aceptable (4-6)**: estándar profesional de ingeniería — diseño sólido, validado y con proceso trazable.
-   **Riguroso (7-10)**: solución resiliente que demuestra manejo avanzado de la complejidad, la observabilidad y los atributos de calidad.

Todos los integrantes deben poder **justificar las decisiones técnicas** tomadas y explicar la lógica implementada, independientemente de las herramientas utilizadas para su generación.

#### Requisitos por checkpoint

| Etapa             | Entregables mínimos                                                                                          |
| ----------------- | ------------------------------------------------------------------------------------------------------------ |
| **Check 0**       | Arquitectura inicial; stack definido; herramienta de gestión configurada, Roadmap.                           |
| **Check 1**       | Backlog validado y comprometido; CI/CD (deploy auto + tests + cobertura); E2E básico app↔backend en la nube. |
| **Check 2**       | Backlog actualizado y comprometido; monitoreo integrado (métricas, logs/alertas).                            |
| **Check 3**       | Backlog actualizado y comprometido.                                                                          |
| **Entrega final** | Historias obligatorias y opcionales completas y verificadas; documentación completa; entregables de cátedra. |

---

## Comunicación

Independientemente de los canales que acuerde cada equipo con su docente, la cátedra dispone de:

-   **Sitio web**: <https://ingenieria-del-software-2.github.io>
-   **Discord**: <https://discord.gg/wDvn7zVvQb>

*Lo informado verbalmente en clase también es válido y debe ser considerado.*

---

## Aclaraciones

-   La cátedra puede **realizar cambios sin previo aviso** (fechas, docentes, alcance del TP, metodología, etc.).
-   Para favorecer exposiciones, algunas clases podrían ser de **mayor duración** (a confirmar).
-   La **participación** será considerada en las calificaciones.
-   **Originalidad**: todas las entregas (individuales y grupales) deben ser de creación propia, **sin excepciones**.
-   **Evaluación individual**: la cátedra se reserva la posibilidad de tomar un parcial o final de forma individual a un alumno en particular, cuando lo considere necesario para verificar su comprensión real del trabajo entregado.

