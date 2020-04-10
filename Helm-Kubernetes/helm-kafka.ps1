helm repo add bitnami https://charts.bitnami.com/bitnami

helm list

kubectl create namespace anpkafka

helm install anp-broker-kafka --set externalAccess.enabled=true,externalAccess.service.type=LoadBalancer,externalAccess.service.port=19092,externalAccess.autoDiscovery.enabled=true,serviceAccount.create=true,rbac.create=true bitnami/kafka -n anpkafka

kubectl get pods -n anpkafka

kubectl get services -n anpkafka