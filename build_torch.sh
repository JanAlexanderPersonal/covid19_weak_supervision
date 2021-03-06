#!/bin/bash

 
read -p "Do you want to build the jupyter notebook WiseNet image? (y/n)" REPLY
echo $REPLY # (optional) move to a new line
if [ $REPLY = "y" ]
then
    echo "Start to build wisenet:jpNotebook"
    echo "---"
    docker build --pull --rm -f "Dockerfile_jupyter" -t wisenet:jpNotebook "." 
    echo "--"
    echo "Done"
fi

read -p "Do you want to build the Wisenet torch image? (y/n)" REPLY
echo $REPLY # (optional) move to a new line
if [ $REPLY = "y" ]
then
    echo "Start to build wisenet:torch"
    echo "---"
    docker build --pull --rm -f "Dockerfile_pytorch_wisenet" -t wisenet:torch "." 
    echo "--"
    echo "Done"
fi