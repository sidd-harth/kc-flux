#### Create a `flux helmrelease` to apply the manifets
- Generate a `flux helmrelease` with the following spec:
    - Name: `7-demo-helm-release-oci-bb-app-7-7-1`
    - Source: `HelmRepository/7-demo-source-oci-helm-bb-app-7-7-`
    - Target Namespace: `7-demo`
    - Timeout: `10s`
    - Chart: `block-buster-helm-app`
    - Chart Version: `7.7.1`
    - Create Target Namespace: `true`
    - Values: `~/flux-training/helm/values.yml`
    - Export Path: `~/block-buster/flux-clusters/dev-cluster/7-demo-helm-release-oci-bb-app-7-7-1.yml`

<details><summary>Check Solution</summary>

```
flux create helmrelease 7-demo-helm-release-oci-bb-app-7-7-1 \
--source HelmRepository/7-demo-source-oci-helm-bb-app-7-7-1 \
--target-namespace 7-demo \
--chart block-buster-helm-app  \
--chart-version 7.7.1 \
--create-target-namespace true \
--values ~/flux-training/helm/values.yml \
--export > ~/block-buster/flux-clusters/dev-cluster/7-demo-helm-release-oci-bb-app-7-7-1.yml
```{{exec}}

</details>

<br>

#### Check the Generated YAML
```
cat ~/block-buster/flux-clusters/dev-cluster/7-demo-helm-release-oci-bb-app-7-7-1.yml
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
git commit -m 771-demo
git push
```{{exec}}

> Note the `commit id` displayed after the `git push` operation.

<br>

###### ****If you face any issue or have a new suggestion, please raise it here: [issues tracker](https://github.com/sidd-harth/fluxcd-tracker/issues)*