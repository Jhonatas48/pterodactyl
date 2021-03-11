DATA=$(date +'%d-%m-%Y')
backp= $HOME/backups-databases/backup-$DATA.sql
mkdir -p $HOME/backups-databases|| exit 1
mysqldump --all-databases -u root >$backp
