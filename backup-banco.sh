USR=root
SENHA=''
DATA=$(date +'%d-%m-%Y')
mkdir -p /backups-databases || exit 1
DRT=/backups-databases/backup-$DATA.sql
if [(-z $SENHA) || (-n $SENHA)];then
   mysqldump -u $USR --all-databases > $DRT
   mysqlcheck -u root --auto-repair --optimize --all-databases
else
   mysqldump -u $USR --password=$SENHA --all-databases > $DRT
   mysqlcheck -u $USR --password=$SENHA --auto-repair --optimize --all-databases
   
fi
