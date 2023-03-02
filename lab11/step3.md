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

> Check that the po get restarted with `CreateContainerConfigError` becuase it does not fint the `secret`