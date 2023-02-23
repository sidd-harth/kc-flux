### Explore GitHub Repo
- Open a new browser tab, login to your GitHub Account
    - Notice a new repo named `block-buster` is created
    - Explore this repo and check that the `bootstrap` command has committed all `Flux` related artefacts.

### Explore `flux-system` namespace
The `bootstrap` command creates a new namespace named `flux-system`. Check it out,
`k -n flux-system get all`{{exec}}

### Explore the `crds`
`k get crds | grep -i flux`{{exec}}