#!/bin/bash

FILE=docker-compose.yml

if [ -f "$FILE" ]; then
	rm $FILE
	wget https://raw.githubusercontent.com/LemmyNet/lemmy/main/docker/prod/docker-compose.yml
else
	echo "$FILE does not exist. Creating $FILE now..."
	wget https://raw.githubusercontent.com/LemmyNet/lemmy/main/docker/prod/docker-compose.yml
fi

