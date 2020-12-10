#!/bin/bash
if [ $PROXY_HOST ]; then
sed -i "s/localhost:9090/$PROXY_HOST/g" package.json
else echo "NoENV"
fi

sed -i "s/TITLE_PLACEHOLDER/Prometheus Server/g" public/index.html 
yarn start
