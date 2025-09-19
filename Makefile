all: setup build

setup:
	virtualenv .env

build:
	docker build -t red-cross .

clean:
	docker rmi -f $$(docker images -q)
	rm -rf .env

.PHONY: all setup build clean