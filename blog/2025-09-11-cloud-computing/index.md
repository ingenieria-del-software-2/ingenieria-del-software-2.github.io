# Guía de cátedra 2026: Cloud Computing

_Actualizado al 21-mar-2026_

---

## TL;DR

-   **GCP** sigue siendo una opción muy fuerte: **USD 300 en créditos por 90 días** + varios productos **Always Free** (Compute Engine e2-micro, Cloud Storage, Firestore) y un crédito mensual en **GKE** que cubre la gestión de **un** cluster Autopilot o zonal Standard.
-   **AWS**: ofrece **hasta USD 200 en créditos** + **Free Plan de hasta 6 meses** + servicios **Always Free**.
-   **Azure** ofrece **USD 200 por 30 días**, **20+ servicios gratis por 12 meses** y **65+ always-free**. Ahora incluye **Azure Database for PostgreSQL Flexible Server** dentro de la oferta de 12 meses.
-   **Render** sigue siendo excelente para demos rápidas: **750 free instance hours por workspace por mes**, pero los web services gratis duermen tras **15 min** idle y **Postgres Free expira a 30 días**.
-   **Railway** hoy da **30 días / USD 5** de trial y luego cae a un **plan Free con USD 1/mes** de recursos.

---

## Cuadro comparativo (resumen)

| Proveedor   | Compute (VM)                                                                                                         | Storage (objetos)                                                                            | SQL (gestionado)                                                                                            | NoSQL (doc/clave)                                                          | K8s manejado                                                                                                                   | Transcoder VOD                                                                                            | ML (casos de uso)                                                                                    | Créditos / Free tier                                                                                              |
| ----------- | -------------------------------------------------------------------------------------------------------------------- | -------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------------- | -------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------------------------------ | --------------------------------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------------------- |
| **GCP**     | **Compute Engine** (e2-micro Always Free en `us-west1`, `us-central1`, `us-east1`) | **Cloud Storage** (5 GB-mes + ops + 100 GB egreso/mes en regiones US elegibles)              | **Cloud SQL** (sin Always Free; sí créditos y **free trial instance** de 30 días)                           | **Firestore** (1 GiB + cuotas diarias gratis)                              | **GKE**: fee de gestión **USD 0.10/h para todos los clusters**; Free Tier cubre **1 Autopilot o 1 zonal Standard**             | **Transcoder API** (≈ **USD 0.03/min HD**; upload a GCS → job → HLS en GCS)                               | **Vertex AI Search for commerce** (recomendaciones); **Vertex AI Vector Search** (búsqueda semántica) | **USD 300 por 90 días** + 20+ productos Always Free                                                              |
| **AWS**     | **EC2** (usar créditos o Free Plan)                                                                                  | **S3** (cubierto por créditos y Free Plan)                                                   | **RDS** (Postgres/MySQL — cubierto por créditos y Free Plan)                                                | **DynamoDB** (free tier permanente con capacidad/almacenamiento incluidos) | **EKS** (**USD 0.10/h** por cluster en soporte estándar; **USD 0.60/h** en extended support)                                   | **MediaConvert** (_Basic tier_ desde **USD 0.0075/min normalizado**; HLS a S3)                            | **Amazon Personalize** para ranking/recomendaciones                                                  | Hasta **USD 200 en créditos** + **Free Plan de hasta 6 meses** + servicios Always Free                            |
| **Azure**   | **Azure VMs** burstable B-series (12 m free; Microsoft destaca B2pts v2 / B2ats v2)                                  | **Blob Storage** (5 GB LRS hot + operaciones gratis)                                         | **Azure DB for PostgreSQL Flexible Server** y **MySQL Flexible Server**: **12 meses free** (B1MS + 32 GB)   | **Cosmos DB** Free Tier opcional: **1000 RU/s + 25 GB** de por vida        | **AKS** (gestión del cluster gratis; pagás nodos/VMs)                                                                          | **Media Services retirado**; usar partners o compute propio. **Video Indexer** solo para análisis          | **Azure ML**; **Personalizer** retirándose el **1-oct-2026**                                          | **USD 200 / 30 días** + **20+ servicios gratis 12 meses** + **65+ always-free**                                   |
| **Render**  | **Web services/cron** (containers; duermen tras **15 min** idle)                                                     | — (usás S3/R2/B2 si necesitás objetos)                                                       | **Postgres Free** (**1 GB**, expira a **30 días**; luego pago)                                              | **Key-Value (Redis-compatible)** con opción Free                           | N/A                                                                                                                            | Sin transcode gestionado (usar FFmpeg o integrar GCP/AWS)                                                 | Sin ML gestionado                                                                                    | **750 free instance hours / workspace / mes** + Postgres Free 30 días                                             |
| **Railway** | **Deploy de containers** (DX simple)                                                                                 | Object storage según plan; para casos simples usar storage externo                           | **Postgres gestionado** según uso                                                                           | **Redis** y otros add-ons                                                  | N/A                                                                                                                            | Sin transcode gestionado                                                                                  | Sin ML gestionado                                                                                    | **Trial de 30 días + USD 5**, luego **plan Free con USD 1/mes**                                                   |

