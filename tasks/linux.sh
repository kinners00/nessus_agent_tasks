#!/bin/bash

nessus_agent='NessusAgent-7.7.0-es7.x86_64.rpm'

curl -o $nessus_agent https://raw.githubusercontent.com/kinners00/nessus_agent_tasks/master/files/NessusAgent-7.7.0-es7.x86_64.rpm

sudo yum localinstall $nessus_agent -y

sudo /bin/systemctl start nessusagent.service
/opt/nessus_agent/sbin/nessuscli agent link --key=836e1c023f20601162f217107054c0aa1c61c91a4c750a1f094b4adfc396ddce --groups="$PT_group" --cloud

sudo rm $nessus_agent
