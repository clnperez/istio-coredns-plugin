vendor:
	dep ensure -vendor-only
build: 
	GOOS=linux go build plugin.go
clean:
	rm plugin
docker-build: build
	docker build -t rshriram/istio-coredns-plugin:istio-1.1 .
docker-push:
	docker push rshriram/istio-coredns-plugin:istio-1.1
