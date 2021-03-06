DOCKER_IMAGE 	= vsftpd

list:
	docker ps -a
	docker images

build:
	docker build -t $(DOCKER_IMAGE) src/
	docker images | grep $(DOCKER_IMAGE)

bash:
	docker run --rm -e "PASV_MIN_PORT=7000" -e "PASV_MAX_PORT=7010" --name $(DOCKER_IMAGE)_bash -it $(DOCKER_IMAGE) bash

shell:
	docker exec -i -t $(DOCKER_IMAGE) bash

test:
	docker run -p 20-21:20-21  -p 7000-7010:7000-7010 -e "PASV_MIN_PORT=7000" -e "PASV_MAX_PORT=7010" -v /tmp/FTP:/var/ftp --name $(DOCKER_IMAGE) $(DOCKER_IMAGE)
	docker ps -a | grep $(DOCKER_IMAGE)

st:
	docker start $(DOCKER_IMAGE)

stop:
	docker stop $(DOCKER_IMAGE)

rm:
	docker stop $(DOCKER_IMAGE)
	docker rm $(DOCKER_IMAGE)

rmi:
	docker rmi $(DOCKER_IMAGE)
