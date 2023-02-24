### Clone `block-butser` repo
Copy the below command, replace the value field and run it,

`export GH_USERNAME=<<<<REPLACE-WITH-YOUR-GITHUB-USERNAME>>>`{{copy}}

`cd ~`{{exec}}

`git clone https://github.com/$GH_USERNAME/block-buster`{{exec}}

### Create a directory in `block-butser` repo
`mkdir ~/block-buster/flux-clusters/dev-cluster/1-demo`{{exec}}

### Copy manifests to `block-buster` repo
Copy all 3 manifests from `bb-app-source` repo `1-demo` branch to `1-demo` directory within `block-buster` repo

##### Copying deployment.yml
`cp ~/bb-app-source/manifests/deployment.yml ~/block-buster/flux-clusters/dev-cluster/1-demo`{{exec}}

##### Copying namespace.yml
`cp ~/bb-app-source/manifests/namespace.yml ~/block-buster/flux-clusters/dev-cluster/1-demo`{{exec}}

##### Copying service.yml
`cp ~/bb-app-source/manifests/service.yml ~/block-buster/flux-clusters/dev-cluster/1-demo`{{exec}}

##### Listing 1-demo directory
`ll ~/block-buster/flux-clusters/dev-cluster/1-demo`{{exec}}

### Add, Commit, Push the changes
When prompted for `password` use the `GitHub PAT - Personal Access Token` used in earlier steps

`cd ~/block-buster`{{exec}}

`git config --global user.email "demo@flux.com"`{{exec}}

`git config --global user.name "FluxCD"`{{exec}}

`git pull`{{exec}}

`git add .`{{exec}}

`git commit -m 1-demo`{{exec}}

`git push`{{exec}}
