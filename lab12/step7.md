#### Check Flux Status
As soon as the manifests are pushed to the repository, Flux will pull manifests and reconcile the cluster to deploy all the manifests.

<br>

#### Check Flux Status
- Run a `flux` cmd to `get` the `source` status using below spec:
    - Type: `oci`
    - Name: `10-demo-source-oci-bb-app`

<details><summary>Check Solution</summary>

```
flux reconcile source git flux-system

flux get source oci 10-demo-source-oci-bb-app
```{{exec}}

</details>

<br>

#### Check Cosign Verification
We can check the source is getting verified using below command,

```
kubectl -n flux-system get ocirepositories.source.toolkit.fluxcd.io 10-demo-source-oci-bb-app -o yaml | grep -i Verified -A5 -B5
```{{exec}}

<br>

#### Check Kubernetes Namespace
A new namespace `10-demo` is created
```
k get ns
```{{exec}}

Check the status of deployment, pod, service are in `RUNNING` state
```
k -n 10-demo get all
```{{exec}}

#### Access the application on its NodePort
Now `access/play` Block Buster App - `version 7.10.0` using the below link:

# [Play Block Buster App - 7.10.0]({{TRAFFIC_HOST1_30010}})