#!/bin/bash

USERNAME='yourusername'
PASSWORD='yourpassword'

MAIL=`wget --secure-protocol=TLSv1 --timeout=3 -t 1 -q -O - https://${USERNAME}:${PASSWORD}@mail.google.com/mail/feed/atom --no-check-certificate | grep "fullcount" | sed -e "s/.*<fullcount>//;s/<\/fullcount>.*//" 2>/dev/null`

if [ -z $MAIL ]; then
	echo "×××××××"
else
	if [ $MAIL -gt 7 ]; then
		let MAIL=7
	fi
	for i in `seq 1 $MAIL`; do
		echo -n "o"
	done;
fi
