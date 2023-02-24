#### In this step we will clone a repo and add K8S manifests for application deployment

#### Clone `block-butser` repo
Copy the below command, replace the value field and run it,

```
export GH_USERNAME=REPLACE-WITH-YOUR-GITHUB-USERNAME
```{{copy}}

```
cd ~
git clone https://github.com/$GH_USERNAME/block-buster
```{{exec}}

#### Create a directory in `block-butser` repo
```
mkdir ~/block-buster/flux-clusters/dev-cluster/1-demo
```{{exec}}

<br>

#### Copy manifests to `block-buster` repo
Copy all 3 manifests from `bb-app-source` repo `1-demo` branch to `1-demo` directory within `block-buster` repo

```
cp ~/bb-app-source/manifests/deployment.yml ~/block-buster/flux-clusters/dev-cluster/1-demo

cp ~/bb-app-source/manifests/namespace.yml ~/block-buster/flux-clusters/dev-cluster/1-demo

cp ~/bb-app-source/manifests/service.yml ~/block-buster/flux-clusters/dev-cluster/1-demo
```{{exec}}

<br>

#### Listing 1-demo directory
```
ll ~/block-buster/flux-clusters/dev-cluster/1-demo
```{{exec}}

<br>

#### Add, Commit, Push the changes
When prompted for `password` use the `GitHub PAT - Personal Access Token` used in earlier steps.

```
cd ~/block-buster
git config --global user.email "fluxcd@killercoda.com"
git config --global user.name "FluxCD-Killercoda"
git pull
git add .
git commit -m 1-demo
git push
```{{exec}}

> Note the `commit id` displayed after the `git push` operation.
