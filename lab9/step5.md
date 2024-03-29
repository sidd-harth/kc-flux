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

#### Explore `8-demo` branch 
Change to `bb-app-source` repo directory and Checkout `8-demo` branch

```
cd bb-app-source

git checkout 8-demo

tree manifests/
```{{exec}}

<br>

#### Add a `marker` to the image with deployment manifest

```
sed -i 's/image:.*/&  # {"$imagepolicy": "flux-system:8-demo-image-policy-bb-app"}/g' ~/bb-app-source/manifests/deployment.yml
```{{exec}}


Check `marker` within `deployment.yml`

```
cat ~/bb-app-source/manifests/deployment.yml | grep -i "image:"
```{{exec}}


<br>

#### Add, Commit, Push the changes to `bb-source-app` repo
> When prompted for `password` use the `GitHub PAT - Personal Access Token` used in earlier steps.

```
cd ~/bb-app-source
git config --global user.email "fluxcd@killercoda.com"
git config --global user.name "FluxCD-Killercoda"
git pull
git add .
git commit -m 'updated image'
git push
```{{exec}}

<br>

###### ****If you face any issue or have a new suggestion, please raise it here: [issues tracker](https://github.com/sidd-harth/fluxcd-tracker/issues)*