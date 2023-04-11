#### Create a `flux helmrelease` to apply the manifets
- Generate a `flux helmrelease` with the following spec:
    - Name: `6-demo-helm-release-bb-app`
    - Source: `HelmRepository/6-demo-source-helm-bb-app`
    - Target Namespace: `6-demo`
    - Timeout: `10s`
    - Chart: `block-buster-helm-app`
    - Values: `~/flux-training/helm/values.yml`
    - Export Path: `~/block-buster/flux-clusters/dev-cluster/6-demo-helm-release-bb-app.yml`

<details><summary>Check Solution</summary>

```
flux create helmrelease 6-demo-helm-release-bb-app \
--chart block-buster-helm-app \
--interval 10s \
--target-namespace 6-demo \
--source HelmRepository/6-demo-source-helm-bb-app \
--values ~/flux-training/helm/values.yml \
--export > ~/block-buster/flux-clusters/dev-cluster/6-demo-helm-release-bb-app.yml
```{{exec}}

</details>

<br>

#### Check the Generated YAML
```
cat ~/block-buster/flux-clusters/dev-cluster/6-demo-helm-release-bb-app.yml
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
git commit -m 6-demo
git push
```{{exec}}

> Note the `commit id` displayed after the `git push` operation.

<br>

###### ****If you face any issue or have a new suggestion, please raise it here: [issues tracker](https://github.com/sidd-harth/fluxcd-tracker/issues)*