> Please wait for 60 seconds. Setting up Step Pre-requisites

#### Create a `flux source` to pull `Helm Chart` from `OCI Repository`
- Generate a `flux source` with the following spec:
    - URL: `oci://ghcr.io/sid-demo/bb-app`
    - Name: `7-demo-source-oci-helm-bb-app-7-7-1`
    - Secret Ref: `ghcr-auth`
    - Export Path: `~/block-buster/flux-clusters/dev-cluster/7-demo-source-oci-helm-bb-app-7-7-1.yml`

<details><summary>Check Solution</summary>

```
flux create source helm 7-demo-source-oci-helm-bb-app-7-7-1 \
--url oci://ghcr.io/sid-demo/bb-app \
--secret-ref ghcr-auth \
--export > ~/block-buster/flux-clusters/dev-cluster/7-demo-source-oci-helm-bb-app-7-7-1.yml
```{{exec}}

</details>

<br>

#### Check the Generated YAML
```
cat ~/block-buster/flux-clusters/dev-cluster/7-demo-source-oci-helm-bb-app-7-7-1.yml
```{{exec}}

