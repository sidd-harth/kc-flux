#### Explore GitHub Repo
- A repo named `bb-app-source` is cloned and available on this machine
- Explore it `cd bb-app-source`
- Open this [repository](https://github.com/sid-demo/bb-app-source) in browser tab and check branch **7-demo**

<br>

#### Explore `7-demo` branch 
Change to `bb-app-source` repo directory and Checkout `7-demo` branch

```
cd bb-app-source

git checkout 7-demo

tree 7.7.1/helm-chart
```{{exec}}

<br>

Check `image tag - 7.7.1` within `values.yaml`

```
cat ~/bb-app-source/7.7.1/helm-chart/values.yaml | grep -i 7.7.1
```{{exec}}
