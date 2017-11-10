#!/bin/bash -ex

version="latest"
if [ $TRAVIS_BRANCH != "master" ] ; then
  version=$TRAVIS_BRANCH
fi
tag=dojot/kerberos:$version


docker build -t $tag .
docker login -u="$USERNAME" -p="$PASSWD"
docker push $tag
