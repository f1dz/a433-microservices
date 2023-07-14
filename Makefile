deploy:
	kubectl apply -f namespace.yaml
	kubectl apply -f order-service.yaml
	kubectl apply -f shipping-service.yaml
	kubectl apply -f istio-gateway.yaml

.PHONY: deploy