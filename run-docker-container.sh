#!/bin/bash

# starts the docker container that was created previosly
# with the help of the 'Dockerfile'
# the current directory will be mapped into the container as /srv/hugo

docker run --rm --name myhugo -p 1313:1313 --volume $(pwd):/srv/hugo myhugo
