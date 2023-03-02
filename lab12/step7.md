#### Check Flux Status
As soon as the manifests are pushed to the repository, Flux will pull manifests and reconcile the cluster to deploy all the manifests.

<br>

#### Check Flux Status
- Run a `flux` cmd to `get` the `source` status using below spec:
    - Type: `oci`
    - Name: `10-demo-source-oci-bb-app`

<details><summary>Check Solution</summary>

```
flux reconcile source git flux-system

flux reconcile source oci 10-demo-source-oci-bb-app

flux get source oci 10-demo-source-oci-bb-app
```{{exec}}

</details>

<br>

#### Check Cosign Verification
We can check the source is getting verified using below `kubectl` command,

```
kubectl -n flux-system get ocirepositories.source.toolkit.fluxcd.io 10-demo-source-oci-bb-app -o yaml | grep -i Verified
```{{exec}}


> The previous command should display an ouput similar to - `Source Verified`