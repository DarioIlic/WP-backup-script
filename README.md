# WP-backup-script
Simple WordPress backup script


You need to define these:

BACKUP_DIR=/path/to/backup -> backup folder, something like /home/backup
HOME_DIR=/path/to/files/and/folder/of/wordpress/site -> path to site, depends on the WebServer used

DB=database_name -> this is your database name, you can find it in wp-config.php next to define( 'DB_NAME',
USER=database_user -> this is your database user, you can find it in wp-config.php next to define( 'DB_USER',
PASSWD=database_password -> this is your database password, you can find it in wp-config.php next to define( 'DB_PASSWORD',

BKP_DIR=$BACKUP_DIR/html -> on my end it is /html since I use LiteSpeed and files are stored in there. On some it might public_html so, adjust that as well

Rest is really self-explanatory.
If you need help with setting it up, you can visit my site and contact me via contact form.

I also added the part to remove all backups older than 14 days. You can set it for longer or lesser period by adjusting the +14 value in the last line, just next to -mtime
