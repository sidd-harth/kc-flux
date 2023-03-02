#### Verify OCI Artifact with Cosign
Command used is `cosign verify`

```
cosign verify --key cosign.pub ghcr.io/$GH_USERNAME/bb-app:7.10.0-$OCI_TAG
```{{exec}}

> Cosign Public key is used for verifying the signature

<br>

> To let Flux to verify the signature of the OCI artifact, we should create a secret that contains the `Cosign public key`

<br>

#### Create a Kubernetes Secret
- Generate a secret with following spec:
    - Name: `cosign-pub`
    - Type: `generic`
    - From File: `~/cosign.pub`
    - From File Key: `cosign.pub`
    - Namsespace: `flux-system`

<details><summary>Check Solution</summary>

```
cd ~

kubectl -n flux-system create secret generic cosign-pub --from-file=cosign.pub=cosign.pub
```{{exec}}

</details>

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

<details><summary>Check Solution</summary>

```
flux create secret oci ghcr-auth \
--url ghcr.io \
--username $GH_USERNAME \
--password your-github-pesonal-access-token-pat>>>>>
```{{exec interrupt}}

</details>
