#### Access the Application
Block Buster App - `version 7.x.0` `should be` accessible with below link:

# [Play Block Buster App - 7.8.0]({{TRAFFIC_HOST1_30008}})


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

kubectl -n database get po
```

> Check that the po get restarted with `Error Status`

<br>

#### Access the Application
Block Buster App - `version 7.x.0` `should not` be accessible,

# [Play Block Buster App - 7.8.0]({{TRAFFIC_HOST1_30008}})

> You should see an error in the application UI, as it cannot connect with `MYSQL` Database