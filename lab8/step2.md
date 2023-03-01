#### Explore `flux-system` Namespace
- Checkout
    - Two new `deployments` should be `RUNNING`
        - `image-reflector-controller`
        - `image-automation-controller`
    - Two new `crds`

```
kubectl -n flux-system get po,deploy

kubectl get crds | grep -i image
```{{exec}}

#### Check Flux Repository Status
In the previous lab we have created a `Flux Repository` Object, lets check it's Status.
- Run a `flux` cmd to `get` the `image` status using below spec:
    - Type: `repository`
    - Name: `8-demo-image-repo-bb-app`

<details><summary>Check Solution</summary>

```
flux get images repository 8-demo-image-repo-bb-app
```{{exec}}

</details>

> Check the Message of Previous command, it should mention, `successful scan: found 2 tag`

<br>

In next step we will create a `policy` to get the `latest` tag.