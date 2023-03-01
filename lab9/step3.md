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

#### Create Flux Image Update
- Generate a `flux image update` with the following spec:
    - Name: `8-demo-image-update-bb-app`
    - Git Repo Ref: `8-demo-source-git-bb-app`
    - Git Repo Path: `./manifests`
    - Push Branch: `8-demo`
    - Checkout Branch: `8-demo`
    - Author Name: `fuxcdbot`
    - Author Email: `fluxcdbot@users.noreply.github.com`
    - Export Path: `~/block-buster/flux-clusters/dev-cluster/8-demo-image-update-bb-app.yml`

<details><summary>Check Solution</summary>

```
 flux create image update 8-demo-image-update-bb-app \
 --git-repo-ref 8-demo-source-git-bb-app \
 --checkout-branch 8-demo \
 --author-name fuxcdbot \
 --author-email fluxcdbot@users.noreply.github.com \
 --git-repo-path ./manifests \
 --push-branch 8-demo \
 --interval 100s \
 --export > ~/block-buster/flux-clusters/dev-cluster/8-demo-image-update-bb-app.yml
```{{exec}}

</details>

<br>

#### Check the Generated YAML
```
cat ~/block-buster/flux-clusters/dev-cluster/8-demo-image-policy-bb-app.yml
```{{exec}}

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