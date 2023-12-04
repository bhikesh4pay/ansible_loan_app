# This is ansible APP+ Backoffice script - 4pay!

## Boostrap Script for AWS

#!/bin/bash

apt-get update 

apt-get install mysql-server -y

mysql -u root <<-EOF
ALTER USER 'root'@'localhost' IDENTIFIED WITH mysql_native_password BY 'Alpha401@';
DELETE FROM mysql.user WHERE User='root' AND Host NOT IN ('localhost', '127.0.0.1', '::1');
DELETE FROM mysql.user WHERE User='';
DELETE FROM mysql.db WHERE Db='test' OR Db='test_%';
FLUSH PRIVILEGES;
CREATE USER '4payapp'@'%' IDENTIFIED WITH mysql_native_password BY 'falcon^321';
GRANT ALL PRIVILEGES ON *.* TO '4payapp'@'%' WITH GRANT OPTION;
EOF

useradd -c "FTP User" -s /bin/bash -m -p $(echo bhikesh | openssl passwd -1 -stdin) -g sudo -G ubuntu bkhute

sed -i 's/PasswordAuthentication no/PasswordAuthentication yes/g' /etc/ssh/sshd_config

systemctl restart sshd
