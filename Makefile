.PHONY: all build publish

IMAGE=xorkevin/alpine-utils
VERSION=3
TAG=$(IMAGE):$(VERSION)
LATEST=$(IMAGE):latest

all: build

build:
	docker build -t $(LATEST) -t $(TAG) .

publish:
	docker push $(TAG)
	docker push $(LATEST)
