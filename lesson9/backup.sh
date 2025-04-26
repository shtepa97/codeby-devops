#!/bin/bash
nowtime=$(date +"%F-%H")
dir="/opt/mysql_backup/$nowtime"
pass="root"

mkdir -p "$dir"
mysqldump -u root -p"$pass" test_db > "$dir/test_db.sql"
