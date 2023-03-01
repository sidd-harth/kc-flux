#### Check Flux Status
As soon as the manifests are pushed to the repository, Flux will pull manifests and reconcile the cluster to deploy all the manifests.

<br>

#### Check Flux Status
- Run a `flux` cmd to `get` the `image` status using below spec:
    - Type: `policy`
    - Name: `8-demo-image-policy-bb-app`

<details><summary>Check Solution</summary>

```
flux reconcile source git flux-system

flux get images policy 8-demo-image-policy-bb-app
```{{exec}}

</details>

> Check the Message of Previous command, it should mention,

> Latest image tag for 'docker.io/<<YOUR-DOCKER-USERNAME>>/bb-app-flux-demo-killercoda' resolved to: `7.8.1`

<br>

#### Check Kubernetes Namespace
A new namespace `8-demo` is created
```
k get ns
```{{exec}}

Check the status of deployment, pod, service are in `RUNNING` state
```
k -n 8-demo get all
```{{exec}}

#### Access the application on its NodePort
Now `access/play` Block Buster App - `version 7.8.0` using the below link:

# [Play Block Buster App - 7.8.0]({{TRAFFIC_HOST1_30008}})

> Check updated color and version as set in previous lab