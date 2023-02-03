#!/bin/bash

systemctl is-enabled wazuh-agent &>2

if [[ "${?}" -eq 0 ]]
then
	echo " Wazuh client is already installed"
 exit 0
 fi

 sudo apt-get install curl -y

curl -so wazuh-agent.deb https://packages.wazuh.com/3.x/apt/pool/main/w/wazuh-agent/wazuh-agent_3.13.1-1_amd64.deb && sudo WAZUH_MANAGER='wazuh.vvdntech.com' dpkg -i ./wazuh-agent.deb

#Save the Cert & Key

wget -O /var/ossec/etc/sslagent.cert  https://ldap.vvdntech.com/wazuh/sslagent.cert
wget -O /var/ossec/etc/sslagent.key  https://ldap.vvdntech.com/wazuh/sslagent.key

# Resgistering with Wazuh
/var/ossec/bin/agent-auth -m wazuh.vvdntech.com -x /var/ossec/etc/sslagent.cert -k /var/ossec/etc/sslagent.key

#Restart Service
service wazuh-agent restart

