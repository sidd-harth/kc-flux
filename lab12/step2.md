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
Change to `bb-app-source` repo directory and Checkout `10-demo` branch

```
cd bb-app-source

git checkout 10-demo

tree manifests/
```{{exec}}

<br>

Check `image tag - 7.10.0` within `deployment.yaml`

```
cat ~/bb-app-source/manifests/deployment.yml | grep -i 7.10.0
```{{exec}}