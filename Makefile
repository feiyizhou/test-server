base:
	docker build -t feiyizhou/alpine-base:3.19 -f Dockerfile.base .

build:
	go build -o server main.go

docker: build
	docker build -t test-server:latest -f Dockerfile .