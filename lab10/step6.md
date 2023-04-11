#### Check Flux Status
As soon as the manifests are pushed to the repository, Flux will pull manifests and reconcile the cluster to deploy all the manifests.

<br>

#### Check Flux Status
- Run a `flux` cmd to `reconcile` the `source` status using below spec:
    - Type: `git`
    - Name: `infra-source-git`

<details><summary>Check Solution</summary>

```
flux reconcile source git flux-system

flux reconcile source git infra-source-git
```{{exec}}

</details>

<br>

#### Check `secret` within `database` namespace
1. Flux will pull `sealed-secret` and apply it
2. The `sealed-secret-controller` will make use of the `webhooks` to decrypt the secret before applying it.

```
kubectl -n database get secret secret-mysql -o json | jq .data.password -r | base64 -d
```{{exec}}

<br>

#### Access the Application
Block Buster App - `version 7.9.0` `should be` accessible:

# [Play Block Buster App - 7.9.0]({{TRAFFIC_HOST1_30009}})

<br>

###### ****If you face any issue or have a new suggestion, please raise it here: [issues tracker](https://github.com/sidd-harth/fluxcd-tracker/issues)*