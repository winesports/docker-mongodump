#!/bin/bash
set -e

PUSH_HOST=${PUSH_HOST}
PUSH_USERNAME=${PUSH_USERNAME}
PUSH_PASSWORD=${PUSH_PASSWORD}

ftp -n<<!
open ${PUSH_HOST} 
user ${PUSH_USERNAME} ${PUSH_PASSWORD}
binary
hash
lcd /backup
prompt
mput *
close
bye
!
