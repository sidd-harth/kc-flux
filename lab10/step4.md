> Please wait for 60 seconds, we are installing `Bitnami Sealed Secret Controller`

`Bitnami Sealed Secret Controller` is installed in `kube-system` namespace.
```
kubectl -n kube-system get po | grep -i "sealed-secrets-controller"
```{{exec}}


<br>

#### Fetch the Public Cert of Sealed Secret Controller
- Follow below spec:
    - Command: `kubeseal` (already installed)
    - Controller Name: `sealed-secrets-controller`
    - Controller Namespace: `kube-system`
    - Export Path: : `~/sealed-secret.pub`

<details><summary>Check Solution</summary>

```
kubeseal \
--fetch-cert \
--controller-name sealed-secrets-controller \
--controller-namespace kube-system > ~/sealed-secret.pub
```{{exec}}

</details>

<br>

#### Check Exported Public Cert
```
cat  ~/sealed-secret.pub
```{{exec}}

<br>

###### ****If you face any issue or have a new suggestion, please raise it here: [issues tracker](https://github.com/sidd-harth/fluxcd-tracker/issues)*
