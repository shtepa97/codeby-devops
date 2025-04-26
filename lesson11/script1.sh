#!/bin/bash

dir="/home/user/test"
#Проверка наличия директории и удаление ее, если она есть, для избежания конфликта
if [ -d $dir ]
	then
	rm -r $dir
	fi
#Создание директории
mkdir $dir/

#Создание первого файла
echo "Hello world!" > $dir/file1.txt
echo "$(date)" >> $dir/file1.txt

#Создание второго файла
touch $dir/file2.txt
chmod 777 $dir/file2.txt

#Создание третьего файла
tr -dc 'A-Za-z0-9' < /dev/urandom | head -c 20 > $dir/file3.txt

#Создание четвертого и пятого файлов
touch $dir/file4.txt
touch $dir/file5.txt
