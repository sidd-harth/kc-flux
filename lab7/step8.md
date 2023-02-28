#### Create Flux Image Repository
- Generate a `flux image repository` with the following spec:
    - Name: `8-demo-image-repo-bb-app`
    - Image: `docker.io/<<your-dockerhub-username>>/bb-app-flux-demo-killercoda`
    - Interval: `10s`
    - Export Path: `~/block-buster/flux-clusters/dev-cluster/8-demo-image-repo-bb-app.yml`

<details><summary>Check Solution</summary>

```
flux create image repository 8-demo-image-repo-bb-app \
--image docker.io/$DOCKER_USERNAME/bb-app-flux-demo-killercoda \
--interval 10s \
--export > ~/block-buster/flux-clusters/dev-cluster/8-demo-image-repo-bb-app.yml
```{{exec}}

</details>

<br>

#### Check the Generated YAML
```
cat ~/block-buster/flux-clusters/dev-cluster/8-demo-image-repo-bb-app.yml
```{{exec}}

<br>

#### Add, Commit, Push the changes
> When prompted for `password` use the `GitHub PAT - Personal Access Token` used in earlier steps.

```
cd ~/block-buster
git config --global user.email "fluxcd@killercoda.com"
git config --global user.name "FluxCD-Killercoda"
git pull
git add .
git commit -m 8-demo
git push
```{{exec}}

> Note the `commit id` displayed after the `git push` operation.