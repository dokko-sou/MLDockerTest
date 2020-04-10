#!/bin/sh


if ! type docker-compose &> /dev/null; then
	echo "docker-compose does not exist"
	exit 1
fi

docker-compose up --build