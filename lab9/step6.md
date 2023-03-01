#### Check Flux Status
As soon as the manifests are pushed to the repository, Flux will pull manifests and reconcile the cluster to deploy all the manifests.

<br>

#### Check Flux Status
- Run a `flux` cmd to `get` the `image` status using below spec:
    - Type: `update`
    - Name: `8-demo-image-update-bb-app`

<details><summary>Check Solution</summary>

```
flux reconcile source git 8-demo-source-git-bb-app

flux get images update 8-demo-image-update-bb-app
```{{exec}}

</details>

> Check the Message of Previous command, it should mention, `authentication required`

<br>

> `Authentication` failed because `Flux` requires a `Deploy Key` to `push` changes to `bb-app-source` repo


