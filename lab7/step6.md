#### Clone `block-butser` repo
Copy the below command, replace the value field and run it,

```
export GH_USERNAME=REPLACE-WITH-YOUR-GITHUB-USERNAME
```{{copy}}

```
cd ~
git clone https://github.com/$GH_USERNAME/block-buster
```{{exec}}

<br>

#### Deploy the manifests using `Flux`
- We will using Git Source and Kustomization `flux controllers`
- Since we have already done these steps multiple times in earlier labs, please execute the below commands directly.

<details><summary>Flux Source</summary>

```
flux create source git 8-demo-source-git-bb-app \
--url https://github.com/$GH_USERNAME/bb-app-source \
--branch 8-demo \
--timeout 10s \
--export >  ~/block-buster/flux-clusters/dev-cluster/8-demo-source-git-bb-app.yml 
```{{exec}}

</details>

<br>

<details><summary>Flux Kustomization</summary>

```
flux create kustomization 8-demo-kustomize-git-bb-app \
--source GitRepository/8-demo-source-git-bb-app \
--prune true \
--interval 100s \
--target-namespace 8-demo \
--path manifests  \
--export > ~/block-buster/flux-clusters/dev-cluster/8-demo-kustomize-git-bb-app.yml
```{{exec}}

</details>

<br>

#### Add, Commit, Push the changes to `block-buster` repo
> When prompted for `password` use the `GitHub PAT - Personal Access Token` used in earlier steps.

```
cd ~/block-buster
git config --global user.email "fluxcd@killercoda.com"
git config --global user.name "FluxCD-Killercoda"
git pull
git add .
git commit -m 8-demo
git push
```{{exec}}

> Note the `commit id` displayed after the `git push` operation.

<br>

###### ****If you face any issue or have a new suggestion, please raise it here: [issues tracker](https://github.com/sidd-harth/fluxcd-tracker/issues)*