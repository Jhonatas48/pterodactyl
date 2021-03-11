DATA=$(date +'%d-%m-%Y')
backp= /backupsdbs
mkdir -p /backupsdb|| exit 1
drt=/backupsdbs/backup-$DATA.sql
mysqldump --all-databases > $drt
