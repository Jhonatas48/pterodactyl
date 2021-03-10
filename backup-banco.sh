diabackup= $(date "+%Y%m%d")
backup="/home/root/backups-banco/backup-"$diabackup".sql"
printenv
mysqldump --all-databases -u root > $backup
