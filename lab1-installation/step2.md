### Install Flux CLI
- You can follow the official [Flux CD documentation](https://fluxcd.io/flux/installation/#install-the-flux-cli)
- Version - `0.40.0`

<details>
  <summary>Solution</summary>
 
    ```
    export FLUX_VERSION=0.40.0
    curl -s https://fluxcd.io/install.sh | sudo bash
    ```{{exec}}
</details>


  
### Check the **version** of Flux CLI

```
flux -v
```{{exec}}

  

### Check **Flux CLI commands list** using the `-h` help tag

```
flux -h
```{{exec}}