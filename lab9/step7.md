#### Index
- In this step we will 
    - Create a deploy key using flux
    - Add it as a secret to the `8-demo-source-git-bb-app` Git Source 	

<br>

#### Create Deploy Key
- Run a `flux` cmd to `create` the `secret` status using below spec:
    - Name: `8-demo-git-bb-app-aut`
    - URL: `ssh://git@github.com/<<your-github-usernane>>/bb-app-source.git`
    - SSH Key Algorithm: `ecdsa`
    - SSH ECDSA Curve: `p521`

<details><summary>Check Solution</summary>

```
export GH_USERNAME=REPLACE-WITH-YOUR-GITHUB-USERNAME
```{{copy}}

```
flux create secret git 8-demo-git-bb-app-auth \
--url=ssh://git@github.com/$GH_USERNAME/bb-app-source.git \
--ssh-key-algorithm=ecdsa \
--ssh-ecdsa-curve=p521
```{{exec}}

</details>

<br>

#### Update `8-demo-source-git-bb-app` Git Source
```
flux create source git 8-demo-source-git-bb-app \
--url ssh://git@github.com/$GH_USERNAME/bb-app-source.git \
--branch 8-demo \
--timeout 10s \
--secret-ref 8-demo-git-bb-app-auth \
--export > ~/block-buster/flux-clusters/dev-cluster/8-demo-source-git-bb-app.yml 
```{{exec}}

<br>

#### Add, Commit, Push the changes to `bb-source-app` repo
> When prompted for `password` use the `GitHub PAT - Personal Access Token` used in earlier steps.

```
cd ~/bb-app-source
git config --global user.email "fluxcd@killercoda.com"
git config --global user.name "FluxCD-Killercoda"
git pull
git add .
git commit -m 'updated image'
git push
```{{exec}}