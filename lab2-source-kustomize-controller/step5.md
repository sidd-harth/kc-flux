> In this step we will **manually** reconcile the Git Source.

#### Check deployment replicas
As of now the app deployment has only 1 replica, which results in 1 running pod.

```
k -n 1-demo get all
```{{exec}}

#### Increase Replicas and Commit
Edit `deployment.yml` and increase the replicas from `1` to `3` and save the file

```
vi ~/block-buster/flux-clusters/dev-cluster/1-demo/deployment.yml
```{{exec}}

#### Add, Commit, Push the changes
When prompted for `password` use the `GitHub PAT - Personal Access Token` used in earlier steps

```
cd ~/block-buster
git add .
git commit -m 'updated replicas to 3'
git push
```{{exec}}

#### Reconcilation of Git Source
Run a `flux` cmd to manually `reconcile` a `source` using below spec:
    - Operation: `reconcile`
    - Type: `source`
    - Source: `git`
    - Name: `flux-system`

<details><summary>Check Solution</summary>

```
flux reconcile source git flux-system
```{{exec}}

</details>

<br>

#### Reconcilation of Kustomization
Run a `flux` cmd to manually `reconcile` a `kustomization` using below spec:
    - Operation: `reconcile`
    - Type: `kustomization`
    - Name: `flux-system`

<details><summary>Check Solution</summary>

```
flux reconcile kustomization flux-system
```{{exec}}

</details>

<br>


#### Check Deployment Replicas
Earlier the app deployment had only 1 replica, now it should have 3 running pods.

```
k -n 1-demo get all
```{{exec}}