#!/bin/bash
for sp in $(cat spawnids.txt); do 
	echo -n -e "${sp}\t"
	curl --location 'https://gather.town/api/v2/spaces/wuczIoykXOKBYPiv%5CGECCO%202023/spawn-tokens' \
		--header 'Content-Type: application/json' \
		--header 'apiKey: mnegYQ1PT6uWOhbj' \
		--data "{\"room\": \"g9kY1hate7U39FA0_qUO5\", \"spawn\": \"${sp}\", \"type\": \"SpawnTile\"}";
	echo
done
