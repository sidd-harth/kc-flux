#### Clone `block-buster` repo
Copy the below command, replace the value field and run it,

```
export GH_USERNAME=REPLACE-WITH-YOUR-GITHUB-USERNAME
```{{copy}}

```
cd ~
git clone https://github.com/$GH_USERNAME/block-buster
```{{exec}}

<br>

> From version `7.7.x` onwards the application persists the `Highscore` to a `MySQL Database`

#### Explore `infrastructure` branch 
Change to `bb-app-source` repo directory and Checkout `7-demo` branch

```
cd bb-app-source

git checkout infrastructure
```{{exec}}

<br>

Check `database` directory

```
tree database
```{{exec}}

<br>

#### Deploy Database Manifests using `Flux`
- Run the below `source` & `kustomize` commands to `fetch` and `deploy` all the manifests within the `database` directory 
- Since we have already done these steps multiple times in earlier labs, please execute the below commands directly.

<details><summary>Flux Source</summary>

```
export GH_USERNAME=REPLACE-WITH-YOUR-GITHUB-USERNAME
```{{exec interrupt}}

</details>

<br>

<details><summary>Flux Kustomization</summary>

```
flux create source git infra-source-git \
--url https://github.com/$GH_USERNAME/bb-app-source \
--branch infrastructure \
--timeout 10s \
--export > ~/block-buster/flux-clusters/dev-cluster/infra-source-git.yml
```{{exec}}

</details>

<br>

```
flux create kustomization infra-database-kustomize-git-mysql \
--source GitRepository/infra-source-git \
--prune true \
--interval 10s \
--target-namespace database \
--path ./database  \
--export > ~/block-buster/flux-clusters/dev-cluster/infra-database-kustomize-git-mysql.yml
```{{exec}}

<br>

###### ****If you face any issue or have a new suggestion, please raise it here: [issues tracker](https://github.com/sidd-harth/fluxcd-tracker/issues)*

