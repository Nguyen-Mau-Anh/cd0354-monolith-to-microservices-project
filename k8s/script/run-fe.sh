kubectl apply -f ../udagram-frontend-deployment.yaml
kubectl apply -f ../udagram-frontend-service.yaml

kubectl expose deployment frontend --type=LoadBalancer --name=frontend-pl

kubectl get deployments
kubectl get services
kubectl get pods