#!/bin/bash

# wait elasticsearch running
until $(curl --output /dev/null --silent --head --fail http://elasticsearch:9200); do
    printf '.'
    sleep 5
done

# fix development address elasticsearch
sed -i 's/localhost:9200/elasticsearch:9200/g' /app/app/config/development.js
node --harmony /app/app/create_indices.js --create

# now healthcheck OK for bootstrap
apt-get install -y socat
socat tcp-listen:8080,reuseaddr,fork \
   "exec:printf \'HTTP/1.0 200 OK\r\n\r\n\'" &

# wait bootstrap data to stop
until $(curl --output /dev/null --silent --head --fail http://bootstrap:8080); do
    printf '.'
    sleep 5
done

pm2-docker start pm2.json --env production
