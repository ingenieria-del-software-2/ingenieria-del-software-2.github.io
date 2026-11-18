# Guía de cátedra 2026: Cloud Computing

## TL;DR

Precios, cuotas y condiciones revisados al **7 de septiembre de 2026**. Los proveedores pueden modificarlos; verificá siempre la documentación oficial antes de crear recursos.

| Si necesitás…                                      | Elegí                                                                                  |
| :------------------------------------------------- | :------------------------------------------------------------------------------------- |
| Equilibrio costo / servicios administrados         | **GCP** (USD 300 / 90 días + Always Free)                                              |
| Seguir el material de cátedra al pie               | **AWS** (USD 100 iniciales + hasta USD 100 adicionales; Free Plan máximo 6 meses)       |
| PostgreSQL/MySQL gestionado durante el cuatrimestre | **Azure** (12 meses de PostgreSQL / MySQL Flexible Server)                              |
| SQL gestionado Always Free                         | **Azure SQL Database** (hasta 10 DB; 100k vCore-s/mes + 32 GB de datos cada una)         |
| DX simple, deploy rápido, sin DevOps pesado        | **Render** / **Railway** / **Fly.io**                                                   |
| PostgreSQL serverless gratis de largo plazo        | **Neon** (free tier sin límite de tiempo)                                               |

---

## Comparativo por categoría

### Compute

| Proveedor   | Servicio               | Detalle clave                                                                                  |
| :---------- | :--------------------- | :--------------------------------------------------------------------------------------------- |
| **GCP**     | Compute Engine         | e2-micro Always Free en 3 regiones US + 30 GB-mes de disco                                     |
| **GCP**     | Cloud Run              | Always Free: hasta 2 millones de requests/mes                                                  |
| **AWS**     | EC2                    | Créditos + Free Plan; no asumir el antiguo beneficio de 750 h por 12 meses                     |
| **Azure**   | VMs B-series           | 12 meses: 750 h/mes de cada una de B1s, B2pts v2 y B2ats v2                                    |
| **Render**  | Web Services / Cron    | Web: 750 h/workspace/mes + spin-down. Cron: pago, mínimo USD 1/mes por servicio                 |
| **Railway** | Containers             | Trial hasta 30 días + USD 5; luego Free ($0) con USD 1 de crédito/mes, no acumulable            |
| **Fly.io**  | Fly Machines           | Por segundo; `shared-cpu-1x 256MB` ~USD 2/mes; autostop/autostart                              |

### Storage de objetos

| Proveedor   | Servicio                   | Free tier                                                                                       |
| :---------- | :------------------------- | :---------------------------------------------------------------------------------------------- |
| **GCP**     | Cloud Storage              | 5 GB-mes Standard + 5k Class A + 50k Class B + 100 GB egreso/mes en regiones US elegibles       |
| **AWS**     | S3                         | Cubierto por créditos y Free Plan                                                               |
| **Azure**   | Blob Storage               | Durante 12 meses: 5 GB LRS Hot Block + 20k reads + 10k writes/mes                               |
| **Render**  | -                          | Usar S3, R2 o B2 externo                                                                         |
| **Railway** | Storage Buckets            | S3-compatible; hasta 10 GB-month descontados del crédito Free; el service egress puede cobrarse |
| **Fly.io**  | Tigris (S3-compatible)     | 5 GB + 10k Class A + 100k Class B; Tigris no cobra egreso, pero Fly.io puede cobrar transferencia |

### SQL: DBaaS y servicios simplificados

| Proveedor   | Servicio                           | Situación actual                                                                                 |
| :---------- | :--------------------------------- | :----------------------------------------------------------------------------------------------- |
| **GCP**     | Cloud SQL PostgreSQL/MySQL         | Sin Always Free. Trial 30 días: 8 vCPU, 64 GB RAM y 100 GB; luego 90 días detenido; requiere billing |
| **AWS**     | RDS                                | Cuentas nuevas: créditos para `db.t3.micro`/`db.t4g.micro`; no asumir 750 h por 12 meses          |
| **Azure**   | PostgreSQL / MySQL Flexible Server | 12 meses: 750 h B1MS + 32 GB storage + 32 GB backup                                             |
| **Azure**   | Azure SQL Database                 | Always Free: hasta 10 DB; cada una con 100k vCore-s/mes + 32 GB                                  |
| **Render**  | Postgres Free                      | 1 GB; expira a los 30 días + 14 días de gracia; sin backups                                     |
| **Railway** | PostgreSQL / MySQL                 | Templates con volumen; oficialmente **unmanaged**, no equivalentes a un DBaaS                    |
| **Fly.io**  | Managed Postgres                   | Desde USD 38/mes                                                                                |

