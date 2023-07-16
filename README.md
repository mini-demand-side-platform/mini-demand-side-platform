# mini-demand-side-platform

## Usages

## requirments
docker-compose 
minikube

## Setup

#### 1. Active databases
```bash
git clone git@github.com:mini-demand-side-platform/databases.git
cd databases 
make run-all-with-example-data
```
#### 2. 

```


minikube addons enable ingress
minikube addons enable metallb
```
#### 2. Start minikuce
```
minikube start --cpus 4 --network mini-demand-side-platform --memory 4096
```

#### Optional port forwarding
start minikube tunnel
```
minikube tunnel
```

```
minikube kubectl -- expose deployment feature-store --type=LoadBalancer --port=8000
```

