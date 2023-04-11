#### Install Cosign Binary
```
wget "https://github.com/sigstore/cosign/releases/download/v1.6.0/cosign-linux-amd64"

mv cosign-linux-amd64 /usr/local/bin/cosign

chmod +x /usr/local/bin/cosign

cosign version
```{{exec}}

<br>

#### Generate Cosign Keypair
> Below command will generate a `public` and `private key`. Private key is secured using a `password`

> Enter a `password` when prompted and remember it

```
cd ~

cosign generate-key-pair
```{{exec}}

<br>

#### Sign OCI Artifact with Cosign
- Sign the artifact using following spec:
    - Command: `cosign sign`
    - Key: `~/cosign.key`
    - OCI Artifact: `ghcr.io/$GH_USERNAME/bb-app:7.10.0-$OCI_TAG`
    - When prompted for password for private key: `enter the password which was entered in Generate Cosign Keypair step`

<details><summary>Check Solution</summary>

```
cosign sign --key ~/cosign.key ghcr.io/$GH_USERNAME/bb-app:7.10.0-$OCI_TAG
```{{exec}}

</details>

> Cosign `Private Key` is used for signing

> Refer Github Packages for this artifact - A new `signature` is pushed by cosign

<br>

###### ****If you face any issue or have a new suggestion, please raise it here: [issues tracker](https://github.com/sidd-harth/fluxcd-tracker/issues)*