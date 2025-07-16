# Ray Cluster App Helm Chart
it's a helm chart to install a raycluster app

## Instructions to install Kuberay cluster using operator
```bash
helm repo add kuberay https://ray-project.github.io/kuberay-helm/
helm repo update
helm install kuberay-operator kuberay/kuberay-operator --namespace kuberay --create-namespace
```

## Build a Docker Image for the Head, Worker and Job driver pods
```bash
docker build -t rezabah/rayclusterapp:0.1.0 .
docker push rezabah/rayclusterapp:0.1.0
```

## Example of Installing a Ray Cluster App
```bash
helm install rayapp1 . -f values.yaml --namespace rayapp1 --create-namespace
helm uninstall rayapp1 -n rayapp1
```

