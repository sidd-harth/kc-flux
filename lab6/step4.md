#### Flux Connecting to GHCR OCI Repo
We will use `flux` to connect to `GHCR OCI Repo` and fetch the manifests or Helm charts.

`flux` needs to authenticate aganist `GHCR OCI Repo` and hence we will create a `Flux K8S Secret` and use it as an refernece within `flux`.

#### Flux OCI Secret
- Create a Flux OCI Secret with the following spec:
    - Secret Name: `ghcr-auth`
    - Secret Type: `oci`
    - URL: `ghcr.io`
    - Username: `your-github-username`
    - Password: `your-github-pesonal-access-token-pat`

<details><summary>Check Solution</summary>

```
flux create secret oci ghcr-auth \
--url ghcr.io \
--username $GH_USERNAME \
--password your-github-pesonal-access-token-pat>>>>>>>>
```{{copy}}

</details>

