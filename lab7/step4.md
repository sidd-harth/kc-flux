> This step requires access to `DockerHub`

> Please use your `DockerHub credentials/account`

<br>

#### Docker Login
- Login to `Docker`
    - Username: `your-docker-hub-username`
    - Password: `your-docker-hub-password`

```
export DOCKER_USERNAME=your-docker-hub-username>
```{{exec}}

```
docker login --username $DOCKER_USERNAME
```{{exec}}

> It will prompt for `password`, enter your DockerHub Password

<br>

#### Docker Pull, Tag and Push
- For this demo, we will 
    - Pull Image Named: `siddharth67/block-buster-dev:7.8.0`
    - Re-Tag Pulled Image to: `your-docker-hub-username/bb-app-flux-demo-killercoda:7.8.0`
    - Push the Tagged Image: `your-docker-hub-username/bb-app-flux-demo-killercoda:7.8.0`

```
docker pull siddharth67/block-buster-dev:7.8.0

docker tag siddharth67/block-buster-dev:7.8.0  $DOCKER_USERNAME/bb-app-flux-demo-killercoda:7.8.0

docker push $DOCKER_USERNAME/bb-app-flux-demo-killercoda:7.8.0
```{{exec}}

> Note - If you are re-doing this lab, it is recommended to `delete` the `bb-app-flux-demo-killercoda` repository within your `Dockerhub` account

<br>

###### ****If you face any issue or have a new suggestion, please raise it here: [issues tracker](https://github.com/sidd-harth/fluxcd-tracker/issues)*
