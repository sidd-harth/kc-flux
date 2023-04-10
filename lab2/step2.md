#### Explore & Import GitHub Repo
- A repo named `bb-app-source` is cloned and available on this machine
- Explore it `cd bb-app-source`
- Import this [repository](https://github.com/sid-demo/bb-app-source) to your GitHub Account
  - Follow steps as per this [document](https://docs.github.com/en/get-started/importing-your-projects-to-github/importing-source-code-to-github/importing-a-repository-with-github-importer)
    - Your old repository's clone URL: `https://github.com/sid-demo/bb-app-source`
    - Repository name: `bb-app-source`
    - Visibility: `Public`

#### Explore `1-demo` branch 
Change to `bb-app-source` repo directory and Checkout `1-demo` branch

```
cd bb-app-source

git checkout 1-demo

ls -ltr manifests
```{{exec}}

Check all 3 `K8S` manifests

```
cat manifests/deployment.yml

cat manifests/namespace.yml

cat manifests/service.yml
```{{exec}}

#### Check `image` name and `tag` in deployment specification
```yaml{6,23,25,26,27}
apiVersion: apps/v1
kind: Deployment
metadata:
  labels:
    app: block-buster
    version: 7.1.0
    env: dev
  name: block-buster-deployment
  namespace: 1-demo
spec:
  replicas: 1
  selector:
    matchLabels:
      app: block-buster
  strategy: {}
  template:
    metadata:
      labels:
        app: block-buster
        api: downward
        usage: global
        env: dev
        version: 7.1.0
    spec:
      containers:
        - name: app
          image:  siddharth67/block-buster-dev:7.1.0
          imagePullPolicy: Always
          resources:
            requests:
              memory: "32Mi"
              cpu: "125m"
            limits:
              memory: "64Mi"
              cpu: "250m"
          env:
            - name: MY_POD_NAME
              valueFrom:
                fieldRef:
                  fieldPath: metadata.name
            - name: MY_POD_NAMESPACE
              valueFrom:
                fieldRef:
                  fieldPath: metadata.namespace
            - name: MY_POD_IP
              valueFrom:
                fieldRef:
                  fieldPath: status.podIP
            - name: MY_NODE_NAME
              valueFrom:
                fieldRef:
                  fieldPath: spec.nodeName
```

<br>

###### ****If you face any issue or have a new suggestion, please raise it here: [issues tracker](https://github.com/sidd-harth/fluxcd-tracker/issues)*
