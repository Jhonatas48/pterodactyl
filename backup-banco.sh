diabackup= $(date "+%Y%m%d")
backup= /home/root/backups-mysql/backup-$diabackup.sql
mkdir -p /home/root/backups-mysql|| exit 1
mysqldump --all-databases -u root > $backup
