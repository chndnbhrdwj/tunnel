source config

box=10;
port=8080;
ui='';

if [ -z $2 ]; then
echo "set";
else
echo "setting server to "$2;
box=$2
fi

server="steccm"$box"actap01";

if [[ $1 = "db" ]]
then
port=5432;
server="STECCM"$box"DCTDB01"
fi

command="ssh -L$port:localhost:$port $server.cpp.nonlive";

if [[ $1 = "ui" ]]
then
port=8181;
server="STECCMSLAVE01.cpp.nonlive"
command="ssh -C -D $port $server";
fi

./tunnel $code $password $azurePassword $command
