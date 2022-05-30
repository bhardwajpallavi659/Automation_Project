sudo apt update -y
sudo apt install awscli
sudo apt install apache2
sudo systemctl status apache2
sudo mkdir /var/log/apache2/
cd /var/log/apache2/
sudo tar -czvf pallavi-httpd-logs-$(date "+%b%d%Y_%H%M%S").tar *
sudo cp -a apache2/pallavi-httpd-logs-May302022_185023.tar  tmp
aws s3 \
cp /tmp/pallavi-httpd-logs-$(date "+%b%d%Y_%H%M%S").tar \
s3://$upgradpallavibhardwaj/pallavi-httpd-logs-$(date "+%b%d%Y_%H%M%S").tar
