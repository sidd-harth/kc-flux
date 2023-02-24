#### Check Flux Source Status
As soon as the manifests are pushed to the repository, Flux will pull manifests and reconcile the cluster to deploy all the manifests.

<br>

#### Check Flux Source Status
- Run a `flux` cmd to `get` the `source` status using below spec:
    - Type: `git`
    - Name: `2-demo-source-git-bb-app`

<details><summary>Check Solution</summary>

```
flux reconcile source git flux-system

flux get source git 2-demo-source-git-bb-app
```{{exec}}

</details>

<br>

#### Check Flux Kustomization Status
- Run a `flux` cmd to `get` the `Kustomization` status using below spec:
    - Type: `kustomization`
    - Name: `2-demo-kustomize-git-bb-app`

<details><summary>Check Solution</summary>

```
flux get kustomization 2-demo-kustomize-git-bb-app
```{{exec}}

</details>

<br>

#### Check Kubernetes Namespace
A new namespace `2-demo` is created
```
k get ns
```{{exec}}

Check the status of deployment, pod, service are in `RUNNING` state
```
k -n 2-demo get all
```{{exec}}

#### Access the application on its NodePort
Now `access/play` Block Buster App - `version 7.2.0` using the below link:

# [Play Block Buster App - 7.2.0]({{TRAFFIC_HOST1_30002}})