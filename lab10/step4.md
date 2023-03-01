> Please wait for 60 seconds, we are installing `Bitnami Sealed Secret Controller`

`Bitnami Sealed Secret Controller` is installed in `kube-system` namespace.
```
kubectl -n kube-system get po | grep -i sealed
```{{exec}}

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

#### Check the Generated YAML
We generated and saved the `Bitnami Sealed Secret` spec at the below location.
Commit it to your repo by following the below steps.

```
cat ~/block-buster/flux-clusters/dev-cluster/infra-security-kustomize-git-sealed-secrets.yml
```{{exec}}

#### Add, Commit, Push the changes to `block-buster` repo
> When prompted for `password` use the `GitHub PAT - Personal Access Token` used in earlier steps.

```
cd ~/block-buster
git config --global user.email "fluxcd@killercoda.com"
git config --global user.name "FluxCD-Killercoda"
git pull
git add .
git commit -m 8-demo
git push
```{{exec}}
