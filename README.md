# docker-vsftpd
Docker Image for vsftpd servece

# Usage

```
docker run -p 20-21:20-21  -p 7000-7100:7000-7100 -v /var/ftp:/var/ftp -v /root/docker/ftp:/root --name vsftpd megbeguk/vsftpd
```
Put in Host folder /root/docker/ftp file users.txt:
```
user1
pass1
..
```
