#### Update the `BACKGROUND COLOR`
- Update following below spec:
    - File 1: `~/bb-app-source/src/index.php`
    - File 2: `~/bb-app-source/src/level2.php`
    - Color: `#A01B40` on line 11 (both files)
    - Version: `7.8.1 (minor color changes)` on line 36 (both files)

```
sed -i "s/80F1BE/A01B40/g" ~/bb-app-source/src/index.php
sed -i "s/80F1BE/A01B40/g" ~/bb-app-source/src/level2.php
```{{exec}}

```
sed -i "s/7.8.0/7.8.1 (minor color changes)/g" ~/bb-app-source/src/index.php
sed -i "s/7.8.0/7.8.1 (minor color changes)/g" ~/bb-app-source/src/level2.php
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

#### Chekout the `Tags` found by `Flux ImageRepository`
- Check the Message of Previous command, it should mention: `successful scan: found 2 tag`
    - Run below command and check the response.
    - It should display tag - `7.8.0` & `7.8.1`

```
kubectl -n flux-system get imagerepositories.image.toolkit.fluxcd.io 8-demo-image-repo-bb-app -o yaml | grep -i scanresult -A5
```{{exec}}

<br>

> In next lab we will create an `Flux Image Policy` to get the `latest` image tag

<br>

###### ****If you face any issue or have a new suggestion, please raise it here: [issues tracker](https://github.com/sidd-harth/fluxcd-tracker/issues)*