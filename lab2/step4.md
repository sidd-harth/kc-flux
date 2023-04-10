#### Check Flux Source Status
As soon as the manifests are pushed to the repository, Flux will pull manifests and reconcile the cluster to deploy all the manifests.

<br>

#### Check Flux Source Status
- Run a `flux` cmd to `get` the `source` status using below spec:
    - Type: `git`
    - Name: `flux-system`

Check the commit id in **Message** matching the earlier branch commit id. It means that flux pulled the latests manifests.

<details><summary>Check Solution</summary>

```
flux get source git flux-system
```{{exec}}

</details>

<br>

#### Check Flux Kustomization Status
- Run a `flux` cmd to `get` the `Kustomization` status using below spec:
    - Type: `kustomization`
    - Name: `flux-system`

Check the commit id in **Message** matching the earlier branch commit id. It means that flux pulled the latests manifests.

<details><summary>Check Solution</summary>

```
flux get kustomization flux-system
```{{exec}}

</details>

<br>

##### Check Kubernetes Namespace
A new namespace `1-demo` is created
```
k get ns
```{{exec}}

Check the status of deployment, pod, service are in `RUNNING` state
```
k -n 1-demo get all
```{{exec}}

#### Access the application on its NodePort
Now `access/play` Block Buster App - `version 7.1.0` using the below link:

# [Play Block Buster App - 7.1.0]({{TRAFFIC_HOST1_30001}})

<br>

###### ****If you face any issue or have a new suggestion, please raise it here: [issues tracker](https://github.com/sidd-harth/fluxcd-tracker/issues)*
