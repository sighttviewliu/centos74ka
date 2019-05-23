## Ubuntu 16.04
sudo apt -y install ipvsadm keepalived
sudo service ipvsadm start
#sudo service keepalived start
## if check
sudo service ipvsadm status
#sudo service keepalived status

## Centos 7.4
yum -y install ipvsadm keepalived
systemctl start ipvsadm.service
systemctl enable ipvsadm.service
#systemctl start keepalived.service
#systemctl enable keepalived.service
## if check
systemctl status ipvsadm
#systemctl status keepalived
