# docker-vsftpd
Docker Image for vsftpd servece. [vsftpd](https://security.appspot.com/vsftpd.html) is a most secure and fastest FTP server for UNIX-like systems.

# Usage

```
# docker run -p 20-21:20-21  -p 7000-7100:7000-7100 \ 
    -v /var/ftp:/var/ftp -v /root/vsftpd_conf:/root \
    megbeguk/vsftpd
```
Put in Host folder /root/vsftpd_conf file users.txt:

```
user1
pass1
..
```
