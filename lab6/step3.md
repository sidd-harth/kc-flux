> Starting with Helm v3.8.0, Helm supports the OCI registry as a one of the storage option for Helm charts as an alternative to Helm repositories. 

> The Helm CLI can push and pull Helm charts to and from OCI-compliant registries.

<br>

#### Package Helm Chart
- Helm CLI is already installed, follow below spec to create a Helm package:
    - Path: `~/bb-app-source/7.7.1/helm-chart/`

<details><summary>Check Solution</summary>

```
helm package ~/bb-app-source/7.7.1/helm-chart/
```{{exec}}

</details>

> Check that a new `block-buster-helm-app-7.7.1.tgz` file is created in `~/bb-app-source/7.7.1/helm-chart/` directory

<br>

#### Login to OCI Repo
- Login to `GHCR OCI Repo` using Helm CLI
    - Domain: `ghcr.io`
    - Username: `Replace-with-your-Github-Username`
    - Password: `Use your Github Pesonal Access Token (PAT)`

<details><summary>Check Solution</summary>

```
export GH_USERNAME=REPLACE-WITH-YOUR-GITHUB-USERNAME

helm registry login ghcr.io --username $GH_USERNAME
```{{exec}}

</details>

<br>

#### Push to OCI Repo
- Push to OCI Repo following below spec:
    - Artifact: `~/bb-app-source/7.7.1/helm-chart/block-buster-helm-app-7.7.1.tgz`
    - Repo: `oci://ghcr.io/$GH_USERNAME/bb-app`


<details><summary>Check Solution</summary>

```
helm push ~/bb-app-source/7.7.1/helm-chart/block-buster-helm-app-7.7.1.tgz oci://ghcr.io/$GH_USERNAME/bb-app
```{{exec}}

</details>

> Go to GitHub Package and checkout the new package - https://github.com/$GH_USERNAME?tab=packages