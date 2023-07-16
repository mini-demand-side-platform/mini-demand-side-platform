package_name = mini-demand-side-platform
tag = 0.1.0

help:  
	@sed -ne '/@sed/!s/## //p' $(MAKEFILE_LIST)

check-pods:
	minikube kubectl -- get po -A

check-services:
	minikube kubectl -- get svc

deploy-all:
	minikube kubectl -- apply -f deployments
	minikube kubectl -- apply -f ingresses
	minikube kubectl -- apply -f services

kill-all:
	minikube kubectl -- delete deployments
	minikube kubectl -- delete ingresses
	minikube kubectl -- delete services
	
port-forwarding-all:
	minikube kubectl -- apply -f services