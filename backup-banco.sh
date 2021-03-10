diabackup= $(date "+%Y%m%d")
backup="/home/root/backups-banco/"
mysqldump --all-databases -u root > $backup+"/backup-"+$diabackup+".sql"
