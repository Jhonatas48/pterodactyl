DATA=$(date +'%d-%m-%Y')
backp= /backupsdbs
mkdir -p /backups-databases || exit 1
DRT=/backups-databases/backup-$DATA.sql
mysqldump --all-databases > $DRT
