#!/bin/bash


if [ -d ~/test/ ]

	then
	
	file_count=$(ls ~/test/ | wc -l)
	echo $file_count
	
	if [ -f ~/test/file2.txt ]
		then
		chmod 664 ~/test/file2.txt
		fi
	
	find ~/test/ -type f -empty -delete
	
	for file in ~/test/*;
		do
		if [ -f "$file" ];
			then
			head -n 1 "$file" > "$file.tmp"
			mv "$file.tmp" "$file"
			fi
		done
	
	fi
