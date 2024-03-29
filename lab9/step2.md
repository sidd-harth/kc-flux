#### Explore `flux-system` Namespace
- Checkout
    - Two new `deployments` should be `RUNNING`
        - `image-reflector-controller`
        - `image-automation-controller`
    - Three new `crds`
        1. `imagepolicies`
        2. `imagerepositories`
        3. `imageupdateautomations`

```
kubectl -n flux-system get po,deploy

kubectl get crds | grep -i image
```{{exec}}

<br>

#### Check Flux Repository and Policy Status
In the previous labs we have created a `Flux Repository` and `Flux Policy` objects, lets check their Status.
- Run a `flux` cmd to `get` the `image` status using below spec:
    - Type: `all`

<details><summary>Check Solution</summary>

```
flux get images all
```{{exec}}

</details>

> Check the Message of Previous command, it should mention, 

> Repository - `successful scan: found 2 tag`

> Policy - Latest image tag for `docker.io/<<YOUR-DOCKER-USERNAME>>/bb-app-flux-demo-killercoda` resolved to: `7.8.1`

<br>

###### ****If you face any issue or have a new suggestion, please raise it here: [issues tracker](https://github.com/sidd-harth/fluxcd-tracker/issues)*