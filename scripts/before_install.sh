#!/bin/bash


DIR="/home/ec2-user/SocialNetwork-backend"
pm2 delete all
if [ -d "$DIR" ]; then
  cd /home/ec2-user
  sudo rm -rf SocialNetwork-backend
else
  echo "Directory does not exist"
fi
