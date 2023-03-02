#### Verify OCI Artifact with Cosign
Command used is `cosign verify`

> Cosign Public key is used for verifying the signature

<details><summary>Check Solution</summary>

```
cosign verify --key cosign.pub ghcr.io/$GH_USERNAME/bb-app@sha256:b1f6.....
```{{copy}}

</details>


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

