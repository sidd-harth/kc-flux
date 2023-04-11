#### Check Flux Status
- Run a `flux` cmd to `reconcile & get` the `source` status using below spec:
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

> This proves that the `OCI Artifact Source` was indeed verified by `Flux` using `Cosign`

<br>

###### ****If you face any issue or have a new suggestion, please raise it here: [issues tracker](https://github.com/sidd-harth/fluxcd-tracker/issues)*