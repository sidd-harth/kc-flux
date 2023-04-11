#### Check Flux Status
As soon as the manifests are pushed to the repository, Flux will pull manifests and reconcile the cluster to deploy all the manifests.

<br>

#### Check Flux Source Status
```
flux reconcile source git flux-system
```{{exec}}

```
flux get source git 8-demo-source-git-bb-app
```{{exec}}

```
flux get kustomization 8-demo-kustomize-git-bb-app
```{{exec}}

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

> From v7.8.0, `High Score` is persisted

<br>

###### ****If you face any issue or have a new suggestion, please raise it here: [issues tracker](https://github.com/sidd-harth/fluxcd-tracker/issues)*