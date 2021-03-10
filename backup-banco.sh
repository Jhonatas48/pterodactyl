var diabackup= $(date "+%Y%m%d")
var backup="/home/root/backups-banco/"
mysqldump --all-databases -u root > "$backup/$diabackup.sql"