_Notas VOD:_
- En **GCP**: _upload_ firmado a **Cloud Storage** → **Transcoder API** → _HLS_ en GCS. Precio de salida aprox. **USD 0.03/min (HD)**.
- En **AWS**: _upload_ firmado a **S3** → **MediaConvert** → _HLS_ a S3. **Basic tier** desde **USD 0.0075/min normalizado** (720p ≈ ×2 "minutos normalizados").

---

## Notas rápidas por proveedor

### GCP

Sigue siendo excelente para cursada. En 2026 es incluso más atractivo por tres motivos:

1. **USD 300 / 90 días** sigue igual.
2. El conjunto **Always Free** sigue muy utilizable (Compute Engine, Cloud Storage, Firestore).
3. Ahora hay un **free trial instance** de **Cloud SQL** de 30 días, además del trial general.

**GKE**: el fee de gestión de **USD 0.10/h aplica a todos los clusters** (Autopilot y Standard). La Free Tier cubre ese cargo para **un** cluster Autopilot o zonal Standard, pero **no** cubre compute, red, discos ni balanceadores.

### AWS

AWS ofrece al crear una cuenta:

-   Hasta **USD 200 en créditos**.
-   Un **Free Plan de hasta 6 meses**.
-   Servicios **Always Free** separados (como DynamoDB).

Conviene si querés aprender el ecosistema AWS por inserción laboral. Para VOD, **MediaConvert** sigue siendo competitivo.

### Azure

Azure mejoró bastante para un TP con DB relacional. El cambio más importante es que el free offer ahora incluye **PostgreSQL Flexible Server** y **MySQL Flexible Server** por 12 meses con:

-   **750 horas** de Flexible Server **B1MS**
-   **32 GB** de storage
-   **32 GB** de backup storage

Eso hace que un stack API + Postgres + Blob Storage (+ opcionalmente AKS) sea mucho más razonable que antes sin depender solo del crédito inicial.

**VMs**: Microsoft hoy destaca **B2pts v2 / B2ats v2** en la oferta de 12 meses, aunque otra landing todavía menciona B1s.

**Punto flojo VOD**: **Media Services ya fue retirado**. La recomendación oficial es migrar a partners (Bitmovin, MediaKind, Ravnur, etc.) para encoding/streaming, **Video Indexer** para análisis de audio/video, o resolver VOD con storage + compute propio.

**ML**: **Azure AI Personalizer** no permite crear recursos nuevos desde el 20-sep-2023 y se retira el **1-oct-2026**.

### Render

Sigue siendo ideal para demos, prototipos y deploys sin DevOps pesado. Pero conviene explicitar sus límites:

-   El web service gratis **duerme a los 15 minutos** sin tráfico.
-   Hay **750 free instance hours** por workspace por mes calendario.
-   No hay disco persistente en el free web service.
-   **Postgres Free** tiene **1 GB** fijo y **expira a los 30 días**.

