> Please wait for 60 seconds as we setup `Prometheus & Grafana`

After 60 seconds, wait till all `PODS` are in `Running State` within `monitoring` namespace.

```
kubectl -n monitoring  get all
```{{exec}}

> If `Grafana` & `Prometheus` service type is not `NodePort`. Execute below patch commands.

```
kubectl -n monitoring patch svc my-kube-prometheus-stack-grafana -p '{"spec": {"ports": [{"port": 80,"targetPort": 3000,"name": "http-web","protocol":"TCP","nodePort":30101}],"type": "NodePort"}}'

kubectl -n monitoring patch svc my-kube-prometheus-stack-prometheus -p '{"spec": {"ports": [{"port": 9090,"targetPort": 9090,"name": "http-web","protocol":"TCP","nodePort":30202}],"type": "NodePort"}}'
```{{exec}}

<br>

#### Prometheus
[Access Prometheus User Interface]({{TRAFFIC_HOST1_30202}})

- Within `Prometheus UI` check the `Targets`
    - Click on Status
        - Click on Target

> Notice that we `**do not**` have any `Targets` for `Flux`


<br>

#### Grafana
[Access Grafana User Interface]({{TRAFFIC_HOST1_30101}})
- Login to `Grafana UI` check the `Dashboard`
    - Username: `admin`
    - Password: `prom-admin`
    - Browser Dashboards

> Notice that we `**do not**` have any `Dashboards` for `Flux`

<br>

###### ****If you face any issue or have a new suggestion, please raise it here: [issues tracker](https://github.com/sidd-harth/fluxcd-tracker/issues)*

