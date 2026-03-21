---
date: "2026-03-21T00:00:00Z"
title: "Guía de cátedra 2026: Cloud Computing"
tags:
  - cloud-computing
  - aws
  - gcp
  - azure
  - render
  - railway
  - fly-io
  - terraform
  - microservicios
  - 2026-1C
---

_Actualizado al 21-mar-2026_

---

## TL;DR

| Si necesitás…                               | Elegí                                            |
| :------------------------------------------ | :----------------------------------------------- |
| Equilibrio costo / servicios administrados  | **GCP** (USD 300 / 90 días + Always Free)        |
| Seguir el material de cátedra al pie        | **AWS** (USD 200 créditos + demos del repo)      |
| DB gratis por 12 meses sin créditos         | **Azure** (PostgreSQL / MySQL Flexible Server)   |
| DX simple, deploy rápido, sin DevOps pesado | **Render** / **Railway** / **Fly.io**            |
| Postgres gestionado sin tarjeta             | **Neon** (free tier sin límite de tiempo)        |

---

## Comparativo por categoría

### Compute

| Proveedor   | Servicio               | Detalle clave                                                                     |
| :---------- | :--------------------- | :-------------------------------------------------------------------------------- |
| **GCP**     | Compute Engine         | e2-micro **Always Free** en `us-west1` / `us-central1` / `us-east1`               |
| **AWS**     | EC2                    | Cubierto por créditos y Free Plan                                                 |
| **Azure**   | VMs B-series burstable | 12 meses free (B2pts v2 / B2ats v2)                                               |
| **Render**  | Web services / cron    | Containers; duermen tras 15 min idle                                          |
| **Railway** | Containers             | DX simple, trial 30 días + USD 5, luego Free USD 1/mes                            |
| **Fly.io**  | Fly Machines           | Billing por segundo; `shared-cpu-1x 256MB` ~USD 2/mes (varía por región); autostop/autostart |

### Storage de objetos

| Proveedor   | Servicio                   | Free tier                                        |
| :---------- | :------------------------- | :----------------------------------------------- |
| **GCP**     | Cloud Storage              | 5 GB-mes + ops + 100 GB egreso/mes (regiones US) |
| **AWS**     | S3                         | Cubierto por créditos y Free Plan                |
| **Azure**   | Blob Storage               | 5 GB LRS hot + operaciones                       |
| **Render**  | —                          | Usar S3 / R2 / B2 externo                        |
| **Railway** | Object storage según plan  | Para casos simples, usar storage externo         |
| **Fly.io**  | Tigris (S3-compatible)     | 5 GB free, cache global, sin egress              |

### SQL gestionado

| Proveedor   | Servicio                           | Free tier                                                      |
| :---------- | :--------------------------------- | :------------------------------------------------------------- |
| **GCP**     | Cloud SQL                          | Sin Always Free; sí créditos + free trial instance 30 días     |
| **AWS**     | RDS (Postgres/MySQL)               | Cubierto por créditos y Free Plan                              |
| **Azure**   | PostgreSQL / MySQL Flexible Server | **12 meses free**: 750 h B1MS + 32 GB storage + 32 GB backup   |
| **Render**  | Postgres Free                      | 1 GB, **expira a 30 días**                                     |
| **Railway** | Postgres / MySQL                   | Según uso (créditos del plan)                                  |
| **Fly.io**  | Managed Postgres                   | Desde USD 38/mes; alternativa autogestionada (unsupported) |

### NoSQL

| Proveedor  | Servicio                     | Free tier                                         |
| :--------- | :--------------------------- | :------------------------------------------------ |
| **GCP**    | Firestore                    | 1 GiB + cuotas diarias gratis                     |
| **AWS**    | DynamoDB                     | Free tier permanente (capacidad + almacenamiento) |
| **Azure**  | Cosmos DB                    | Free Tier opcional: 1000 RU/s + 25 GB lifetime    |
| **Render** | Key-Value (Valkey/Redis-compatible) | Opción Free disponible                            |
| **Fly.io** | Upstash for Redis            | Integrado                                         |

### Kubernetes gestionado