Excelente para **mostrar algo**, menos bueno para una demo que tenga que permanecer siempre online o conservar estado local.

### Railway

La situación cambió un poco para mejor. Ya no es "solo trial de USD 5 y después plan pago":

-   Primero tenés **30 días y USD 5** de trial.
-   Después queda un **plan Free** con **USD 1/mes** de recursos, aunque con límites bajos.

Para proyectos chicos es cómodo. Si el equipo decide seguir pagando, los planes pagos son razonables y la DX sigue siendo muy buena.

---

## Stacks recomendados para cursada

### Opción 1 — La más equilibrada: **GCP**

-   **API/Backend** en **Compute Engine e2-micro** (Always Free en regiones soportadas).
-   **Objetos** en **Cloud Storage** con **URLs firmadas**.
-   **DB**: **Firestore** o **Cloud SQL** (créditos / free trial instance de 30 días).
-   **Opcional K8s**: **GKE Autopilot** (recordá que el free tier solo cubre el fee de gestión).
-   **VOD**: **Transcoder API** (HLS).
-   **CI/CD**: GitHub Actions + **Terraform** si querés IaC real.

**Cuándo elegirla**: si querés buena relación entre facilidad, costo y servicios administrados.

### Opción 2 — La mejor para relacional gratis: **Azure**

-   **API/Backend** en **VM burstable B-series** (12 m free).
-   **Objetos** en **Blob Storage** con SAS.
-   **DB**: **Azure Database for PostgreSQL Flexible Server** (12 meses gratis: B1MS + 32 GB).
-   **K8s**: **AKS** solo si querés practicar Kubernetes (control plane gratis; pagás nodos).
-   **NoSQL**: **Cosmos DB Free Tier** (1000 RU/s + 25 GB lifetime).
-   **VOD**: Media Services ya no existe → **FFmpeg** en VM/Batch o partners externos.

**Cuándo elegirla**: si tu backend necesita **Postgres** sí o sí y querés evitar depender solo del crédito inicial.

### Opción 3 — AWS, solo si te suma algo concreto

-   **Sí** si querés aprender AWS por inserción laboral.
-   **No como opción por defecto** para "quiero gastar cero" — los créditos iniciales (USD 200) y el Free Plan (6 meses) se agotan rápido.

Stack sugerido: **EC2** (con créditos) + **S3** + **RDS** (con créditos) + **DynamoDB** Always Free + **MediaConvert** para VOD.

### Opción 4 — Cero fricción operativa: **Render / Railway**

-   **Render**: web services + cron; **Postgres Free** (30 días); usar **S3/R2** para objetos; FFmpeg en un worker.
-   **Railway**: deploy simple con trial (30 días + USD 5); luego plan Free (USD 1/mes).

**Cuándo elegirlas**: demos rápidas y prototipos. Para workloads que necesiten estar siempre online, los planes pagos de ambas plataformas son accesibles y mantienen la misma simplicidad operativa.

---

## Consejos para no pasarte de presupuesto

-   **No subas a Kubernetes "porque sí"**. En una materia, muchas veces una VM o **Render / Railway** resuelven mejor y más barato.
-   **Cuidá el egreso**. Sigue siendo uno de los costos más traicioneros en cualquier proveedor.
-   **Apagá VMs y limpiá recursos zombie**: discos, IPs flotantes, balanceadores, buckets sin uso.
-   **Poné alertas de billing desde el día 1** en cualquier nube.
-   **En AWS, controlá tus créditos** — los USD 200 y el Free Plan de 6 meses se agotan rápido si no prestás atención.
-   **En Azure, no planifiques sobre Media Services** porque ya no existe.
-   **En GCP, no confundas "GKE cluster fee cubierto" con "cluster gratis"**: los nodos, pods, red y discos siguen costando.
-   **Discos chicos**: mantené los discos de VMs cerca de **30 GB** para seguir en free tiers iniciales (según proveedor).

---

## Enlaces oficiales