### NoSQL

| Proveedor  | Servicio                            | Free tier                                                                                  |
| :--------- | :---------------------------------- | :----------------------------------------------------------------------------------------- |
| **GCP**    | Firestore                           | 1 GiB + 50k reads/día + 20k writes/día + 20k deletes/día + 10 GiB outbound/mes             |
| **AWS**    | DynamoDB                            | Permanente: 25 GB + 25 WCU + 25 RCU para capacidad provisionada                            |
| **Azure**  | Cosmos DB                           | 1000 RU/s + 25 GB; una cuenta/subscription; activar al crear; no Serverless                |
| **Render** | Key Value (Valkey/Redis-compatible) | Free: 25 MB y 50 conexiones; in-memory only, sin persistencia                              |
| **Fly.io** | Upstash for Redis                   | Integrado                                                                                    |

### Kubernetes gestionado

| Proveedor  | Servicio | Precio / Free tier                                                                                                      |
| :--------- | :------- | :---------------------------------------------------------------------------------------------------------------------- |
| **GCP**    | GKE      | USD 0.10/h por cluster; Free Tier cubre 1 Autopilot o 1 zonal Standard (solo fee de gestión, no compute/red/discos) |
| **AWS**    | EKS      | USD 0.10/h (estándar) / USD 0.60/h (extended support)                                                                   |
| **Azure**  | AKS      | Control plane gratis; pagás nodos/VMs                                                                                   |
| **Fly.io** | FKS      | USD 75/mes; **closed beta**; no recomendado para la materia                                                              |

### Transcoding VOD

| Proveedor                     | Servicio                              | Precio                                                                                                  |
| :---------------------------- | :------------------------------------ | :------------------------------------------------------------------------------------------------------ |
| **GCP**                       | Transcoder API                        | USD 0.03/min por cada stream HD de salida; cada rendition codificada se factura                         |
| **AWS**                       | MediaConvert                          | Desde USD 0.0075/min normalizado; resolución, FPS, codec y calidad aplican multiplicadores              |
| **Azure**                     | **Media Services retirado 30-jun-2024** | Usar partners como Bitmovin, MediaKind o Ravnur, o FFmpeg en VM/Batch/Container                          |
| **Render / Railway / Fly.io** | -                                     | FFmpeg en worker o integrar GCP/AWS                                                                      |

### ML y recomendaciones

| Proveedor | Servicio                                                     | Nota                                                                                         |
| :-------- | :----------------------------------------------------------- | :------------------------------------------------------------------------------------------- |
| **GCP**   | AI Commerce Search · Vertex AI Vector Search 2.0              | Search, browse, recomendaciones y retrieval/vector search; AI Commerce Search reemplaza el nombre Vertex AI Search for commerce |
| **AWS**   | Amazon Personalize                                           | Recomendaciones y ranking; sigue activo, con Free Trial inicial de 2 meses                   |
| **Azure** | Azure Machine Learning · custom recommender                   | Personalizer fue retirado el **25-ago-2026**; Microsoft recomienda `microsoft/learning-loop` como alternativa open source |

### Créditos y free tiers

| Proveedor   | Oferta                                                                                                                        |
| :---------- | :---------------------------------------------------------------------------------------------------------------------------- |
| **GCP**     | **USD 300 / 90 días** + productos con cuotas Always Free                                                                        |
| **AWS**     | **USD 100 iniciales + hasta USD 100 adicionales**; Free Plan hasta 6 meses o hasta agotar créditos; vencen a los 12 meses    |
| **Azure**   | **USD 200 / 30 días** + 20+ servicios durante 12 meses + 65+ Always Free                                                       |
| **Render**  | 750 free instance-hours/workspace/mes + Postgres Free por 30 días; Cron Jobs son pagos                                         |
| **Railway** | Trial de hasta 30 días + grant de USD 5 (Full o Limited según verificación); luego Free ($0/mes) con USD 1 de crédito mensual |
| **Fly.io**  | Free trial: 7 días o 2 VM-hours, lo que ocurra primero; luego Pay As You Go                                                    |

