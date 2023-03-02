`Weaveworks` offers a free and `open source GUI` for Flux under the `weave-gitops` project.

<br>

#### Install `weave-gitops` CLI
```
curl --location "https://github.com/weaveworks/weave-gitops/releases/download/v0.17.0/gitops-linux-x86_64.tar.gz" | tar xz -C /tmp

sudo mv /tmp/gitops /usr/local/bin

gitops version
```{{exec}}

<br>

#### Create Dashboard
```
gitops create dashboard fluxcd-dashboard \
--password 12345
```{{exec}}

<br>

#### Port Forwarding
```
kubectl -n flux-system port-forward --address 0.0.0.0 service/fluxcd-dashboard-weave-gitops 9001:9001
```{{exec}}

Now access it via

[ACCESS Flux User Interface]({{TRAFFIC_HOST1_9001}})
- Username: `admin`
- Password: `12345`