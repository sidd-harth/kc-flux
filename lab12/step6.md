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

#### Generate Flux Source
We will Pull `OCI Artifact` Pushed by `flux` in `Step 3`

```
flux create source oci 10-demo-source-oci-bb-app \
--url oci://ghcr.io/$GH_USERNAME/bb-app \
--tag 7.10.0-$OCI_TAG \
--secret-ref ghcr-auth \
--provider generic \
--export > ~/block-buster/flux-clusters/dev-cluster/10-demo-source-oci-bb-app.yml
```{{exec}}

<br>

#### Modify Source to add Cosign Verify spec:
- Here `secretRef` is the secret which we created in a `step 5`
- This secret contains the public key of Cosign
```
cat <<EOF >>~/block-buster/flux-clusters/dev-cluster/10-demo-source-oci-bb-app.yml
  verify:
    provider: cosign
    secretRef:
      name: cosign-pub
EOF
```{{exec}}

<br>

#### Checkout the Generated Manifest
```
cat ~/block-buster/flux-clusters/dev-cluster/10-demo-source-oci-bb-app.yml
```{{exec}}

<br>

#### Add, Commit, Push the changes to `block-buster` repo
> When prompted for `password` use the `GitHub PAT - Personal Access Token` used in earlier steps.

```
cd ~/block-buster
git config --global user.email "fluxcd@killercoda.com"
git config --global user.name "FluxCD-Killercoda"
git pull
git add .
git commit -m "deploying 7.10.0 version app"
git push
```{{exec}}

> Note the `commit id` displayed after the `git push` operation.

<br>

###### ****If you face any issue or have a new suggestion, please raise it here: [issues tracker](https://github.com/sidd-harth/fluxcd-tracker/issues)*