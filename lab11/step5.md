#### Install SOPS CLI
```
wget https://github.com/mozilla/sops/releases/download/v3.7.3/sops-v3.7.3.linux.amd64

chmod +x sops-v3.7.3.linux.amd64

mv sops-v3.7.3.linux.amd64 /usr/bin/sops

sops -v
```{{exec}}

<br>

#### Encrypt Plain Text Secret
- A `Plain Text Secret` is provided in the `root` directory

```
cat ~/secret-mysql.yml
```{{exec}}

- Encrypt secret with `SOPS CLI` using below spec:
    - Operation: `encrypt`
    - PGP: `fingerprint-from-previous-step`
    - Plain Secret Path: `~/secret-mysql.yml`
    - Encrypted Regex: `"^(data|stringData)$"`

<details><summary>Check Solution</summary>

```
sops --encrypt \
--encrypted-regex="^(data|stringData)$" \
--pgp $FINGERPRINT \
--in-place ~/secret-mysql.yml
```{{exec}}

</details>

<br>

Check encrypted secret
```
cat ~/secret-mysql.yml
```{{exec}}

> Move encrypted secret to `bb-app-source` repo and commit

```
cp ~/secret-mysql.yml ~/bb-app-source/database/sops-secret-mysql.yaml
```{{exec}}


#### Add, Commit, Push the changes to `bb-source-app` repo
> When prompted for `password` use the `GitHub PAT - Personal Access Token` used in earlier steps.

```
cd ~/bb-app-source
git config --global user.email "fluxcd@killercoda.com"
git config --global user.name "FluxCD-Killercoda"
git pull
git add .
git commit -m 'add sops database secret'
git push
```{{exec}}


<br>

###### ****If you face any issue or have a new suggestion, please raise it here: [issues tracker](https://github.com/sidd-harth/fluxcd-tracker/issues)*