#!/bin/sh


if ! type docker &> /dev/null; then
	echo "docker does not exist"
	exit 1
fi

docker build --rm -t mlenv:0.1 .
echo "------------------------------"
docker images mlenv
echo "------------------------------"
docker run -v ${PWD}/script:/usr/src/script -w /usr/src/script mlenv:0.1 python iris.py