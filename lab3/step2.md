#### Explore GitHub Repo
- A repo named `bb-app-source` is cloned and available on this machine
- Explore it `cd bb-app-source`
- Open this [repository](https://github.com/sid-demo/bb-app-source) in browser tab and check branch **2-demo**

#### Explore `2-demo` branch 
Change to `bb-app-source` repo directory and Checkout `2-demo` branch

```
cd bb-app-source

git checkout 2-demo

tree manifests/
```{{exec}}

<br>

Check `image tag - 7.2.0` within `deployment.yml`

```
cat deployment.yml | grep -i image
```{{exec}}
