#### Check Flux Status
As soon as the manifests are pushed to the repository, Flux will pull manifests and reconcile the cluster to deploy all the manifests.

<br>

#### Check Flux Update Status
- Run a `flux` cmd to `get` the `image` status using below spec:
    - Type: `update`
    - Name: `8-demo-image-update-bb-app`

<details><summary>Check Solution</summary>

```
flux reconcile source git flux-system

flux get images update 8-demo-image-update-bb-app
```{{exec}}

</details>

> Check the Message of Previous command, it should mention, `no updates made`

- The reason for `no updates made`,
    1. Flux does not know which file/manifest needs to be updated
- We need to add a `marker` to tell Flux,
    1. which `manifest` or `line` needs to be updated and
    2. which `policy` to use when updating the container image.
- The `marker` needs to be added to
    1. `deployment.yml` within `bb-app-source` repo in `8-demo` branch

<br>

###### ****If you face any issue or have a new suggestion, please raise it here: [issues tracker](https://github.com/sidd-harth/fluxcd-tracker/issues)*

