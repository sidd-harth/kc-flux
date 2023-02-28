#### Update the Image 
In this step we will `update` the image withn  `bb-app-source` repo `manifests/deployment.yml` using `sed`

```
sed -i "s#siddharth67/block-buster-dev:7.8.0#${DOCKER_USERNAME}/bb-app-flux-demo-killercoda:7.8.0#g" ~/bb-app-source/manifests/deployment.yml
```

<br>

Check Updated `image` within `deployment.yml`

```
cat ~/bb-app-source/manifests/deployment.yml | grep -i "7.8.0"
```{{exec}}