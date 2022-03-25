
VERSION := latest
IMAGE_FROM := ubuntu:22.04

all: build start

build:
	@echo "+++ Building docker image +++"
	docker pull ${IMAGE_FROM}
	docker build --build-arg IMAGE_FROM=$(IMAGE_FROM) --build-arg VERSION=$(VERSION) -t kalemena/octave:$(VERSION) .

start:
	@echo "+++ Environment starting ... +++"
	/bin/bash ./run.sh
	@echo "+++ Environment started +++"
