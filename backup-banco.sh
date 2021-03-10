diabackup= $(date "+%Y%m%d")
backup="/home/root/backups-banco/$diabackup.sql"
mysqldump --all-databases -u root > $backup
