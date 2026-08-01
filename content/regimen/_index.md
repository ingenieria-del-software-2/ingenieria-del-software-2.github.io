---
title: "Régimen de Aprobación"
description: "Información sobre cómo aprobar la materia, TPs, parciales y finales."
subtitle: "Información sobre la materia"
---

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
-   Se realiza en **equipos de 4–5 personas**, con **docente asignado**, que actúa como **Product Owner** del equipo durante todo el cuatrimestre: al inicio de cada checkpoint acuerda con el grupo las historias a trabajar, y hace seguimiento semanal del avance.
-   El enunciado se explica al inicio, pero puede **ajustarse** durante el cuatrimestre.
-   Ante puntos no especificados, se espera **criterio** y decisiones **de producto** (sin alterar el espíritu académico).
-   **Distribución de tareas**:
    -   El **equipo es responsable** en forma conjunta.
    -   La distribución debe ser **equitativa**.
    -   No participar en un módulo **no exime** de conocer lo básico de la tecnología (relevante en **parcial/final**).
-   En cada una de las cuatro entregas se exige un **mínimo** de funcionalidad, documentación, pruebas, etc.
-   **Metas de historias por checkpoint**: 70% de historias obligatorias y 50% de optativas finalizadas en el Checkpoint 2; 100% de obligatorias y 80% de optativas en el Checkpoint 3.
-   **Uso de herramientas de IA**: se espera su uso como parte natural del desarrollo. No se evalúa si se usó IA, sino la calidad de la dirección del equipo y la capacidad de **cada integrante de explicar y defender cualquier parte del código** en la defensa del proyecto. El equipo es responsable final del código, independientemente de la herramienta que lo produjo.

#### Red Lines

Los siguientes incumplimientos **bloquean la evaluación** del proyecto y requieren corrección inmediata:

-   **Base de datos compartida entre servicios**: cada servicio debe tener su propio esquema de persistencia; no se permite el acceso directo a la base de datos de otro servicio.
-   **Pipeline de CI roto**: la rama principal debe estar en estado ejecutable en todo momento; un CI en rojo no atendido en la sesión siguiente es un bloqueante.
-   **Secretos en el código fuente o historial de Git**: cualquier credencial o token que aparezca en el repositorio (incluso en commits anteriores) requiere rotación inmediata y limpieza del historial.

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
