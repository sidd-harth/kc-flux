#### Update the `BACKGROUND COLOR`
- Update following below spec:
    - File: `~/bb-app-source/src/index.php`
    - Color: `#A01B40` on line 11
    - Version: `7.8.1 (minor color changes)` on line 36

<br>

```
sed -i "s/80F1BE/A01B40/g" ~/bb-app-source/src/index.php
```{{exec}}

```
sed -i "s/7.8.0/7.8.1 (minor color changes)/g" ~/bb-app-source/src/index.php
```{{exec}}

<br>

#### Docker Build & Push New Changes with VERSION `7.8.1`

```
cd ~/bb-app-source/src

docker build -t $DOCKER_USERNAME/bb-app-flux-demo-killercoda:7.8.1 .

docker push $DOCKER_USERNAME/bb-app-flux-demo-killercoda:7.8.1
```{{exec}}

<br>

#### Reconcile Flux Image Repo
- Run a `flux` cmd to `reconcile` the `image` status using below spec:
    - Type: `repo`
    - Name: `8-demo-image-repo-bb-app`

<details><summary>Check Solution</summary>

```
flux reconcile image repository 8-demo-image-repo-bb-app
```{{exec}}

```
flux get images repository 8-demo-image-repo-bb-app
```{{exec}}

</details>

<br>

### Check the Message of Previous command, it should mention: `successful scan: found 2 tag`

> In next lab we will create an `Flux Image Policy` to get the `latest` image tag