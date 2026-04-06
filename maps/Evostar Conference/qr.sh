#!/bin/bash

name=$1
url=$2
echo $name $url

curl -vk --output qr-codes/${name}.png https://api.qrserver.com/v1/create-qr-code/?data=${url}&size=100x100 
