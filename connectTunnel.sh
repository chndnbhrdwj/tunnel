source config
code=`authenticator --account $account --key $key --issuer $issuer | grep 'Token' | cut -d':' -f2`

./tunnel $code $password 
