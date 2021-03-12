USR=teste
SENHA='testando'
DATA=$(date +'%d-%m-%Y')
mkdir -p /backups-databases || exit 1
DRT=/backups-databases/backup-$DATA.sql
if ["$SENHA" -eq ''];then
   mysqldump -u USR --all-databases > $DRT
else
   echo $SENHA
   mysqldump -u $USR --password=$SENHA --all-databases > $DRT
fi
