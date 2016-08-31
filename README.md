# docker-vsftpd
Docker Image for vsftpd servece. [vsftpd](https://security.appspot.com/vsftpd.html) is a most secure and fastest FTP server for UNIX-like systems.

# Usage

```
# docker run -p 20-21:20-21  -p 7000-7050:7000-7050 \
    -v /var/ftp:/var/ftp \
    megbeguk/vsftpd
```
Put in Host folder /var/ftp files: vsftpd.conf, users.txt.

vsftpd.conf - config file for vsftpd.

users.txt - file with list of virtual useres:
```
user1
pass1
user2
pass2
..
```

/var/ftp foder in Host is root ftp folder for virtual useres home's folders.
