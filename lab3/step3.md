#### Clone `block-butser` repo
- Copy the below command, replace the value field and run it,

```
export GH_USERNAME=REPLACE-WITH-YOUR-GITHUB-USERNAME
```{{copy}}

```
cd ~
git clone https://github.com/$GH_USERNAME/block-buster
```{{exec}}

<br>

#### Create a `flux source` to pull from `bb-app-source`
- Generate a `flux source` with the following spec:
    - Name: `2-demo-source-git-bb-app`
    - URL: `<<add-YOUR-github-url-block-buster>>`
    - Branch: `2-demo`
    - Timeout: `10s`
    - Export Path: `~/block-buster/flux-clusters/dev-cluster/2-demo-source-git-bb-app.yml`

<details><summary>Check Solution</summary>

```
export GH_USERNAME=REPLACE-WITH-YOUR-GITHUB-USERNAME
```{{copy}}

```
flux create source git 2-demo-source-git-bb-app \
--url https://github.com/$GH_USERNAME/bb-app-source \
--branch 2-demo \
--timeout 10s \
--export > ~/block-buster/flux-clusters/dev-cluster/2-demo-source-git-bb-app.yml
```{{exec}}

</details>

<br>

#### Check the Generated YAML
```
cat ~/block-buster/flux-clusters/dev-cluster/2-demo-source-git-bb-app.yml
```{{exec}}

