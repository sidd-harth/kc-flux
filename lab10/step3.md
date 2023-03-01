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

#### Create Flux Image Policy
- Generate a `flux image policy` with the following spec:
    - Name: `8-demo-image-policy-bb-app`
    - Image Ref: `8-demo-image-repo-bb-app`
    - SemVer: `7.8.x`
    - Export Path: `~/block-buster/flux-clusters/dev-cluster/8-demo-image-policy-bb-app.yml`

<details><summary>Check Solution</summary>

```
flux create image policy 8-demo-image-policy-bb-app \
--image-ref=8-demo-image-repo-bb-app \
--select-semver 7.8.x \
--export > ~/block-buster/flux-clusters/dev-cluster/8-demo-image-policy-bb-app.yml
```{{exec}}

</details>

> A semver range that includes stable releases can be defined with `1.0.x` (patch versions only) or `>=1.0.0 <2.0.0` (minor and patch versions). If you want to include pre-release e.g. `1.0.0-rc.1`, you can define a range like: `^1.x-0 or >1.0.0-rc <2.0.0-rc`.

<br>

#### Check the Generated YAML
```
cat ~/block-buster/flux-clusters/dev-cluster/8-demo-image-policy-bb-app.yml
```{{exec}}

<br>

#### Add, Commit, Push the changes to `block-buster` repo
> When prompted for `password` use the `GitHub PAT - Personal Access Token` used in earlier steps.

```
cd ~/block-buster
git config --global user.email "fluxcd@killercoda.com"
git config --global user.name "FluxCD-Killercoda"
git pull
git add .
git commit -m 8-demo
git push
```{{exec}}

> Note the `commit id` displayed after the `git push` operation.