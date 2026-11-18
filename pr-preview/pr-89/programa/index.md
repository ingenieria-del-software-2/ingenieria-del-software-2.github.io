# Programa

No enseñamos un lenguaje ni un framework — esos cambian cada dos años. Enseñamos cómo se construye software cuando el código deja de ser lo difícil: cuando hay un equipo de por medio, un sistema que no puede caerse, y decisiones que se pagan varias semanas después de haberlas tomado.

El programa está organizado en 6 módulos, que son también los 6 ejes que definen la materia ante la Facultad. Acá van con los temas concretos que dictamos hoy en cada uno — no la versión de hace diez años.

---

## 1. Fundamentos de la Ingeniería de Software Moderna

El punto de partida: cómo se construye software guiado por pruebas, y cómo se especifica lo que hay que construir antes de escribir la primera línea.

**En la práctica:**
- Arquitectura de soluciones: monolito vs. microservicios, package by layer, stateless vs. stateful
- REST: historia, REST-like vs. RESTful, por qué una API REST
- Testing E2E / de integración
- TDD, Especificación con Ejemplos, Gherkin y Cucumber
- Desarrollo incremental (baby steps), Definición de Listo y Definición de Hecho

## 2. Enfoque de Orientación al Dominio

Cómo modelar el problema antes de modelar el código — para que la arquitectura refleje el negocio, no al revés.

**En la práctica:**
- Domain-Driven Design: bounded contexts, lenguaje ubicuo, modelado táctico
- Arquitectura Hexagonal y Clean Architecture
- MVC y decisiones de arquitectura en general

## 3. Calidad

Que funcione no es el objetivo — es el piso. Acá se trata de saber en qué se está fallando antes de que lo note un usuario.

**En la práctica:**
- Atributos de calidad, internos y externos
- Cuadrantes de Marick y pirámide de automatización de pruebas
- Dobles de prueba: tipos y usos
- Testing a escala

## 4. Gestión

El código no se entrega solo. Este módulo es sobre cómo un equipo decide qué construir primero, cómo se organiza, y qué hacer cuando alguien no está de acuerdo.

**En la práctica:**
- Metodologías ágiles: Scrum (artefactos, eventos, implementación), fundamentos de Kanban y XP
- Roles y responsabilidades, matriz RACI
- Recopilación y validación de requisitos, Producto Mínimo Viable, priorización de backlog
- Comunicación osmótica, auto-organización, Pair y Mob Programming
- Escalamiento del proceso ágil (SAFe, Nexus, LeSS)

## 5. Control de Configuración

Cómo se versiona, se revisa y se empaqueta el trabajo de un equipo entero sin pisarse.

**En la práctica:**
- Contenedores: arquitectura de imágenes, Dockerfile, Docker Compose, networking, registries
- Trunk-Based Development y Conventional Commits
- Revisiones de código y linting

## 6. Despliegue y Operación

Escribir el código es la mitad del trabajo. La otra mitad es que siga andando cuando ustedes no están mirando.

**En la práctica:**
- Historia de DevOps: del Lean Movement al Continuous Delivery
- Cloud Computing e Infraestructura como Código (AWS: VPC, EC2, IAM, S3)
- Operaciones y el modelo SRE: monitoreo, alarmas, incidentes, on-call
- Blue-green, canary deployments, feature flags, SLAs

---

_Este programa surge de los contenidos mínimos aprobados por el Consejo Superior para la asignatura (Plan TA049 y equivalentes), adaptados cuatrimestre a cuatrimestre al proyecto grupal en curso. Para el detalle de cómo se evalúa, ver el [Régimen de Aprobación](../regimen)._

