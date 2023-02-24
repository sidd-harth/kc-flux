### Clone `block-butser` repo
Copy the below command, replace the value field and run it,

`export GH_USERNAME=<<<<REPLACE-WITH-YOUR-GITHUB-USERNAME>>>`{{copy}}

`cd ~`{{exec}}

`git clone https://github.com/$GH_USERNAME/block-buster`{{exec}}

### Create a directory in `block-butser` repo
`mkdir ~/block-buster/flux-clusters/dev-cluster/1-demo`{{exec}}

### Copy-Paste manifests to `block-buster` repo
Copy all 3 manifests from `bb-app-source` repo `1-demo` branch to `1-demo` directory within `block-buster` repo

```cp ~/bb-app-source/manifests/deployment.yml ~/block-buster/flux-clusters/dev-cluster/1-demo```{{exec}}
```cp ~/bb-app-source/manifests/namespace.yml ~/block-buster/flux-clusters/dev-cluster/1-demo```{{exec}}
```cp ~/bb-app-source/manifests/service.yml ~/block-buster/flux-clusters/dev-cluster/1-demo```{{exec}}

### Push the changes
```cd ~/block-buster```{{exec}}

```git pull```{{exec}}

```git push```{{exec}}