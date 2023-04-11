#### Create a `flux kustomization` to apply the manifets
- Generate a `flux kustomization` with the following spec:
    - Name: `2-demo-kustomize-git-bb-app`
    - Source: `GitRepository/2-demo-source-git-bb-app`
    - Target Namespace: `2-demo`
    - Timeout: `10s`
    - Path: `manifests`
    - Prune: `true`
    - Export Path: `~/block-buster/flux-clusters/dev-cluster/2-demo-kustomize-git-bb-app.yml`

<details><summary>Check Solution</summary>

```
flux create kustomization 2-demo-kustomize-git-bb-app \
--source GitRepository/2-demo-source-git-bb-app \
--prune true \
--interval 10s \
--target-namespace 2-demo \
--path manifests  \
--export > ~/block-buster/flux-clusters/dev-cluster/2-demo-kustomize-git-bb-app.yml
```{{exec}}

</details>

<br>

#### Check the Generated YAML
```
cat ~/block-buster/flux-clusters/dev-cluster/2-demo-kustomize-git-bb-app.yml
```{{exec}}

<br>

#### Add, Commit, Push the changes
> When prompted for `password` use the `GitHub PAT - Personal Access Token` used in earlier steps.

```
cd ~/block-buster
git config --global user.email "fluxcd@killercoda.com"
git config --global user.name "FluxCD-Killercoda"
git pull
git add .
git commit -m 2-demo
git push
```{{exec}}

> Note the `commit id` displayed after the `git push` operation.

<br>

###### ****If you face any issue or have a new suggestion, please raise it here: [issues tracker](https://github.com/sidd-harth/fluxcd-tracker/issues)*