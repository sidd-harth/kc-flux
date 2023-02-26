#### Explore MinIO S3 Repository

A `MinIO S3 Repo` is already install on this cluster.

> MinIO is like Amazon S3, but hosted locally. Minio is an object storage server that implements the same public API as Amazon S3.

<br>

#### Access MinIO Server
- Access Minio using below `URL` and `credentials`
    - Webconsole: [MinIO]({{TRAFFIC_HOST1_30040}})
    - Username: `minioadmin`
    - Password: `minioadmin`

<br>

#### Create a `Bucket`
- Follow below steps:
    - Click `Object Browser` (on the LEFT SIDE PANEL)
        - Click `Create a Bucket`
            - Bucket Name: `bucket-bb-app`

#### Upload `Manifests` to `Bucket`
- Follow below steps:
    - Click `Object Browser` (on the LEFT SIDE PANEL)
        - Click Bucket Named: `bucket-bb-app`
            - Click `Upload Folder`
                - Add `manifests` directory from `4-demo` branch