### Google Cloud
-   [Free Trial y Free Tier](https://cloud.google.com/free)
-   [Detalle del Free Tier](https://docs.cloud.google.com/free/docs/free-cloud-features)
-   [GKE pricing](https://cloud.google.com/kubernetes-engine/pricing)
-   [Cloud SQL pricing](https://cloud.google.com/sql/pricing)
-   [Cloud SQL free trial instance](https://docs.cloud.google.com/sql/docs/mysql/free-trial-instance)
-   [Transcoder API pricing](https://cloud.google.com/transcoder/pricing)
-   [Vertex AI Search for commerce](https://docs.cloud.google.com/retail/docs/predict)
-   [Vertex AI Vector Search](https://docs.cloud.google.com/vertex-ai/docs/vector-search/overview)

### AWS
-   [AWS Free Tier](https://aws.amazon.com/free/)
-   [Free Tier FAQs](https://aws.amazon.com/free/free-tier-faqs/)
-   [Tracking Free Tier usage](https://docs.aws.amazon.com/awsaccountbilling/latest/aboutv2/tracking-free-tier-usage.html)
-   [Amazon RDS Free Tier](https://aws.amazon.com/rds/free/)
-   [Amazon S3 free storage](https://aws.amazon.com/free/storage/s3/)
-   [DynamoDB pricing](https://aws.amazon.com/dynamodb/pricing/)
-   [Amazon EKS pricing](https://aws.amazon.com/eks/pricing/)
-   [MediaConvert pricing](https://aws.amazon.com/mediaconvert/pricing/)
-   [Amazon Personalize pricing](https://aws.amazon.com/personalize/pricing/)

### Azure
-   [Azure free account](https://azure.microsoft.com/en-us/free/)
-   [Azure free services](https://azure.microsoft.com/en-us/pricing/free-services/)
-   [Azure purchase options](https://azure.microsoft.com/en-us/pricing/purchase-options/azure-account/)
-   [AKS pricing](https://azure.microsoft.com/en-us/pricing/details/kubernetes-service/)
-   [Cosmos DB pricing](https://azure.microsoft.com/en-us/pricing/details/cosmos-db/serverless/)
-   [PostgreSQL Flexible Server pricing](https://azure.microsoft.com/en-us/pricing/details/postgresql/flexible-server/)
-   [Media Services retirement guide](https://learn.microsoft.com/en-us/azure/media-services/latest/azure-media-services-retirement)
-   [Azure AI Personalizer docs](https://learn.microsoft.com/en-us/azure/ai-services/personalizer/)

### Render
-   [Render pricing](https://render.com/pricing)
-   [Deploy for Free](https://render.com/docs/free)
-   [Render Postgres](https://render.com/docs/postgresql)

### Railway
-   [Railway pricing](https://railway.com/pricing)
-   [Railway docs: pricing](https://docs.railway.com/pricing)
-   [Railway docs: free trial](https://docs.railway.com/pricing/free-trial)

---

## Recursos de cátedra (opcional)

-   **Repositorio "cloudcomputing-demo"** con _scripts_ y ejemplos de despliegue:
    [https://github.com/ingenieria-del-software-2/cloudcomputing-demo](https://github.com/ingenieria-del-software-2/cloudcomputing-demo) — ver demo03 (aws y gcp) para tips rápidos

-   **Video tutorial: Crea tu primera cuenta en AWS**
    [https://drive.google.com/file/d/1vps1XS2ReZ0CXFjKIOoqhzMM8YfiU1gh](https://drive.google.com/file/d/1vps1XS2ReZ0CXFjKIOoqhzMM8YfiU1gh)

-   **Demo 3 grabada asincrónicamente (IaC full e2e CI/CD)**
    [https://drive.google.com/file/d/145UHzRo0DJabGZFRC_3eVcHvPkhxy1V3](https://drive.google.com/file/d/145UHzRo0DJabGZFRC_3eVcHvPkhxy1V3) — permite levantar todo el IaC full e2e CI/CD

---

