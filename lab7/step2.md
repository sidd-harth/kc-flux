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

<br>

###### ****If you face any issue or have a new suggestion, please raise it here: [issues tracker](https://github.com/sidd-harth/fluxcd-tracker/issues)*

