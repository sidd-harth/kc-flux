> This step requires your `DockerHub credentials/account`

<br>

#### GHCR Login
- Login to `GHCR` using `Docker CLI`
    - Username: `your-GITHUB-Username`
    - Password: `your-GITHUB-Personal-Access-Token`
    - Domain: `ghcr.io`

```
export GH_USERNAME=your-github-username>
```{{exec}}

```
docker login ghcr.io --username $GH_USERNAME
```{{exec}}

> It will prompt for `password`, enter your `GitHub Personal Access Token - PAT`

<br>

#### Generate OCI Artefact and Push to GHCR

> Flux `push artefact` CLI command can generate an OCI Artefact and push it to GHCR OCI Repository.

- Generate OCI Artifact and push to to GHCR using following spec:
    - OCI URL: `oci://ghcr.io/<<your-github-username>>/bb-app:7.10.0-$(git rev-parse --short HEAD)`
    - Path: `manifests` (from `bb-app-source` repo `10-demo` branch)
    - Source: `$(git config --get remote.origin.url)`
    - Revision: `7.10.0/$(git rev-parse --short HEAD)`

<details><summary>Check Solution</summary>

```
cd ~/bb-app-source

flux push artifact oci://ghcr.io/$GH_USERNAME/bb-app:7.10.0-$(git rev-parse --short HEAD) \
--path="./manifests" \
--source="$(git config --get remote.origin.url)" \
--revision="7.10.0/$(git rev-parse --short HEAD)"
```{{exec}}

</details>

<br>

#### Go to GitHub Package and checkout the new package - https://github.com/$GH_USERNAME?tab=packages

> Replace $GH_USERNAME with your GitHub Username

> Make a note of SHA256 string, we will use it in the next step
