> Please wait for 60 seconds, we are setting up few things

#### Access the Application
Block Buster App - `version 7.9.0` `should be` accessible with below link:

# [Play Block Buster App - 7.9.0]({{TRAFFIC_HOST1_30009}})


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

<br>

#### Access the Application
Block Buster App - `version 7.9.0` `should not` be accessible,

# [Play Block Buster App - 7.9.0]({{TRAFFIC_HOST1_30009}})

> You should see an error in the application UI, as it cannot connect with `MYSQL` Database