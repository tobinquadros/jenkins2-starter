include .env

.PHONY: jenkins-master test build check clean rm-containers rm-images

all:
	docker-compose up -d

jenkins-master:
	docker-compose up -d jenkins-master

test:
	@ echo "not implemented"

build:
	docker-compose build jenkins-master

clean: rm-containers rm-images

rm-containers:
	-@ docker-compose down --remove-orphans --volumes
	-@ docker container prune --force

rm-images:
	-@ docker image prune --force
