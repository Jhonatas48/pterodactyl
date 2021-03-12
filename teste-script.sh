USR='teste'
SENHA='testando'
DATA=$(date +'%d-%m-%Y')
mkdir -p /backups-databases || exit 1
DRT=/backups-databases/backup-$DATA.sql
if [-z "$SENHA"]
then
   mysqldump -u USR --all-databases > $DRT
else
   mysqldump -u $USR --password=$SENHA --all-databases > $DRT
fi
