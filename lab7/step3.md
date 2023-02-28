#### Clone `block-butser` repo
Copy the below command, replace the value field and run it,

```
export GH_USERNAME=REPLACE-WITH-YOUR-GITHUB-USERNAME
```{{copy}}

```
cd ~
git clone https://github.com/$GH_USERNAME/bb-app-source
```{{exec}}

<br>

#### Explore `8-demo` branch 
Change to `bb-app-source` repo directory and Checkout `8-demo` branch

```
cd bb-app-source

git checkout 8-demo

tree manifests/
```{{exec}}

<br>

Check `image: siddharth67/block-buster-dev:7.8.0` within `deployment.yml`

```
cat ~/bb-app-source/manifests/deployment.yml | grep -i "siddharth67/block-buster-dev:7.8.0"
```{{exec}}
