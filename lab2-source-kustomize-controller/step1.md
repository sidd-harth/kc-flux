### Check Flux CLI Version
Flux CLI is already installed for you, check it's version to confirm

```
flux -v
```{{exec}}

### Install/Setup Flux Server
You can set up Flux to manage itself from a Git repository and install it on a Kubernetes cluster using the `flux bootstrap` command.

Copy the below command, replace the value field and run it,

```
export GH_USERNAME=<<<<REPLACE-WITH-YOUR-GITHUB-USERNAME>>>
```{{copy}}

```
flux bootstrap github \
  --owner=$GH_USERNAME \
  --repository=block-buster \
  --path=flux-clusters/dev-cluster \
  --personal=true \
  --private=false
```{{exec}}

### GitHub Personal Access Token - PAT
- It will prompt for a `GitHub Personal Access Token - PAT`
- Copy-Paste the token, which was generated earlier.
- Wait for the command to complete the `bootstraping` process.
- Check the logs to understand what is happening.

Wait till you see this log message `✔ all components are healthy` and then click on `NEXT`.