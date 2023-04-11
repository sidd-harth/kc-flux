#### Check Flux Status
As soon as the manifests are pushed to the repository, Flux will pull manifests and reconcile the cluster to deploy all the manifests.

<br>

#### Check Flux Source Status
- Run a `flux` cmd to `get` the `image` status using below spec:
    - Type: `repository`
    - Name: `8-demo-image-repo-bb-app`

<details><summary>Check Solution</summary>

```
flux reconcile source git flux-system

flux get images repository 8-demo-image-repo-bb-app
```{{exec}}

</details>

> Check the Message of Previous command, it should mention, `successful scan: found 1 tag`

<br>

#### Chekout the `Tag` found by `Flux ImageRepository`
- Run below command and check the response.
- It should display tag - `7.8.0`

```
kubectl -n flux-system get imagerepositories.image.toolkit.fluxcd.io 8-demo-image-repo-bb-app -o yaml | grep -i scanresult -A5
```

<br>

###### ****If you face any issue or have a new suggestion, please raise it here: [issues tracker](https://github.com/sidd-harth/fluxcd-tracker/issues)*