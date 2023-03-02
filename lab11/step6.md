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

> Kustomization message show no error

#### Check `secret` in `database` namespace
```
k -n database get secrets  secret-mysql -o json | jq .data.password -r | base64 -d
```{{exec}}

> It just print's the `SOPS` encrypted string which starts with `ENC[AES256_GCM,data:05......`

> As of know, `Kustomization` is not doing any decryption.

> In next step we will modify `Kustomization` to `decrypt` the `secret` before applying

