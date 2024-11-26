kubectl apply -f ../aws-secret.yaml
kubectl apply -f ../env-secret.yaml
kubectl apply -f ../env-configmap.yaml
kubectl apply -f ../udagram-api-feed-deployment.yaml
kubectl apply -f ../udagram-api-feed-service.yaml
kubectl apply -f ../udagram-api-user-deployment.yaml
kubectl apply -f ../udagram-api-user-service.yaml
kubectl apply -f ../udagram-reverseproxy-deployment.yaml
kubectl apply -f ../udagram-reverseproxy-service.yaml

kubectl expose deployment reverseproxy --type=LoadBalancer --name=reverseproxy-pl --port=8080

kubectl get deployments
kubectl get services
kubectl get pods