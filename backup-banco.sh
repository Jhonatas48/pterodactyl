DATA=$(date +'%d-%m-%Y')
backp= /backupsdb
mkdir -p /backupsdb|| exit 1
drt=/backups-databases/backup-$DATA.sql
mysqldump --all-databases > $drt
