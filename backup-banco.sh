USR=root
SENHA=''
DATA=$(date +'%d-%m-%Y')
mkdir -p /backups-databases || exit 1
DRT=/backups-databases/backup-$DATA.sql
mysqldump -u USR --password=$SENHA --all-databases > $DRT
