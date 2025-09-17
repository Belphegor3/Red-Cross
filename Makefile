# Makefile to build and run the project using Docker

# Variables
IMAGE_NAME = redcross_project
CONTAINER_NAME = redcross_container

# Default target
all: build

# Build the Docker image
build:
	docker build -t $(IMAGE_NAME) .

# Run the Docker container
run: build
	docker run --name $(CONTAINER_NAME) -it $(IMAGE_NAME)

# Clean up the Docker container and image
clean:
	docker rm -f $(CONTAINER_NAME) || true
	docker rmi -f $(IMAGE_NAME) || true