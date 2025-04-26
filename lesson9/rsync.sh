#!/bin/bash

rsync -avz /opt/mysql_backup/ user@192.168.0.2:/opt/store/mysql/
