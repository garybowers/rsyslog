.PHONY: deploy build tag push

build:
	docker build . -t ${IMG_NAME}:${TAG}

tag:
	docker tag ${IMG_NAME}:${TAG} ${REPO}/${IMG_NAME}:${TAG}

push:
	docker push ${REPO}/${IMG_NAME}:${TAG}

deploy:
	kubectl apply -f deploy/k8.yaml
