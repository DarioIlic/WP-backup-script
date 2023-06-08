#!/bin/sh
DATE=$(date +"%d%m%Y")
BACKUP_DIR=/path/to/backup
HOME_DIR=/path/to/files/and/folder/of/wordpress/site
DB=database_name
USER=database_user
PASSWD=database_password
BKP_DIR=$BACKUP_DIR/html
BKP_DB=$BACKUP_DIR/$DB$DATE.sql
BKP_FILE=WPbackup$DATE.tar.gz

cp -Rp $HOME_DIR $BACKUP_DIR
mysqldump -u$USER -p$PASSWD $DB > $BACKUP_DIR/$DB$DATE.sql
tar -czf $BACKUP_DIR/$BKP_FILE $BKP_DIR $BKP_DB
rm -rf $BKP_DIR; rm -f $BKP_DB

find $BACKUP_DIR/* -type f -mtime +14 -delete
