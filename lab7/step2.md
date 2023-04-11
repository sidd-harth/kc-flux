#### Explore `flux-system` Namespace
- Checkout
    - Two new `deployments` should be `RUNNING`
        1. `image-reflector-controller`
        2. `image-automation-controller`
    - Three new `crds`
        1. `imagepolicies`
        2. `imagerepositories`
        3. `imageupdateautomations`

```
kubectl -n flux-system get po,deploy

kubectl get crds | grep -i image
```{{exec}}

<br>

###### ****If you face any issue or have a new suggestion, please raise it here: [issues tracker](https://github.com/sidd-harth/fluxcd-tracker/issues)*

