#### Explore GitHub Repo
- A repo named `bb-app-sourc` is cloned and available on this machine
- Explore it `cd bb-app-source`
- Open this [repository](https://github.com/sid-demo/bb-app-source) in browser tab and check branch **7-demo**

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
cat ~/block-buster/manifests/deployment.yml | grep -i "siddharth67/block-buster-dev:7.8.0"
```{{exec}}
