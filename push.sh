#!/bin/bash
set -e

FTP_HOST=${FTP_HOST}
FTP_USERNAME=${FTP_USERNAME}
FTP_PASSWORD=${FTP_PASSWORD}

ftp -n<<!
open ${FTP_HOST} 
user ${FTP_USERNAME} ${FTP_PASSWORD}
binary
hash
lcd /backup
prompt
mput *
close
bye
!
