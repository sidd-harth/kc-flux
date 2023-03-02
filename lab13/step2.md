> Please wait for 60 seconds as we setup `Prometheus & Grafana`

After 60 seconds, wait till all `PODS` are in `Running State` within `monitoring` namespace.

```
kubectl -n monitoring  get all
```{{exec}}

<br>

#### Access Prometheus User Interface
- Within `Prometheus UI` check the `Targets`
    - Click on Status
        - Click on Target

> Notice that we `**do not**` have any `Targets` for `Flux`

## [Prometheus UI]({{TRAFFIC_HOST1_30202}})

<br>

#### Access Grafana User Interface
- Login to `Grafana UI` check the `Dashboard`
    - Username: `admin`
    - Password: `prom-admin`
    - Browser Dashboards

> Notice that we `**do not**` have any `Dashboards` for `Flux`

## [Grafana UI]({{TRAFFIC_HOST1_30101}})