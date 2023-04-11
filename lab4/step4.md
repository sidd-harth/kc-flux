#### Clone `block-butser` repo
Copy the below command, replace the value field and run it,

```
export GH_USERNAME=REPLACE-WITH-YOUR-GITHUB-USERNAME
```{{copy}}

```
cd ~
git clone https://github.com/$GH_USERNAME/block-buster
```{{exec}}

<br>

#### Flux Connecting to Minio
We will use `flux` to connect to `Minio` and fetch the manifests.

`flux` needs to authenticate aganist `Minio` and hence we will create a `K8S Secret` and use it as an refernece within `flux`.

<br>

#### K8S Secret
- Create a K8S Secret with the following spec:
    - Secret Name: `minio-crds`
    - Secret Type: `generic`
    - Namespace: `flux-system`
    - Secret Literals:
        - `accesskey`: `minioadmin`
        - `secretkey`: `minioadmin`

<details><summary>Check Solution</summary>

```
kubectl -n flux-system create secret generic minio-crds \
--from-literal=accesskey=minioadmin \
--from-literal=secretkey=minioadmin 
```{{exec}}

</details>

<br>

###### ****If you face any issue or have a new suggestion, please raise it here: [issues tracker](https://github.com/sidd-harth/fluxcd-tracker/issues)*