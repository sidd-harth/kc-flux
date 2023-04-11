#### Update the Image 
Check existing `image name` within `deployment.yml`

```
cat ~/bb-app-source/manifests/deployment.yml | grep -i "7.8.0"
```{{exec}}

<br>

In this step we will `update` the image withn  `bb-app-source` repo `manifests/deployment.yml` using `sed`

```
sed -i "s#siddharth67/block-buster-dev:7.8.0#${DOCKER_USERNAME}/bb-app-flux-demo-killercoda:7.8.0#g" ~/bb-app-source/manifests/deployment.yml
```{{exec}}



Check Updated `image name` within `deployment.yml`

```
cat ~/bb-app-source/manifests/deployment.yml | grep -i "7.8.0"
```{{exec}}


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