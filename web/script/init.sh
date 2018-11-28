#!/bin/bash
echo $MONGODB_SVC_A_SERVICE_HOST mongo01.trznt.com >> /etc/hosts
echo $MONGODB_SVC_B_SERVICE_HOST mongo02.trznt.com >> /etc/hosts
echo $MONGODB_SVC_C_SERVICE_HOST mongo03.trznt.com >> /etc/hosts
cd /usr/app
npm start

