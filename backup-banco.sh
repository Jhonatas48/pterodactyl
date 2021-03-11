DATA=$(date +'%d-%m-%Y')
backp= $HOME/backups-database
mkdir -p $HOME/backups-databases|| exit 1
drt=$bckp/backup-$DATA.sql
printenv | grep drt
mysqldump --all-databases > $drt
