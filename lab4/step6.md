#### Create a `flux kustomization` to apply the manifets
- Generate a `flux kustomization` with the following spec:
    - Name: `4-demo-kustomize-minio-s3-bucket-bb-app`
    - Source: `Bucket/4-demo-source-minio-s3-bucket-bb-app`
    - Target Namespace: `4-demo`
    - Timeout: `10s`
    - Path: `manifests`
    - Prune: `true`
    - Export Path: `~/block-buster/flux-clusters/dev-cluster/4-demo-kustomize-minio-s3-bucket-bb-app.yml`

<details><summary>Check Solution</summary>

```
  flux create kustomization 4-demo-kustomize-minio-s3-bucket-bb-app \
  --source Bucket/4-demo-source-minio-s3-bucket-bb-app \
  --target-namespace 4-demo \
  --path ./manifests \
  --prune true \
  --export > ~/block-buster/flux-clusters/dev-cluster/4-demo-kustomize-minio-s3-bucket-bb-app.yml
```{{exec}}

</details>

<br>

#### Check the Generated YAML
```
cat ~/block-buster/flux-clusters/dev-cluster/4-demo-kustomize-minio-s3-bucket-bb-app.yml
```{{exec}}

<br>

#### Add, Commit, Push the changes
> When prompted for `password` use the `GitHub PAT - Personal Access Token` used in earlier steps.

```
cd ~/block-buster
git config --global user.email "fluxcd@killercoda.com"
git config --global user.name "FluxCD-Killercoda"
git pull
git add .
git commit -m 4-demo
git push
```{{exec}}

> Note the `commit id` displayed after the `git push` operation.