#### Generate Key-Pair
- Execute below commnad, check:
    - Key-Length
    - Name-Comment
    - Name-Real
    - Name-Email

```
gpg --batch --full-generate-key <<EOF
%no-protection
Key-Type: 1
Key-Length: 3072
Subkey-Type: 1
Subkey-Length: 3072
Expire-Date: 0
Name-Comment: k8s
Name-Real: dev.us-e1.k8s
Name-Email: admin@bb.com
EOF
```{{exec}}

> Make a note of the `FingerPrint` displayed, `gpg: key xxxxxxxxxxxxxxxx marked as ultimately trusted`

```
export FINGERPRINT=<<replace-finger-print>>
```{{exec interrupt}}

<br>

#### List Keys
- List Public Key
```
gpg --list-public-keys $FINGERPRINT
```{{exec}}

<br>

- List Private Key
```
gpg --list-secret-keys $FINGERPRINT
```{{exec}}

<br>

#### Export Keys
- Export Public Key
```
gpg --export --armor $FINGERPRINT > ~/sops-gpg.pub

cat ~/sops-gpg.pub
```{{exec}}

<br>

- Export Private Key
```
gpg --export-secret-key --armor $FINGERPRINT > ~/sops-gpg.key

cat ~/sops-gpg.key
```{{exec}}

<br>

#### Create K8S Secret
- Generate a `Secret` with following spec:
    - Name: `sops-gpg`
    - Type: `generic`
    - Key: `sops.asc`
    - From File Value: `~/sops-gpg.key`
    - Namespace: `flux-system`

<details><summary>Check Solution</summary>

```
cd ~
kubectl create secret generic sops-gpg --from-file=sops.asc=sops-gpg.key -n flux-system 
```{{exec}}

</details>

<br>

###### ****If you face any issue or have a new suggestion, please raise it here: [issues tracker](https://github.com/sidd-harth/fluxcd-tracker/issues)*