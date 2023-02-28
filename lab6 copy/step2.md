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

