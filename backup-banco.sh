dia= $(date "+%Y%m%d")
backp= $HOME/backups-databases/backup-$dia.sql
mkdir -p $HOME/backups-databases|| exit 1
mysqldump --all-databases -u root > $backp
