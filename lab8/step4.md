#### Check Flux Status
As soon as the manifests are pushed to the repository, Flux will pull manifests and reconcile the cluster to deploy all the manifests.

<br>

#### Check Flux Status
- Run a `flux` cmd to `get` the `image` status using below spec:
    - Type: `policy`
    - Name: `8-demo-image-policy-bb-app`

<details><summary>Check Solution</summary>

```
flux reconcile source git flux-system

flux get images policy 8-demo-image-policy-bb-app
```{{exec}}

</details>

> Check the Message of Previous command, it should mention,

> Latest image tag for `docker.io/<<YOUR-DOCKER-USERNAME>>/bb-app-flux-demo-killercoda` resolved to: `7.8.1`

<br>

#### Check Image Tag within `Deployment`
- The `ImagePolicy` job is to find out the latest image tag.
- It will neither update the deployment nor the git reposiotry.
- Run the below command and check that the image tag is still `7.8.0`

```
kubectl -n 8-demo get deployment -o wide | grep -i killercoda
```{{exec}}

> In next lab we will use Automation controller to `automatically` update the `deployment.yaml` with new image tag.

<br>

###### ****If you face any issue or have a new suggestion, please raise it here: [issues tracker](https://github.com/sidd-harth/fluxcd-tracker/issues)*