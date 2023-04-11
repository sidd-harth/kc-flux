> MinIO is running on this `Kubernetes` cluster within `minio-dev` namespace

```
kubectl -n minio-dev get all
```{{exec}}

<br>

#### Create a `flux source` to pull from `Minio S3 Bucket`
- Generate a `flux source` with the following spec:
    - Name: `4-demo-source-minio-s3-bucket-bb-app`
    - Bucket Name: `bucket-bb-app`
    - Secret Ref: `minio-crds`
    - Endpoint: `minio.minio-dev.svc.cluster.local:9000`
    - Provider: `generic`
    - Insecure: `true`
    - Export Path: `~/block-buster/flux-clusters/dev-cluster/4-demo-source-minio-s3-bucket-bb-app.yml`

<details><summary>Check Solution</summary>

```
flux create source bucket 4-demo-source-minio-s3-bucket-bb-app \
  --bucket-name bucket-bb-app \
  --secret-ref minio-crds \
  --endpoint minio.minio-dev.svc.cluster.local:9000  \
  --provider generic \
  --insecure \
  --export > ~/block-buster/flux-clusters/dev-cluster/4-demo-source-minio-s3-bucket-bb-app.yml
```{{exec}}

</details>

<br>

#### Check the Generated YAML
```
cat ~/block-buster/flux-clusters/dev-cluster/4-demo-source-minio-s3-bucket-bb-app.yml
```{{exec}}

<br>

###### ****If you face any issue or have a new suggestion, please raise it here: [issues tracker](https://github.com/sidd-harth/fluxcd-tracker/issues)*

