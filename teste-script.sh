USR=teste
SENHA='testando'
DATA=$(date +'%d-%m-%Y')
$VAZIO=''
mkdir -p /backups-databases || exit 1
DRT=/backups-databases/backup-$DATA.sql
if ["$SENHA" = "$VAZIO"];then
   mysqldump -u USR --all-databases > $DRT
else
   mysqldump -u $USR --password=$SENHA --all-databases > $DRT
fi
