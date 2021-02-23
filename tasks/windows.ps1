[CmdletBinding()]
Param(
 [Parameter(Mandatory = $True)]
 [String]
 $group
 )

$agent = "NessusAgent-7.7.0-x64.msi" 

 [System.Net.ServicePointManager]::SecurityProtocol = [System.Net.SecurityProtocolType]::Tls12;
curl -o $agent https://raw.githubusercontent.com/kinners00/nessus_agent_tasks/master/files/NessusAgent-7.7.0-x64.msi
Start-Process msiexec.exe -Wait -ArgumentList "/I $agent NESSUS_GROUPS=""$group"" NESSUS_SERVER=""cloud.tenable.com:443"" NESSUS_KEY=836e1c023f20601162f217107054c0aa1c61c91a4c750a1f094b4adfc396ddce /quiet"

Remove-Item -Path C:\Users\puppetinstructor\Documents\$agent

