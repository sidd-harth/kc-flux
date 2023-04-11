> Please wait for 60 seconds. Setting up Step Pre-requisites

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

#### Create a `flux source` to pull `Helm Chart` from `OCI Repository`
- Generate a `flux source` with the following spec:
    - URL: `oci://ghcr.io/<<your-GITHUB-USERNAME>>/bb-app`
    - Name: `7-demo-source-oci-helm-bb-app-7-7-1`
    - Secret Ref: `ghcr-auth`
    - Export Path: `~/block-buster/flux-clusters/dev-cluster/7-demo-source-oci-helm-bb-app-7-7-1.yml`

<details><summary>Check Solution</summary>

```
flux create source helm 7-demo-source-oci-helm-bb-app-7-7-1 \
--url oci://ghcr.io/$GH_USERNAME/bb-app \
--secret-ref ghcr-auth \
--export > ~/block-buster/flux-clusters/dev-cluster/7-demo-source-oci-helm-bb-app-7-7-1.yml
```{{exec}}

</details>

<br>

#### Check the Generated YAML
```
cat ~/block-buster/flux-clusters/dev-cluster/7-demo-source-oci-helm-bb-app-7-7-1.yml
```{{exec}}

<br>

###### ****If you face any issue or have a new suggestion, please raise it here: [issues tracker](https://github.com/sidd-harth/fluxcd-tracker/issues)*

