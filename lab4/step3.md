#### Explore MinIO S3 Repository

> Please wait for 10 seconds, a background script will run at the start of this step

A `MinIO S3 Repo` is already install on this cluster.

> MinIO is like Amazon S3, but hosted locally. It is an object storage server that implements the same public API as Amazon S3.

<br>

#### Access MinIO Server
- Access Minio using below `URL` and `credentials`
    - UI: [MinIO WebConsole]({{TRAFFIC_HOST1_30040}})
    - Username: `minioadmin`
    - Password: `minioadmin`

<br>

#### Access Minio `Bucket`
- A `Bucket` is already created which contains the `manifests file`. Please explore them in the `UI`
    1. Login to MiniO UI: [MinIO WebConsole]({{TRAFFIC_HOST1_30040}})
    2. Click `Object Browser` (on the LEFT SIDE PANEL)
    3. Click Bucket Named: `bucket-bb-app`
    5. Access `manifests`

<br>

###### ****If you face any issue or have a new suggestion, please raise it here: [issues tracker](https://github.com/sidd-harth/fluxcd-tracker/issues)*