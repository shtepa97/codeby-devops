#!/bin/bash

dir="/home/user/test"

#Проверка наличия директории
if [ -d $dir ]

        then
	#Вывод количества файлов
        file_count=$(ls $dir | wc -l)
        echo $file_count
	
	#Проверка наличия файла 2 для избежания конфликтов
        if [ -f $dir/file2.txt ]
                then
                chmod 664 $dir/file2.txt
                fi
	#Поиск и удаление пустых файлов
        find $dir -type f -empty -delete
	
	#Цикл удаления всех строк в файлах, кроме певой
        for file in $dir/*;
                do
                if [ -f "$file" ];
                        then
                        head -n 1 "$file" > "$file.tmp"
                        mv "$file.tmp" "$file"
                        fi
                done

        fi
