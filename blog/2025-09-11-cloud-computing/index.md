# Cloud sin Vueltas: La guía práctica para hostear tu proyecto y cuidar tu bolsillo

_Actualizado al 27-ago-2025_

---

## TL;DR

-   **GCP**: **USD 300 en créditos (90 días)**, más _Always Free_ en **Compute Engine** y **Cloud Storage**.
-   **AWS**: **Free Tier (12 meses)** para **EC2**, **S3** y **RDS**, más **créditos promocionales** de monto variable.
-   **Azure**: **USD 200 en créditos (30 días)** y **12 meses de servicios gratis** para **VMs** y **Blob Storage**.
-   **Render/Railway**: soluciones _out-of-the-box_ con _free tiers_ limitados, ideales para demos rápidas sin DevOps.

---

## Cuadro comparativo (resumen)

| Proveedor   | Compute (VM)                                                                | Storage (objetos)                                                     | SQL (gestionado)                                                            | NoSQL (doc/clave)                                                          | K8s manejado                                                              | Transcoder VOD                                                                                            | ML (casos de uso)                                                             | Créditos / Free tier                                                                     |
| ----------- | --------------------------------------------------------------------------- | --------------------------------------------------------------------- | --------------------------------------------------------------------------- | -------------------------------------------------------------------------- | ------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------- | ---------------------------------------------------------------------------------------- |
| **GCP**     | **Compute Engine** (e2-micro entra en _Always Free_ en regiones soportadas) | **Cloud Storage** (_Always Free_ con límites mensuales)               | **Cloud SQL** (Postgres/MySQL: sin free tier, pero cubierto por créditos)   | **Firestore** (free tier diaria; 1 GiB de storage gratis)                  | **GKE** (Autopilot: pago por pod; Standard cobra _cluster mgmt_ \$0.10/h) | **Transcoder API** (≈ **USD 0.03/min HD**; flujo: upload firmado a GCS → job → HLS en GCS)                | **Recommendations AI / Vertex AI**; _Matching Engine_ para búsqueda semántica | **USD 300 por 90 días** + “Always Free” (no consume créditos si estás dentro de límites) |
| **AWS**     | **EC2** (t2/t3.micro 750 h/mes por 12 m)                                    | **S3** (free tier 12 m: 5 GB, 20k GET, 2k PUT, **100 GB egress/mes**) | **RDS** (Postgres/MySQL 750 h/mes + 20 GB por 12 m)                         | **DynamoDB** (free tier permanente con capacidad/almacenamiento incluidos) | **EKS** (control plane **\$0.10/h** por _cluster_; nodo aparte)           | **MediaConvert** (_Basic tier_ desde **USD 0.0075/min normalizado**; HLS a S3)                            | **Amazon Personalize** para ranking/recomendaciones                           | **Free Tier (12 meses)** + créditos promocionales (monto variable)                       |
| **Azure**   | **Azure VMs** (B1s entra en 12 m free)                                      | **Blob Storage** (incluido en 12 m free con límites)                  | **Azure PostgreSQL Flexible Server** (generalmente sin free; usar créditos) | **Cosmos DB** (_Free Tier_ opcional: **1000 RU/s + 25 GB**)                | **AKS** (control plane **sin costo**; pagás nodos/VMs)                    | **Media Services** **retirado** (usar **FFmpeg+Batch/Functions** o partners; Video Indexer solo análisis) | **Azure ML** (entrenar propio recomendador; _Personalizer_ en retiro)         | **USD 200 por 30 días** + “12 meses gratis”                                              |
| **Render**  | **Web services/cron** (containers; _free_ para comenzar)                    | — (usás S3/R2 si necesitás objetos)                                   | **Postgres** (**Free** expira a **30 días**; luego pago)                    | **Key-Value (Redis-compatible)** con opción Free                           | N/A (no K8s)                                                              | Sin transcode gestionado (usar FFmpeg o integrar GCP/AWS)                                                 | Sin ML gestionado                                                             | **Free tier** (p. ej. 750 h acumuladas) + **Postgres Free 30 días**                      |
| **Railway** | **Deploy de containers** (DX simple)                                        | — (objetos externos)                                                  | **Postgres gestionado**                                                     | **Redis**                                                                  | N/A                                                                       | Sin transcode gestionado                                                                                  | Sin ML gestionado                                                             | **Crédito único ~USD 5** en _free trial_; luego plan pago                                |

_Notas VOD:_
• En **GCP**: _upload_ firmado a **Cloud Storage** → **Transcoder API** → _HLS_ en GCS. Precio de salida aprox. **USD 0.03/min (HD)**.
• En **AWS**: _upload_ firmado a **S3** → **MediaConvert** → _HLS_ a S3. **Basic tier** desde **USD 0.0075/min normalizado** (720p≈×2 "minutos normalizados").

---

## Stacks “mínimo viable” recomendados

### GCP (equilibrado con créditos)

-   **API/Backend** en **Compute Engine e2-micro** (cuidar región soportada por _Always Free_).
-   **Objetos** en **Cloud Storage** con **URLs firmadas**.
-   **DB**: **Cloud SQL** (créditos) y/o **Firestore** para eventos/simple KV.
-   **Opcional K8s**: **GKE Autopilot** si querés practicar orquestación.
-   **VOD**: **Transcoder API** (HLS).
-   **Arranque**: **USD 300/90 días** + productos _Always Free_. ([Google Cloud][7])

### AWS (VOD barato para demos)

-   **API/Backend** en **EC2** _micro_ (12 m _free_).
-   **Objetos** en **S3** — en los primeros 12 m tenés **100 GB/mes de salida** en el Free Tier.
-   **DB**: **RDS** _micro_ (12 m) y **DynamoDB** _free tier_ permanente.
-   **Opcional K8s**: **EKS** (ojo control plane).
-   **VOD**: **MediaConvert** _Basic tier_. ([Amazon Web Services, Inc.][8])

