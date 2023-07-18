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
	minikube kubectl -- apply -f hpas
	minikube kubectl -- apply -f services

kill-all:
	minikube kubectl -- delete deployments
	minikube kubectl -- delete hpas
	minikube kubectl -- delete services
	