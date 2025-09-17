IMAGE_NAME = redcross_project
CONTAINER_NAME = redcross_container

all: setup clean build

setup:
	virtualenv .env

build:
	docker build -t $(IMAGE_NAME) .

run: build
	docker run --name $(CONTAINER_NAME) -it $(IMAGE_NAME)

clean:
	docker rm -f $(CONTAINER_NAME)
	docker rmi -f $(IMAGE_NAME)