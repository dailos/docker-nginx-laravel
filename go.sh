#!/bin/bash
docker build -t nginx-laravel -t nginx-laravel:1.13.0 . \
  && docker images -qf dangling=true | xargs -r docker rmi
