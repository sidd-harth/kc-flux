#### Apply Monitoring Configurations
- `Flux2` official Repo provides `OOTB` monitoring configurations 
    1. `Flux Targets` can be added to `Prometheus` using `PodMonitoring`
    2. `Flux Dashboards` should be added to `Grafana` for `visulization`
- In the next steps, we will apply these configs.

<br>

#### Clone Flux2 Repo
- Run and observe the output of below commands

```
git clone https://github.com/fluxcd/flux2

tree flux2/manifests/monitoring/monitoring-config
```{{exec}}

<br>

#### Applying Configs
Run and observe the output of below commands

```
cd flux2/manifests/monitoring

kubectl kustomize monitoring-config/ > ~/pod-monitor-and-grafana-dashboard.yml

kubectl apply -f ~/pod-monitor-and-grafana-dashboard.yml
```{{exec}}

<br>

#### Access Dashboards
- Refresh both `Prometheus` and `Grafana` UI 
    - Within [Prometheus]({{TRAFFIC_HOST1_30202}}) we should see `Flux Targets`
    - Within [Grafana]({{TRAFFIC_HOST1_30101}}) we should see `Flux Dashboards`

<br>

###### ****If you face any issue or have a new suggestion, please raise it here: [issues tracker](https://github.com/sidd-harth/fluxcd-tracker/issues)*