| Proveedor  | Servicio | Precio / Free tier                                                                                                      |
| :--------- | :------- | :---------------------------------------------------------------------------------------------------------------------- |
| **GCP**    | GKE      | USD 0.10/h por cluster; Free Tier cubre 1 Autopilot o 1 zonal Standard (solo fee de gestión, no compute/red/discos) |
| **AWS**    | EKS      | USD 0.10/h (estándar) / USD 0.60/h (extended support)                                                                   |
| **Azure**  | AKS      | Control plane gratis; pagás nodos/VMs                                                                                   |
| **Fly.io** | FKS      | USD 75/mes; **closed beta** — no recomendado para la materia                                                            |

### Transcoding VOD

| Proveedor                     | Servicio                       | Precio                                                                       |
| :---------------------------- | :----------------------------- | :--------------------------------------------------------------------------- |
| **GCP**                       | Transcoder API                 | ≈ USD 0.03/min HD (upload firmado a GCS → job → HLS en GCS)                  |
| **AWS**                       | MediaConvert                   | Basic tier desde USD 0.0075/min normalizado (upload firmado a S3 → HLS a S3) |
| **Azure**                     | ⚠️ **Media Services retirado** | Usar partners (Bitmovin, MediaKind, Ravnur) o FFmpeg en VM                   |
| **Render / Railway / Fly.io** | —                              | FFmpeg en worker o integrar GCP/AWS                                          |

### ML y recomendaciones

| Proveedor | Servicio                                                | Nota                                            |
| :-------- | :------------------------------------------------------ | :---------------------------------------------- |
| **GCP**   | Vertex AI Search for Commerce · Vertex AI Vector Search | Recomendaciones y búsqueda semántica            |
| **AWS**   | Amazon Personalize                                      | Ranking / recomendaciones                       |
| **Azure** | Azure ML · ⚠️ Personalizer se retira **1-oct-2026**     | No permite crear recursos nuevos desde sep-2023 |

### Créditos y free tiers

| Proveedor   | Oferta                                                                |
| :---------- | :-------------------------------------------------------------------- |
| **GCP**     | **USD 300 / 90 días** + 20+ productos Always Free                     |
| **AWS**     | Plan gratuito hasta 6 meses + **USD 200 créditos** (vencen a 12 meses) + Always Free |
| **Azure**   | **USD 200 / 30 días** + 20+ servicios 12 meses + 65+ always-free      |
| **Render**  | 750 free instance hours / workspace / mes + Postgres Free 30 días     |
| **Railway** | Trial 30 días + USD 5 (Full o Limited según verificación GitHub), luego plan Free USD 1/mes |
| **Fly.io**  | Free trial: 7 días o 2 VM-hours; luego Pay As You Go                  |

---

## Bases de datos gestionadas

Independientemente de la plataforma de deploy, a veces conviene elegir la DB por separado. Opciones pensadas para PostgreSQL o MySQL gestionado con costo inicial muy bajo o nulo.

**PostgreSQL**

| Servicio            | Plan Free                                                                                                          | Cuándo elegirlo                                                                                                    |
| :------------------ | :----------------------------------------------------------------------------------------------------------------- | :----------------------------------------------------------------------------------------------------------------- |
| **Neon**            | $0, sin límite de tiempo, sin tarjeta. 100 proyectos, 100 CU-h/mes, 0.5 GB/proyecto. Escala a cero en inactividad. | Postgres puro con mínima fricción. La opción más limpia para arrancar sin costos sorpresa.                         |
| **Supabase**        | 2 proyectos activos, 500 MB/proyecto + Auth + Storage + Realtime + Edge Functions + APIs automáticas.              | Postgres + backend completo (auth, storage, APIs) en un solo lugar. Muy rendidor para CRUD/paneles/apps con login. |
| **Render Postgres** | 1 GB, 1 base free/workspace, **expira a 30 días**.                                                                 | Solo si ya estás en Render para un deploy puntual.                                                                 |

**MySQL**

El panorama "moderno, gratis y simple" para MySQL es más limitado:

| Servicio                        | Detalle                                                                                  |
| :------------------------------ | :--------------------------------------------------------------------------------------- |
| **Railway**                     | Trial 30 días + USD 5; templates de MySQL sin configuración. Bueno para arrancar rápido. |
| **Azure MySQL Flexible Server** | 750 h B1MS + 32 GB por 12 meses. La opción más previsible para todo el cuatrimestre.     |

**Recomendación rápida**

- PostgreSQL gratis y sin fricción → **Neon**
- PostgreSQL + backend completo → **Supabase**
- MySQL gestionado → **Railway** para empezar rápido, **Azure MySQL** para más previsibilidad

