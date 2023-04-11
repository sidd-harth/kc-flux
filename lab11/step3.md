> Database namespace and resource were created behind the scenes in one of our earlier labs

#### Check `database` namespace
```
kubectl -n database get po,deploy,svc,secret,cm
```{{exec}}

#### Delete the secret (if it is still displayed)
```
kubectl -n database delete secret secret-mysql
```{{exec}}

```
kubectl -n database rollout restart deployment mysql
```{{exec}}

```
kubectl -n database get po
```{{exec}}

> Check that the po get restarted with `CreateContainerConfigError` or `Terminating` becuase it does not fint the `secret`

<br>

###### ****If you face any issue or have a new suggestion, please raise it here: [issues tracker](https://github.com/sidd-harth/fluxcd-tracker/issues)*