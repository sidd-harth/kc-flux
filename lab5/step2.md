#### Explore HELM Repo
- A repo named `block-buster-helm-app` is available in `ArtifactHub`
    - URL: [block-buster-helm-app](https://artifacthub.io/packages/helm/block-buster-app/block-buster-helm-app)
    - Check:
        - `Install` instructions
        - `Templates`
        - `Default Values`
        
<br>

#### Explore `values.yml` branch 
`Vaules YAML spec` needed for `HELM Release` is readily available at the below path,

```
cat ~/flux-training/helm/values.yml
```{{exec}}

<br>

Check `app version - 7.6.0` within `values.yml`

```
cat ~/flux-training/helm/values.yml | grep -i 7.6.0
```{{exec}}

<br>

###### ****If you face any issue or have a new suggestion, please raise it here: [issues tracker](https://github.com/sidd-harth/fluxcd-tracker/issues)*
