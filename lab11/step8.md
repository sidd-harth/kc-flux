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

<br>

#### Check `secret` within `database` namespace
1. Flux will pull `sops-encrypted-secret`
2. The `kustomize-controller` will decrypt the secret before applying it.

```
kubectl -n database get secret secret-mysql -o json | jq .data.password -r | base64 -d
```{{exec}}

<br>

#### Access the Application
Block Buster App - `version 7.9.0` `should be` accessible:

# [Play Block Buster App - 7.9.0]({{TRAFFIC_HOST1_30009}})