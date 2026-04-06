#!/bin/bash

path='https://gather.town/api/v2/spaces/wuczIoykXOKBYPiv%5CGECCO%202023/spawn-tokens'
apiKey='mnegYQ1PT6uWOhbj'

for sp in $(cat spawnids.txt); do 
	echo -n -e "${sp}\t"
	curl --location "$path" \
		--header 'Content-Type: application/json' \
		--header "apiKey: $apiKey" \
		--data "{\"room\": \"g9kY1hate7U39FA0_qUO5\", \"spawn\": \"${sp}\", \"type\": \"SpawnTile\"}";
	echo
done
