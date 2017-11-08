#!/usr/bin/expect
set timeout 10
set host ${HOST}
set username ${USERNAME}
set password ${PASSWORD}
set src_file $FILE
set dest_file $FILE
spawn scp $src_file $username@$host:$dest_file
 expect {
 "(yes/no)?"
  {
  send "yes\n"
  expect "*assword:" { send "$password\n"}
 }
 "*assword:"
{
 send "$password\n"
}
}
expect "100%"
expect eof
