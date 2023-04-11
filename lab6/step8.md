#### Check Flux Status
As soon as the manifests are pushed to the repository, Flux will pull manifests and reconcile the cluster to deploy all the manifests.

<br>

#### Check Flux Source Status
- Run a `flux` cmd to `get` the `source` status using below spec:
    - Type: `helm`
    - Name: `7-demo-source-oci-helm-bb-app-7-7-1`

<details><summary>Check Solution</summary>

```
flux reconcile source git flux-system

flux get source helm 7-demo-source-oci-helm-bb-app-7-7-1
```{{exec}}

</details>

<br>

#### Check Flux HelmRelease Status
- Run a `flux` cmd to `get` the `HelmRelease` status using below spec:
    - Type: `helmrelease`
    - Name: `7-demo-helm-release-oci-bb-app-7-7-1`

<details><summary>Check Solution</summary>

```
flux get helmrelease 7-demo-helm-release-oci-bb-app-7-7-1
```{{exec}}

</details>

<br>

#### Check Kubernetes Namespace
A new namespace `7-demo` is created
```
k get ns
```{{exec}}

Check the status of deployment, pod, service are in `RUNNING` state
```
k -n 7-demo get all
```{{exec}}

#### Access the application on its NodePort
Now `access/play` Block Buster App - `version 7.7.1` using the below link:

# [Play Block Buster App - 7.7.1]({{TRAFFIC_HOST1_30771}})

> From v7.7.0, the game has a `High Score` field

> Complete `Level 1` to play/start `Level 2`

<br>

###### ****If you face any issue or have a new suggestion, please raise it here: [issues tracker](https://github.com/sidd-harth/fluxcd-tracker/issues)*