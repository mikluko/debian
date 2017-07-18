.PHONY: all
all: build push

.PHONY: build
build:
	docker build --squash --tag akabos/debian-shell .

.PHONY: push
push:
	docker push akabos/debian-shell
