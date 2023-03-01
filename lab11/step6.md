#### Check Flux Status
As soon as the manifests are pushed to the repository, Flux will pull manifests and reconcile the cluster to deploy all the manifests.

<br>

#### Check Flux Status
- Run a `flux` cmd to `reconcile` the `source & kustomization` status using below spec:
    - Type: `git`
    - Name: `infra-source-git` & `infra-database-kustomize-git-mysql`

<details><summary>Check Solution</summary>

```
flux reconcile source git infra-source-git

flux reconcile kustomization infra-database-kustomize-git-mysql
```{{exec}}

</details>

> Kustomization message show an error `errrrrrrrrrrr`, this happens becuase flux cannot decrypt the SOPS encrypted secret

