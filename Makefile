
VERSION=shigmas/futomen-web

build:
ifndef VERSION_NUM
	@printf 'Need VERSION_NUM\n'
	exit 1
endif
	docker build -f Dockerfile.nginx -t $(VERSION):$(VERSION_NUM) --build-arg CRT_FILE=futomen_net.crt --build-arg KEY_FILE=futomen_net.key .

push: build
	docker push shigmas/futomen-web:$(VERSION_NUM)
