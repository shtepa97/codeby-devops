#!/bin/bash

if [ -d ~/test/ ]
	then
	rm -r ~/test/
	fi

mkdir ~/test/

echo "Hello world!" > ~/test/file1.txt
echo "$(date)" >> ~/test/file1.txt

touch ~/test/file2.txt
chmod 777 ~/test/file2.txt

tr -dc 'A-Za-z0-9' < /dev/urandom | head -c 20 > ~/test/file3.txt

touch ~/test/file4.txt
touch ~/test/file5.txt
