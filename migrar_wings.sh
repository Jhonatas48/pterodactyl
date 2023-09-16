#!/bin/bash

# Solicita ao usuário o IP do servidor remoto
echo "Digite o IP do servidor remoto:"
read ip

# Solicita ao usuário o nome de usuário do servidor remoto
echo "Digite o nome de usuário do servidor remoto:"
read remote_user

# Solicita ao usuário a senha do servidor remoto (recomendado usar autenticação de chave SSH em vez de senha)
echo "Digite a senha do servidor remoto:"
read -s remote_password

# Comprime o diretório /var/lib/pterodactyl em um arquivo tar.gz
tar -czf wings.tar.gz /var/lib/pterodactyl

# Faz o dump do banco de dados (neste exemplo, estou usando o usuário root, você pode ajustar conforme necessário)
mysqldump -u root --all-databases --ignore-database=mysql > backup.sql

# Envia os arquivos para o servidor remoto usando scp
# Certifique-se de substituir os valores apropriados nas variáveis $ip, $remote_user e $remote_password
scp -o StrictHostKeyChecking=no -o UserKnownHostsFile=/dev/null wings.tar.gz $remote_user@$ip:/wings.tar.gz
scp -o StrictHostKeyChecking=no -o UserKnownHostsFile=/dev/null backup.sql $remote_user@$ip:/backup_wings.sql