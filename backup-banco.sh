diabackup= $(date "+%Y%m%d")
backup= $HOME/backups-databases/backup-$diabackup.sql
mkdir -p $HOME/backups-databases|| exit 1
mysqldump --all-databases -u root > $backup
