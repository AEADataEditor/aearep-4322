#!/bin/bash
myPWD=$(pwd)
cd ..
. ${myPWD}/.myconfig.sh
cd $myPWD
# build the docker if necessary

BUILD=yes

# Special setup

[[ -d RCPP_package ]] || mkdir RCPP_package
cp -a ../191522/RCPP_package/* RCPP_package


if [[ "$BUILD" == "yes" ]]; then
  docker build . -t $dockerrepo
fi

# push the docker if wanted
# interactively query user for push
read -p "Push to dockerhub? (yes/no) " PUSH
if [[ "$PUSH" == "yes" ]]; then
  echo "Pushing to $dockerrepo"
  nohup docker push $dockerrepo &
fi