# docker-vsftpd
Docker Image for vsftpd servece. [vsftpd](https://security.appspot.com/vsftpd.html) is a most secure and fastest FTP server for UNIX-like systems.

# Usage

```
# docker run -p 20-21:20-21  -p 7000-7050:7000-7050 \
    -v /var/ftp:/var/ftp \
    megbeguk/vsftpd
```
Put in Host folder /var/ftp file: users.txt.

users.txt - file with list of virtual useres:
```
user1
pass1
user2
pass2
..
```

/var/ftp foder in Host is root ftp folder for virtual useres home's folders.

Change passive ports range:

```
# docker run -p 20-21:20-21  -p 7000-7010:7000-7010 \
    -e "PASV_MIN_PORT=7000" -e "PASV_MAX_PORT=7010" \
    -v /tmp/FTP:/var/ftp \
    megbeguk/vsftpd
```