> **Estudiantes:** Azure for Students ofrece USD 100 por 12 meses, sin tarjeta, y se puede renovar mientras se mantenga la elegibilidad.

---

## Bases de datos cloud

| Servicio                 | Free / condición clave                                               | Elegilo para                                     |
| :----------------------- | :------------------------------------------------------------------- | :----------------------------------------------- |
| **Neon**                 | 100 proyectos, 100 CU-h/proyecto/mes, 0.5 GB/proyecto                | PostgreSQL puro, gratis y sin tarjeta             |
| **Supabase**             | 2 proyectos, 500 MB DB/proyecto; pausa por inactividad; sin backups  | PostgreSQL + Auth + Storage + APIs                |
| **Render Postgres**      | 1 GB; expira a los 30 días + 14 días de gracia; sin backups          | Deploys puntuales                                 |
| **Railway Postgres/MySQL** | Usa el crédito del plan; servicio autogestionado                     | Deploy rápido si el equipo opera la DB            |
| **Azure Flexible Server** | 12 meses de PostgreSQL/MySQL B1MS + 32 GB                           | MySQL gestionado o una DB para el cuatrimestre    |

---

## Stacks recomendados

| Plataforma  | Stack sugerido                                                         | Cuándo elegirlo                     |
| :---------- | :--------------------------------------------------------------------- | :---------------------------------- |
| **GCP**     | Cloud Run/Compute Engine · Cloud Storage · Firestore/Cloud SQL · Transcoder | Equilibrio costo/servicios          |
| **AWS**     | EC2 · S3 · RDS/DynamoDB · MediaConvert                                 | Seguir el material de cátedra       |
| **Azure**   | VM/Container Apps · Blob · Flexible Server/Azure SQL/Cosmos DB          | DB gratuita de mayor duración       |
| **Render**  | Web Service · Postgres temporal · storage externo                       | Deploy simple                       |
| **Railway** | Service · Storage Bucket · PostgreSQL/MySQL autogestionado              | Deploy simple con más flexibilidad  |
| **Fly.io**  | Machine · Tigris · Managed Postgres/Upstash                             | Autostop y control por región       |

