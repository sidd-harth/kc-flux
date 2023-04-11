#### Check Flux Status
As soon as the manifests are pushed to the repository, Flux will pull manifests and reconcile the cluster to deploy all the manifests.

<br>

#### Check Flux Source Status
```
flux reconcile source git flux-system
```{{exec}}

```
flux reconcile source git 8-demo-source-git-bb-app
```{{exec}}

```
flux get kustomization 8-demo-kustomize-git-bb-app
```{{exec}}

<br>

###### ****If you face any issue or have a new suggestion, please raise it here: [issues tracker](https://github.com/sidd-harth/fluxcd-tracker/issues)*

