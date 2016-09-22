#!/bin/bash

# check input parameters exists
if [ -z "$1" ] && [ -z "$2" ] && [ -z "$3" ]; then
  printf 'please enter input arguments: mailto,subject,message';
  exit;
fi


smtpserver='smtps://smtp.gmail.com:465'
mailfrom='ACCOUNT@gmail.com'
userpass='ACCOUNT@gmail.com:PASSWORD'
mailfromtext='"SENDER_NAME" <ACCOUNT@gmail.com>'
mailto=$1
subject=$2
message=$3

#file name
mailmsg='mailmsg'  

rm $mailmsg

printf %b "From: $mailfromtext\n" >> $mailmsg
printf %b "To: $mailto\n" >> $mailmsg
printf %b "Subject: $subject\n" >> $mailmsg

printf %b "$message\n" >> $mailmsg
printf %b "=============================================\nmail comes from ezSendGmail service\n=============================================" >> $mailmsg

curl -s  --url "$smtpserver" --upload-file "$mailmsg" --mail-from "$mailfrom" --mail-rcpt "$mailto" --ssl-reqd --insecure --user "$userpass"

#if [ 0 = $? ]; then
#  printf 'Success';
#else
#  printf 'Fail: error code'$?;
#fi

