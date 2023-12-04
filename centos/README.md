# This is ansible APP+ Backoffice script - 4pay!

#!/bin/bash
curl -sSLO https://dev.mysql.com/get/mysql80-community-release-el7-10.noarch.rpm
rpm -ivh mysql80-community-release-el7-10.noarch.rpm
sudo yum install mysql-server -y 
sudo systemctl start mysqld
password=$(grep 'temporary password' /var/log/mysqld.log | tail -c 13)
mysql -u root -p$password --connect-expired-password <<-EOF
ALTER USER 'root'@'localhost' IDENTIFIED WITH mysql_native_password BY 'Alpha401@';
DELETE FROM mysql.user WHERE User='root' AND Host NOT IN ('localhost', '127.0.0.1', '::1');
DELETE FROM mysql.user WHERE User='';
DELETE FROM mysql.db WHERE Db='test' OR Db='test_%';
FLUSH PRIVILEGES;
SET GLOBAL validate_password.policy = 0;
CREATE USER '4payapp'@'%' IDENTIFIED WITH mysql_native_password BY 'falcon^321';
GRANT ALL PRIVILEGES ON *.* TO '4payapp'@'%' WITH GRANT OPTION;
EOF
useradd -c "Centos X" -s /bin/bash -m -p $(echo baba | openssl passwd -1 -stdin) -G centos centox
sed -i 's/PasswordAuthentication no/PasswordAuthentication yes/g' /etc/ssh/sshd_config
systemctl restart sshd
