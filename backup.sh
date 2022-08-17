dt=$(date +%d%m%y%H%M)
mkdir /backup/ && mkdir /backup/$dt/
echo -n "Starting..."; apt list --installed > /backup/$dt/aptlist_$dt.txt &&
tar -cvf /backup/$dt/backup_$dt.tar.gz /var/www/html/  > /dev/null; echo "Done!".;