### Azure (K8s sin fee de control plane)

-   **API/Backend** en **VM B1s** (12 m _free_ si sos nuevo).
-   **Objetos** en **Blob Storage** con SAS.
-   **DB**: **PostgreSQL Flexible Server** (usá créditos).
-   **K8s**: **AKS** (control plane gratis; pagás nodos).
-   **VOD**: **Media Services está retirado** → **FFmpeg** en VM/Batch o _partners_.
-   **NoSQL**: **Cosmos DB Free Tier** (1000 RU/s + 25 GB _lifetime_). ([Microsoft Azure][3])

### Opción “sin nube pesada”

-   **Render**: web services + cron; **Postgres Free** (30 días); usar **S3/R2** para objetos; FFmpeg en un worker.
-   **Railway**: deploy simple con crédito único (~USD 5); luego plan pago.

---

### Detalle de créditos / free tier

-   **GCP**: **USD 300 por 90 días**; además **Free Tier** “siempre gratis” para varios productos (Compute Engine e2-micro, Cloud Storage, etc.) y lo **Always Free no consume** tus créditos.
-   **AWS**: **Free Tier de 12 meses** (EC2 micro, S3, RDS, etc.), complementado con **créditos promocionales** cuyo monto y duración dependen de programas como AWS Activate.
-   **Azure**: **USD 200 por 30 días** + **12 meses gratis** en servicios elegibles (VM B1s, Blob y otros).
-   **Render**: plan **Free** para comenzar (p.ej., 750 h totales en instancias _Free_), y **Postgres Free expira a 30 días**.
-   **Railway**: **no** free “mensual”: da un **crédito único ≈ USD 5** para probar; luego plan pago.

## Consejos para no pasarte de presupuesto

-   **Controlá el _egress_**: en AWS, los **100 GB/mes** de salida del _Free Tier_ cubren pruebas razonables el primer año. ([Amazon Web Services, Inc.][8])
-   **Discos chicos**: mantené los discos de VMs cerca de **30 GB** para seguir en _free tiers_ iniciales (según proveedor). ([Amazon Web Services, Inc.][2])
-   **Apagá lo que no uses**: clusters, VMs _idle_, _pipelines_ de transcode terminados.

---

## Enlaces oficiales

-   **Google Cloud**: _Free & Always Free_ y precios por producto; **Transcoder API**. ([Google Cloud][7])
-   **AWS**: _Free Tier_ general, **RDS Free Tier**, **MediaConvert** precios, **S3** precios/egress. ([Amazon Web Services, Inc.][2])
-   **Azure**: _Free services_ y cuenta, **Cosmos DB Free Tier** (detalles _lifetime_), retiro de **Media Services**. ([Microsoft Azure][3])

---

## Recursos de cátedra (opcional)

-   **Repositorio "cloudcomputing-demo"** con _scripts_ y ejemplos de despliegue:
    [https://github.com/ingenieria-del-software-2/cloudcomputing-demo](https://github.com/ingenieria-del-software-2/cloudcomputing-demo) — ver demo03 (aws y gcp) para tips rápidos

-   **Video tutorial: Crea tu primera cuenta en AWS**
    [https://drive.google.com/file/d/1vps1XS2ReZ0CXFjKIOoqhzMM8YfiU1gh](https://drive.google.com/file/d/1vps1XS2ReZ0CXFjKIOoqhzMM8YfiU1gh)

-   **Demo 3 grabada asincrónicamente (IaC full e2e CI/CD)**
    [https://drive.google.com/file/d/145UHzRo0DJabGZFRC_3eVcHvPkhxy1V3](https://drive.google.com/file/d/145UHzRo0DJabGZFRC_3eVcHvPkhxy1V3) — permite levantar todo el IaC full e2e CI/CD

---

[1]: https://cloud.google.com/free/docs/free-cloud-features "Free cloud features and trial offer"
[2]: https://aws.amazon.com/free/ "Free Cloud Computing Services - AWS Free Tier"
[3]: https://azure.microsoft.com/en-us/pricing/free-services "Explore Free Azure Services"
[4]: https://cloud.google.com/pricing/list "Pricing per product"
[5]: https://cloud.google.com/firestore/pricing "Firestore pricing"
[6]: https://cloud.google.com/transcoder/pricing "Transcoder API pricing"
[7]: https://cloud.google.com/free "Free Trial and Free Tier Services and Products"
[8]: https://aws.amazon.com/blogs/aws/aws-free-tier-data-transfer-expansion-100-gb-from-regions-and-1-tb-from-amazon-cloudfront-per-month/ "AWS Free Tier Data Transfer Expansion – 100 GB From ..."
[9]: https://aws.amazon.com/rds/free/ "Amazon RDS Free Tier | Cloud Relational Database"
[10]: https://aws.amazon.com/dynamodb/pricing/ "Amazon DynamoDB Pricing | NoSQL Key-Value Database"
[11]: https://aws.amazon.com/mediaconvert/pricing/ "AWS Elemental MediaConvert Pricing"
[12]: https://azure.microsoft.com/en-us/pricing/purchase-options/azure-account "Create Your Azure Free Account Or Pay As You Go"
[13]: https://azure.microsoft.com/en-us/pricing/details/cosmos-db/autoscale-provisioned/ "Azure Cosmos DB pricing"
[14]: https://learn.microsoft.com/en-us/lifecycle/end-of-support/end-of-support-2024 "Ending Support in 2024 - Microsoft Lifecycle"

