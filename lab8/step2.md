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

<br>

#### Chekout the `Tags` found by `Flux ImageRepository`
- Check the Message of Previous command, it should mention: `successful scan: found 2 tag`
    - Run below command and check the response.
    - It should display tag - `7.8.0` & `7.8.1`

```
kubectl -n flux-system get imagerepositories.image.toolkit.fluxcd.io 8-demo-image-repo-bb-app -o yaml | grep -i scanresult -A5
```{{exec}}

<br>

In next step we will create a `policy` to get the `latest` tag.

<br>

###### ****If you face any issue or have a new suggestion, please raise it here: [issues tracker](https://github.com/sidd-harth/fluxcd-tracker/issues)*