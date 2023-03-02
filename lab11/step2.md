#### Clone `bb-app-source` repo
Copy the below command, replace the value field and run it,

```
export GH_USERNAME=REPLACE-WITH-YOUR-GITHUB-USERNAME
```{{copy}}

```
cd ~
git clone https://github.com/$GH_USERNAME/bb-app-source
```{{exec}}

<br>

#### Explore `database` manifests within `infrastructure` branch 
Change to `bb-app-source` repo directory and Checkout `infrastructure` branch

```
cd bb-app-source

git checkout infrastructure

tree database/
```{{exec}}

> We will delete this `sealed-secret-mysql` and replace it with a `Mozilla SOP Encrypted` secret

```
rm ~/bb-app-source/database/sealed-secret-mysql.yml
```{{exec}}


#### Add, Commit, Push the changes to `bb-source-app` repo
> When prompted for `password` use the `GitHub PAT - Personal Access Token` used in earlier steps.

```
cd ~/bb-app-source
git config --global user.email "fluxcd@killercoda.com"
git config --global user.name "FluxCD-Killercoda"
git pull
git add .
git commit -m 'delete database secret'
git push
```{{exec}}