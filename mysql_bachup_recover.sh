#!/bin/bash

# On original machine
mysqldump -p --default-character-set euckr --skip-extended-insert -u <user> <dbname> --hex_blob > <filename>.sql

# On any linux machine with mysql
convert_encoding <filename> <tofilename> <encoding_from> <encoding_to>

# On new machine
mysql -vfqp -h 211.47.74.38 --max_allowed_packet=1G --default-character-set=utf8 --protocol=TCP -u <user> <dbname> < <tofilename>.sql