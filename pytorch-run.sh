#!/bin/sh


if ! type docker &> /dev/null; then
	echo "docker does not exist"
	exit 1
fi

docker pull pytorch/pytorch
docker run -v ${PWD}/script:/usr/src/script -w /usr/src/script pytorch/pytorch python pytorch.py