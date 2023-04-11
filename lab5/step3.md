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

#### Create a `flux source` to pull from `HELM Repository`
- Generate a `flux source` with the following spec:
    - URL: `https://sidd-harth.github.io/block-buster-helm-app`
    - Timeout: `10s`
    - Export Path: `~/block-buster/flux-clusters/dev-cluster/6-demo-source-helm-bb-app.yml`

<details><summary>Check Solution</summary>

```
flux create source helm 6-demo-source-helm-bb-app \
--url https://sidd-harth.github.io/block-buster-helm-app \
--timeout 10s \
--export > ~/block-buster/flux-clusters/dev-cluster/6-demo-source-helm-bb-app.yml
```{{exec}}

</details>

<br>

#### Check the Generated YAML
```
cat ~/block-buster/flux-clusters/dev-cluster/6-demo-source-helm-bb-app.yml
```{{exec}}

<br>

###### ****If you face any issue or have a new suggestion, please raise it here: [issues tracker](https://github.com/sidd-harth/fluxcd-tracker/issues)*

