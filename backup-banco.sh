DATA=$(date +'%d-%m-%Y')
backp= $HOME/backups-database
mkdir -p $HOME/backups-databases|| exit 1
drt=$bckp/backup-$DATA.sql
printenv
mysqldump --all-databases > $drt
