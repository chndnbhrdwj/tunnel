source config

server=$1;

if [ -z "$1" ]
then
server=10;
echo "Server name not provided, defaulting to 10 "
fi

param="ls /opt/wildfly/standalone/deployments/ | grep -v 'server' | grep 'deployed' | grep -v 'undeployed' | sed 's/.war.deployed//g' | sed \"s/^/'/g\" | sed \"s/$/'/g\" | grep service |sed \"s/-service-/_project_version': '/g\"";
#command="ssh $1@STECCM$serverACTAP01.cpp.nonlive ./getCurrentDeployments.sh";
command="ssh STECCM${server}ACTAP01.cpp.nonlive ${param}";
#echo "command is ${command}"; 
 
./tunnel $code $password $command

