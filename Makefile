# makefile to build and run the ubuntu docker image with qemu installed
# use this if you don't have access to an ubuntu machine

BOOTSTRAP_DOCKER_IMAGE_VERSION := 1.0.0

.PHONY: build
build:
	docker build -t mvpedreiro/ubuntu1610-qemu:$(BOOTSTRAP_DOCKER_IMAGE_VERSION) bootstrap_docker_image

.PHONY: run
run:
	docker run -it -v `pwd`:/osx-kvm \
	mvpedreiro/ubuntu1610-qemu:$(BOOTSTRAP_DOCKER_IMAGE_VERSION) bash
	#-v /Volumes/Seagate/resources/os/macOS/yosemite:/seagate/yosemite \
	#mvpedreiro/ubuntu1610-qemu:$(BOOTSTRAP_DOCKER_IMAGE_VERSION) bash
