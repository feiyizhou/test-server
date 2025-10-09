base:
	docker build -t feiyizhou/alpine-base:3.19 -f Dockerfile.base .

build:
	CGO_ENABLED=0 GOOS=linux GOARCH=amd64 go build -o server

docker: build
	docker build -t feiyizhou/test-server:latest -f Dockerfile .