---

## Stacks recomendados

**GCP — La más equilibrada**

| Capa           | Servicio                                              |
| :------------- | :---------------------------------------------------- |
| API / Backend  | Compute Engine e2-micro (Always Free)                 |
| Objetos        | Cloud Storage + URLs firmadas                         |
| DB             | Firestore o Cloud SQL                                 |
| K8s (opcional) | GKE Autopilot (free tier solo cubre fee de gestión)   |
| VOD            | Transcoder API → HLS                                  |
| CI/CD          | GitHub Actions + Terraform                            |

**Cuándo:** buena relación facilidad / costo / servicios administrados. El repo de cátedra incluye el mismo Terraform de AWS modelado para GCP (ver `03-demo`).

**AWS — La que más material de cátedra tiene**

| Capa          | Servicio                                  |
| :------------ | :---------------------------------------- |
| API / Backend | EC2                                       |
| Objetos       | S3                                        |
| DB            | RDS + DynamoDB                            |
| VOD           | MediaConvert → HLS                        |
| CI/CD         | GitHub Actions + Terraform                |

**Cuándo:** seguir el material de clase directamente o aprender AWS por inserción laboral.

**Recursos:** ver [cloudcomputing-demo](https://github.com/ingenieria-del-software-2/cloudcomputing-demo), especialmente `03-demo` (AWS y GCP).

**Azure — DB gratis por 12 meses**

| Capa           | Servicio                                            |
| :------------- | :-------------------------------------------------- |
| API / Backend  | VM burstable B-series                               |
| Objetos        | Blob Storage + SAS                                  |
| DB             | PostgreSQL Flexible Server                          |
| NoSQL          | Cosmos DB Free Tier (1000 RU/s + 25 GB lifetime)    |
| K8s (opcional) | AKS (control plane gratis; pagás nodos)             |
| VOD            | ⚠️ FFmpeg en VM/Batch o partners externos           |

**Cuándo:** querés DB gratis sin depender solo del crédito inicial.

**PaaS ligeros — Render / Railway / Fly.io**

| Plataforma  | Stack típico                                                                                                |
| :---------- | :---------------------------------------------------------------------------------------------------------- |
| **Render**  | Web services + cron · Postgres Free · S3/R2 para objetos · FFmpeg en worker                                  |
| **Railway** | Deploy simple · Postgres o MySQL integrado                                                                   |
| **Fly.io**  | Fly Machines (autostop/autostart) · Tigris para objetos · Managed Postgres o autogestionado · Upstash Redis |

**Cuándo:** priorizás DX simple sin DevOps pesado, o el equipo quiere iterar rápido sin gestionar infraestructura. Para workloads siempre online, los planes pagos de las tres son accesibles.

---

## Consejos para no pasarte de presupuesto

1. **No subas a Kubernetes "porque sí."** Una VM o Render/Railway muchas veces resuelven mejor y más barato.
2. **Cuidá el egreso** — sigue siendo uno de los costos más traicioneros en cualquier proveedor.
3. **Apagá VMs y limpiá recursos zombie:** discos, IPs flotantes, balanceadores, buckets sin uso.
4. **Poné alertas de billing desde el día 1** en cualquier nube.
5. **AWS:** si no hacés upgrade a Paid Plan antes de que venza el plan gratuito, **la cuenta se cierra**.
6. **Azure:** para conservar los servicios gratis de 12 meses, hay que pasar a pay-as-you-go dentro de los 30 días del trial. No planifiques sobre Media Services — ya no existe.
7. **GCP:** "GKE cluster fee cubierto" ≠ "cluster gratis" — nodos, pods, red y discos siguen costando.
8. **Discos:** mantené los de VMs cerca de 30 GB para seguir en free tiers iniciales.
9. **Fly.io:** usá autostop/autostart (Machines detenidas no cobran CPU/RAM, pero volumes y rootfs sí pueden facturar). Si app y DB están en regiones distintas, el tráfico inter-región se cobra. Los volumes no se replican solos — armá backups.

---

## Enlaces oficiales

**Google Cloud** — [Free Trial y Free Tier](https://cloud.google.com/free) · [Detalle del Free Tier](https://docs.cloud.google.com/free/docs/free-cloud-features) · [GKE pricing](https://cloud.google.com/kubernetes-engine/pricing) · [Cloud SQL pricing](https://cloud.google.com/sql/pricing) · [Cloud SQL free trial instance](https://docs.cloud.google.com/sql/docs/mysql/free-trial-instance) · [Transcoder API pricing](https://cloud.google.com/transcoder/pricing) · [Vertex AI Search for Commerce](https://docs.cloud.google.com/retail/docs/predict) · [Vertex AI Vector Search](https://docs.cloud.google.com/vertex-ai/docs/vector-search/overview)

**AWS** — [Free Tier](https://aws.amazon.com/free/) · [Free Tier — Compute](https://aws.amazon.com/free/compute/) · [Free Tier FAQs](https://aws.amazon.com/free/free-tier-faqs/) · [Tracking Free Tier usage](https://docs.aws.amazon.com/awsaccountbilling/latest/aboutv2/tracking-free-tier-usage.html) · [RDS Free Tier](https://aws.amazon.com/rds/free/) · [S3 free storage](https://aws.amazon.com/free/storage/s3/) · [DynamoDB pricing](https://aws.amazon.com/dynamodb/pricing/) · [EKS pricing](https://aws.amazon.com/eks/pricing/) · [MediaConvert pricing](https://aws.amazon.com/mediaconvert/pricing/) · [Personalize pricing](https://aws.amazon.com/personalize/pricing/)

**Azure** — [Free account](https://azure.microsoft.com/en-us/free/) · [Free services](https://azure.microsoft.com/en-us/pricing/free-services/) · [Purchase options](https://azure.microsoft.com/en-us/pricing/purchase-options/azure-account/) · [AKS pricing](https://azure.microsoft.com/en-us/pricing/details/kubernetes-service/) · [Cosmos DB pricing](https://azure.microsoft.com/en-us/pricing/details/cosmos-db/autoscale-provisioned/) · [PostgreSQL Flexible Server pricing](https://azure.microsoft.com/en-us/pricing/details/postgresql/flexible-server/) · [MySQL Flexible Server pricing](https://azure.microsoft.com/en-us/pricing/free-services/) · [Media Services retirement](https://learn.microsoft.com/en-us/azure/media-services/latest/azure-media-services-retirement) · [AI Personalizer docs](https://learn.microsoft.com/en-us/azure/ai-services/personalizer/)

**Render** — [Pricing](https://render.com/pricing) · [Deploy for Free](https://render.com/docs/free) · [Postgres](https://render.com/docs/postgresql) · [Key Value](https://render.com/docs/key-value)

**Railway** — [Pricing](https://railway.com/pricing) · [Docs: pricing](https://docs.railway.com/pricing) · [Docs: free trial](https://docs.railway.com/pricing/free-trial)

**Fly.io** — [Free Trial](https://fly.io/docs/about/free-trial/) · [Pricing](https://fly.io/docs/about/pricing/) · [Machines](https://fly.io/docs/machines/) · [Autostop/autostart](https://fly.io/docs/launch/autostop-autostart/) · [Volumes](https://fly.io/docs/volumes/overview/) · [Managed Postgres](https://fly.io/docs/mpg/) · [Upstash for Redis](https://fly.io/docs/upstash/redis/) · [Kubernetes](https://fly.io/docs/kubernetes/) · [Regions](https://fly.io/docs/reference/regions/)

**Tigris** — [Docs en Fly](https://fly.io/docs/tigris/) · [Pricing](https://www.tigrisdata.com/pricing/) · [Billing](https://www.tigrisdata.com/docs/account-management/billing/)

**Neon** — [Pricing](https://neon.com/pricing) · [Docs](https://neon.com/docs/introduction)

**Supabase** — [Pricing](https://supabase.com/pricing) · [Docs](https://supabase.com/docs)

---

## Recursos de cátedra

- Repo con scripts y ejemplos de despliegue: [cloudcomputing-demo](https://github.com/ingenieria-del-software-2/cloudcomputing-demo) — ver `03-demo` (AWS y GCP) para tips rápidos.
- Video tutorial — Crea tu primera cuenta en AWS: [Google Drive](https://drive.google.com/file/d/1vps1XS2ReZ0CXFjKIOoqhzMM8YfiU1gh)
- Demo 3 grabada (IaC full e2e CI/CD): [Google Drive](https://drive.google.com/file/d/145UHzRo0DJabGZFRC_3eVcHvPkhxy1V3)
