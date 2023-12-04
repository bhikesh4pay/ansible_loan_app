#/bin/bash

echo "This is configuration script"
echo "Enter the domain name to be configured here"
read dname
echo "Enter the Database IP Address"
read dbip
sed -i "s/floor.low/$dname/g" /home/centos/APP_BACKOFFICE/centos/vars/vars.yml
sed -i "s/floor.low/$dname/g" /home/centos/APP_BACKOFFICE/centos/files/updatestmts.sql
sed -i "s/3.99.219.101/$dbip/g" /home/centos/APP_BACKOFFICE/centos/vars/vars.yml
echo "Changes Completed!"
echo "------------------------------------------------------------------------------------------"
cat /home/centos/APP_BACKOFFICE/centos/vars/vars.yml
echo "------------------------------------------------------------------------------------------"
cat /home/centos/APP_BACKOFFICE/centos/files/updatestmts.sql
echo "------------------------------------------------------------------------------------------"
svckuunda=$(openssl rand -base64 14)
sed -i "s/djdDNDHSCziXwaNa8L4=/$svckuunda/g" /home/centos/APP_BACKOFFICE/centos/vars/vars.yml
echo "Password for svc_kuunda is:" $svckuunda
partnerkey=$(openssl rand -base64 14)
sed -i "s/RBXtu6RflQ5HFMgu15Q=/$partnerkey/g" /home/centos/APP_BACKOFFICE/centos/vars/vars.yml
echo "Password for Partnerkey is:" $partnerkey
