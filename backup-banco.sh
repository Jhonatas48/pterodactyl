DATA=$(date +'%d-%m-%Y')
backp= $HOME/backups-database
mkdir -p $HOME/backups-databases|| exit 1
mysqldump --all-databases > $HOME/backup-$DATA.sql
