DATA=$(date +'%d-%m-%Y')
backp= $HOME/backups-database
mysqldump --all-databases > $backps/backup-$DATA.sql