El repo [cloudcomputing-demo](https://github.com/ingenieria-del-software-2/cloudcomputing-demo) incluye ejemplos para AWS y GCP en `03-demo`.

---

## Consejos para no pasarte de presupuesto

1. **No subas a Kubernetes "porque sí."** Una VM o PaaS suele ser más simple y barato. En GKE, el free tier cubre el control plane, no los nodos.
2. **Cuidá el egreso:** Fly.io puede cobrar transferencia entre Machines y Tigris aunque Tigris no cobre egreso.
3. **Apagá y limpiá:** VMs, discos, IPs, balanceadores y buckets. Mantené los discos cerca de 30 GB cuando aplique.
4. **Poné alertas de billing desde el día 1** en cualquier nube.
5. **AWS Free Plan:** al vencer cierra la cuenta y conserva los datos 90 días. Organizations o Control Tower activan Paid Plan y vencen los créditos restantes.
6. **Azure Free Account:** pasá a Pay-As-You-Go en 30 días o al agotar el crédito para conservar los beneficios de 12 meses.
7. **Fly.io:** autostop evita CPU/RAM, no cargos de rootfs, Volumes, snapshots o transferencia. Los Volumes necesitan backups.
8. **Free no significa persistente:** Render Postgres expira; Render Key Value puede perder datos; Supabase puede pausarse y no tiene backups; Railway depende del crédito mensual.

---

## Enlaces oficiales

**Google Cloud:** [Free Trial y Free Tier](https://cloud.google.com/free) · [Detalle del Free Tier](https://docs.cloud.google.com/free/docs/free-cloud-features) · [Cloud Run pricing](https://cloud.google.com/run/pricing) · [GKE pricing](https://cloud.google.com/kubernetes-engine/pricing) · [Cloud SQL pricing](https://cloud.google.com/sql/pricing) · [Cloud SQL free trial instance](https://docs.cloud.google.com/sql/docs/mysql/free-trial-instance) · [Transcoder API pricing](https://cloud.google.com/transcoder/pricing) · [AI Commerce Search](https://docs.cloud.google.com/retail/docs/predict) · [Vertex AI Vector Search](https://docs.cloud.google.com/vertex-ai/docs/vector-search/overview)

**AWS:** [Free Tier](https://aws.amazon.com/free/) · [Free Tier Compute](https://aws.amazon.com/free/compute/) · [Free Tier FAQs](https://aws.amazon.com/free/free-tier-faqs/) · [Tracking Free Tier usage](https://docs.aws.amazon.com/awsaccountbilling/latest/aboutv2/tracking-free-tier-usage.html) · [RDS Free Tier](https://aws.amazon.com/rds/free/) · [S3 free storage](https://aws.amazon.com/free/storage/s3/) · [DynamoDB pricing](https://aws.amazon.com/dynamodb/pricing/) · [EKS pricing](https://aws.amazon.com/eks/pricing/) · [MediaConvert pricing](https://aws.amazon.com/mediaconvert/pricing/) · [Personalize pricing](https://aws.amazon.com/personalize/pricing/)

**Azure:** [Free account](https://azure.microsoft.com/en-us/free/) · [Azure for Students](https://azure.microsoft.com/en-us/free/students/) · [Free services](https://azure.microsoft.com/en-us/pricing/free-services/) · [Azure SQL Database free offer](https://learn.microsoft.com/en-us/azure/azure-sql/database/free-offer) · [AKS pricing](https://azure.microsoft.com/en-us/pricing/details/kubernetes-service/) · [Cosmos DB pricing](https://azure.microsoft.com/en-us/pricing/details/cosmos-db/autoscale-provisioned/) · [PostgreSQL Flexible Server pricing](https://azure.microsoft.com/en-us/pricing/details/postgresql/flexible-server/) · [MySQL Flexible Server pricing](https://azure.microsoft.com/en-us/pricing/free-services/) · [Media Services retirement](https://learn.microsoft.com/en-us/azure/media-services/latest/azure-media-services-retirement) · [Personalizer lifecycle](https://learn.microsoft.com/en-us/lifecycle/products/azure-personalizer) · [`microsoft/learning-loop`](https://github.com/microsoft/learning-loop)

**Render:** [Pricing](https://render.com/pricing) · [Deploy for Free](https://render.com/docs/free) · [Cron Jobs](https://render.com/docs/cronjobs) · [Postgres](https://render.com/docs/postgresql) · [Key Value](https://render.com/docs/key-value)

**Railway:** [Pricing](https://railway.com/pricing) · [Docs: pricing](https://docs.railway.com/pricing) · [Docs: free trial](https://docs.railway.com/pricing/free-trial) · [Storage Buckets](https://docs.railway.com/storage-buckets) · [PostgreSQL](https://docs.railway.com/databases/postgresql) · [MySQL](https://docs.railway.com/databases/mysql)

**Fly.io:** [Free Trial](https://fly.io/docs/about/free-trial/) · [Pricing](https://fly.io/docs/about/pricing/) · [Machines](https://fly.io/docs/machines/) · [Autostop/autostart](https://fly.io/docs/launch/autostop-autostart/) · [Volumes](https://fly.io/docs/volumes/overview/) · [Managed Postgres](https://fly.io/docs/mpg/) · [Upstash for Redis](https://fly.io/docs/upstash/redis/) · [Kubernetes](https://fly.io/docs/kubernetes/) · [Regions](https://fly.io/docs/reference/regions/)

**Tigris:** [Docs en Fly](https://fly.io/docs/tigris/) · [Pricing](https://www.tigrisdata.com/pricing/) · [Billing](https://www.tigrisdata.com/docs/account-management/billing/)

**Neon:** [Pricing](https://neon.com/pricing) · [Docs](https://neon.com/docs/introduction)

**Supabase:** [Pricing](https://supabase.com/pricing) · [Docs](https://supabase.com/docs)

---

## Recursos de cátedra

- Repo con scripts y ejemplos de despliegue: [cloudcomputing-demo](https://github.com/ingenieria-del-software-2/cloudcomputing-demo); ver `03-demo` (AWS y GCP) para tips rápidos.
- Video tutorial, crea tu primera cuenta en AWS: [Google Drive](https://drive.google.com/file/d/1vps1XS2ReZ0CXFjKIOoqhzMM8YfiU1gh)
- Demo 3 grabada (IaC full e2e CI/CD): [Google Drive](https://drive.google.com/file/d/145UHzRo0DJabGZFRC_3eVcHvPkhxy1V3)

