### Check Commit ID `block-buster` repo
```
cd ~/block-buster
```{{exec}}

```
git branch -v
```{{exec}}

### Check Flux Source Status
As soon as the manifests are pushed to the repository, Flux will pull manifests and reconcile the cluster to deploy all the manifests.

##### Check Flux Git Source Status
```
flux get source git flux-system
```{{exec}}

Check the commit id in Message matching the earlier branch commit id. It means that flux pulled the latests manifests.

##### Check Flux Kustomization Status 
```
flux get kustomization flux-system
```{{exec}}

Check the commit id in Message matching the earlier branch commit id. It means that flux reconciled the latests manifests.

### Check Kubernetes Namespace
A new namespace `1-demo` is created
```
k get ns
```{{exec}}

Check the status of deployment, pod, service
```
k -n 1-demo get all
```{{exec}}

### Access the application on its NodePort

Now access/play Block Buster App - version 7.1.0 using the below link:

# [Play Block Buster App - 7.1.0]({{TRAFFIC_HOST1_30001}})