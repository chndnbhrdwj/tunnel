source /Users/chandank/tunnel/config

server=$1;
file=$2;

if [ -z "$1" ]
then
server=10;
echo "Server name not provided, defaulting to 10 "
elif [ -z "$2" ]
then
echo "no file was passed.";
exit;
fi

command="scp $2 STECCM${server}ACTAP01.cpp.nonlive:~/";
 
/Users/chandank/tunnel/tunnel $code $password $azurePassword $command

