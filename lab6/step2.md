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

<br>

###### ****If you face any issue or have a new suggestion, please raise it here: [issues tracker](https://github.com/sidd-harth/fluxcd-tracker/issues)*
