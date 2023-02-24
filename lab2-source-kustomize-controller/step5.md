## In this step we will **manually** reconcile the Git Source.

### Check deployment replicas
As of now the app deployment has only 1 replica, which results in 1 running pod.

```
k -n 1-demo get all
```{{exec}}

### Increase Replicas and Commit
Edit `deployment.yml` and increase the replicas from `1` to `3` and save the file

```
vi ~/block-buster/flux-clusters/dev-cluster/1-demo/deployment.yml
```{{exec}}

### Add, Commit, Push the changes
When prompted for `password` use the `GitHub PAT - Personal Access Token` used in earlier steps

```
cd ~/block-buster
```{{exec}}

```
git config --global user.email "demo@flux.com"
```{{exec}}

```
git config --global user.name "FluxCD"
```{{exec}}

```
git pull
```{{exec}}

```
git add .
```{{exec}}

```
git commit -m 1-demo
```{{exec}}

```
git push
```{{exec}}

### Check Commit ID `block-buster` repo
```
cd ~/block-buster
```{{exec}}

```
git branch -v
```{{exec}}

### Manual Reconcilation of Source

```
flux reconcile source git flux-system
```{{exec}}

### Manual Reconcilation of Kustomization

```
flux reconcile kustomization flux-system
```{{exec}}

### Check deployment replicas
Earlier the app deployment had only 1 replica, now it should have 3 running pods.

```
k -n 1-demo get all
```{{exec}}