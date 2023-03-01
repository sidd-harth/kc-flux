#### Index
- In this step we will 
    - Create a `Deploy key` using flux, it will be saved as a `secret` in `flux-system` namespace
    - Add it as a `Deploy Key` to `bb-app-source` repo
    - Add it as a `secret-ref` to the `8-demo-source-git-bb-app` Git Source 	

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

> Previous command outputs a `DEPLOY KEY` copy it starting from `ecdsa-sha2-nistp521 .... `

<br>

#### Add `Deploy Key` to `bb-app-source` repo
- Go to your `bb-app-source` repo and add a deploy key following below steps:
    - [Click and Follow Steps 3,4,5,6,7,8,9](https://docs.github.com/en/authentication/connecting-to-github-with-ssh/managing-deploy-keys#set-up-deploy-keys)
        - Title: `flux-key`
        - Key: `copy-paste from previous command output`
        - Allow Write Access: `Enable` 

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
cd ~/block-buster
git config --global user.email "fluxcd@killercoda.com"
git config --global user.name "FluxCD-Killercoda"
git pull
git add .
git commit -m 'updated image'
git push
```{{exec}}