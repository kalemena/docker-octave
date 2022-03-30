
VERSION := latest

all: build start

build:
	@echo "+++ Building docker image +++"
	docker build --pull --build-arg VERSION=$(VERSION) -t kalemena/octave:$(VERSION) .

start:
	@echo "+++ Environment starting ... +++"
	/bin/bash ./run.sh
	@echo "+++ Environment started +++"
