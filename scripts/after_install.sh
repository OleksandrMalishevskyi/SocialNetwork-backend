#!/bin/bash

cd /home/ec2-user/SocialNetwork-backend
sudo rm -rf env-file.zip
sudo rm -rf .env
sudo rm -rf .env.develop
aws s3 sync s3://lucianbritapp-env-files/develop .
unzip env-file.zip
sudo cp .env.develop .env
sudo pm2 delete all
sudo npm install
sudo npm install -g npm@9.6.5
sudo npm audit fix
