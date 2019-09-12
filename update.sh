source config

if [ -z $1 ]; then
echo "updating api tests";
repo="moj/cpp.apitests"
else
echo "setting repo to "$1;
repo="moj/cpp.context."$1
fi

path=/Users/chandank/development/$repo

./pull.sh $code $path $password $azurePassword
