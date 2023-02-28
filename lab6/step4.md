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
    - Export Path: `~/block-buster/flux-clusters/dev-cluster/flux-secrets/ghcr-auth.yml`

<details><summary>Check Solution</summary>

```
flux create secret oci ghcr-auth \
--url ghcr.io \
--username your-github-username \
--password your-github-pesonal-access-token-pat \
--export > ~/block-buster/flux-clusters/dev-cluster/flux-secrets/ghcr-auth.yml>
```{{copy}}

</details>

> For the time being we will store `PLAIN-TEXT` secrets in `GIT`. 

> In later Lab/Session we will `ENCRYPT` the secret using `SOPS`, `Sealed Secrets`
