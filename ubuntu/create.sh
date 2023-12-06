#/bin/bash

vars_path=$PWD/vars/vars.yml
updatestmts=$PWD/files/updatestmts.sql
echo "This is configuration script"
echo "Enter the domain name to be configured here"
read dname
echo "Enter the Database IP Address"
read dbip
echo "Enter the email pass"
read epass
echo "Enter client name"
read client
sed -i "s/floor.low/$dname/g" $vars_path
sed -i "s/floor.low/$dname/g" $updatestmts
sed -i "s/3.99.219.101/$dbip/g" $vars_path
sed -i "s/epass/$epass/g" $vars_path
sed -i "s/clientname/$client/g" $vars_path
echo "Changes Completed!"
echo "------------------------------------------------------------------------------------------"
cat $vars_path
echo "------------------------------------------------------------------------------------------"
cat $updatestmts
echo "------------------------------------------------------------------------------------------"
svckuunda=$(openssl rand -base64 14 | tr -d '/+' | cut -c1-)
sed -i "s/djdDNDHSCziXwaNa8L4=/$svckuunda/g" $vars_path
echo "Password for svc_kuunda is:" $svckuunda
partnerkey=$(openssl rand -base64 14 | tr -d '/+' | cut -c1-)
sed -i "s/RBXtu6RflQ5HFMgu15Q=/$partnerkey/g" $vars_path
echo "Password for Partnerkey is:" $partnerkey
