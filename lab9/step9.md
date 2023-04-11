#### Check Flux Update Status
- Run a `flux` cmd to `get` the `image` status using below spec:
    - Type: `update`
    - Name: `8-demo-image-update-bb-app`

<details><summary>Check Solution</summary>

```
flux get images update 8-demo-image-update-bb-app
```{{exec}}

</details>

> Check the Message of Previous command, it should mention, `committed and pushed ....`

#### Check Deployment using new `7.8.1 image tag`
```
flux reconcile source git 8-demo-source-git-bb-app
```{{exec}}

```
k -n 8-demo get deployment -o wide | grep -i "7.8.1"
```{{exec}}

#### Access the application on its NodePort
Now `access/play` Block Buster App - `version 7.8.1` using the below link:

# [Play Block Buster App - 7.8.1]({{TRAFFIC_HOST1_30008}})

> Check the updated `color` and new `version - 7.8.1`

<br>

###### ****If you face any issue or have a new suggestion, please raise it here: [issues tracker](https://github.com/sidd-harth/fluxcd-tracker/issues)*