### Explore GitHub Repo
- Open a new browser tab, login to your GitHub Account
    - Notice a new repo named `block-buster` is created
    - Explore this repo and check that the `bootstrap` command has committed all `Flux` related artefacts.

### Explore `flux-system` namespace
The `bootstrap` command creates a new namespace named `flux-system`.

```
k -n flux-system get all
```{{exec}}

### Check newly created `CRDS`

```
k get crds | grep -i flux
```{{exec}}

<br>
###### ****If you face any issue or have a new suggestion, please raise it here: [issues tracker](https://github.com/sidd-harth/fluxcd-tracker/issues)*