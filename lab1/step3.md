#### Check Kubernetes Version
Before we install Flux, Make sure your Kubernetes cluster is running a version greater than or equal to 1.20.6.

```
flux check --pre
```{{exec}}

#### Install/Setup Flux Server
You can set up Flux to manage itself from a Git repository and install it on a Kubernetes cluster using the `flux bootstrap` command.

  - Run a bootstrap command with below specification:
    - Owner: `your-github-user-name`
    - Repository: `block-buster` 
    - Path: `flux-clusters/dev-cluster`
    - Personal: `true`
    - Private: `false`

GitHub Personal Access Token - PAT
  - `Bootstrap` will prompt for a `GitHub Personal Access Token - PAT`
  - Copy-Paste the token, which was generated/saved in earlier step.
  - Wait for the command to complete the `bootstraping` process.
  - Check the logs to understand what is happening.

<details><summary>Check Solution</summary>

Copy the below command, replace the value field and run it,

```
export GH_USERNAME=REPLACE-WITH-YOUR-GITHUB-USERNAME
```{{exec interrupt}}
----
```
flux bootstrap github \
  --owner=$GH_USERNAME \
  --repository=block-buster \
  --path=flux-clusters/dev-cluster \
  --personal=true \
  --private=false
```{{exec}}

</details>

<br>
Wait till you see this log message `✔ all components are healthy` and then click on `NEXT`.

<br>
###### ****If you face any issue or have a new suggestion, please raise it here: [issues tracker](https://github.com/sidd-harth/fluxcd-tracker/issues)*