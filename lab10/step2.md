#### Clone `bb-app-source` repo
- Copy the below command, replace the value field and run it,

```
export GH_USERNAME=REPLACE-WITH-YOUR-GITHUB-USERNAME
```{{copy}}

```
cd ~
git clone https://github.com/$GH_USERNAME/bb-app-source
```{{exec}}

<br>

#### Explore `database` manifests within `infrastructure` branch 
- Change to `bb-app-source` repo directory and Checkout `infrastructure` branch

```
cd bb-app-source

git checkout infrastructure

tree database/
```{{exec}}

<br>

Check `plain-text secret`

```
cat ~/bb-app-source/database/secret-mysql.yaml | grep -i "password"
```{{exec}}

> We will delete this `plain-text-secret` and replace it with a secured `encrypted` secret

Before `deleting` lets `copy` the `secret` to `root` directory
```
cp ~/bb-app-source/database/secret-mysql.yaml ~/secret-mysql.yaml
```{{exec}}

```
rm ~/bb-app-source/database/secret-mysql.yaml
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

<br>

###### ****If you face any issue or have a new suggestion, please raise it here: [issues tracker](https://github.com/sidd-harth/fluxcd-tracker/issues)*