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

#### Encrypt the Secret using `kubeseal`
- Follow the below spec to encrypt the secret manifest:
    - Command: `kubeseal` (already installed)
    - Scope: `cluster-wide`
    - Output: `yaml`
    - Public Cert Path: `~/sealed-secret.pub`
    - Plain Secret Path: `~/secret-mysql.yaml`
    - Encrypted Secret Path: `~/block-buster/flux-clusters/dev-cluster/sealed-secret-mysql.yaml`

<details><summary>Check Solution</summary>

```
kubeseal -o yaml --scope cluster-wide --cert ~/sealed-secret.pub < ~/secret-mysql.yaml > ~/block-buster/flux-clusters/dev-cluster/sealed-secret-mysql.yaml
```{{exec}}

</details>

<br>

#### Check the Generated Encrypted Secret
```
cat ~/block-buster/flux-clusters/dev-cluster/sealed-secret-mysql.yaml
```{{exec}}

<br>

#### Add, Commit, Push the changes to `bb-source-app` repo
> When prompted for `password` use the `GitHub PAT - Personal Access Token` used in earlier steps.

```
cd ~/bb-app-source
git config --global user.email "fluxcd@killercoda.com"
git config --global user.name "FluxCD-Killercoda"
git pull
git add .
git commit -m 'delete database secret'
git push
```{{exec}}

> Note the `commit id` displayed after the `git push` operation.