#### Explore GitHub Repo
- A repo named `bb-app-source` is cloned and available on this machine
- Explore it `cd bb-app-source`
- Open this [repository](https://github.com/sid-demo/bb-app-source) in browser tab and check branch **4-demo**

<br>

#### Explore `4-demo` branch 
Change to `bb-app-source` repo directory and Checkout `4-demo` branch

```
cd bb-app-source

git checkout 4-demo

tree manifests/
```{{exec}}

<br>

Check `image tag - 7.4.0` within `deployment.yml`

```
cat ~/bb-app-source/manifests/deployment.yml | grep -i 7.4.0
```{{exec}}

<br>

###### ****If you face any issue or have a new suggestion, please raise it here: [issues tracker](https://github.com/sidd-harth/fluxcd-tracker/issues)*
