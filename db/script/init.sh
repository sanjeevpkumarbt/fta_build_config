#!/bin/bash
host=`hostname`
echo $host
if [[ $host =~ "mongo-rc1" ]] ; then
	echo "matched"
        echo 0.0.0.0 mongo01.trznt.com >> /etc/hosts
        echo $MONGODB_SVC_B_SERVICE_HOST mongo02.trznt.com >> /etc/hosts
        echo $MONGODB_SVC_C_SERVICE_HOST mongo03.trznt.com >> /etc/hosts
        mongod --replSet my_set --sslMode requireSSL --clusterAuthMode x509 --sslClusterFile /keys/mongodb1.pem --sslPEMKeyFile /keys/mongodb1.pem --sslCAFile /keys/caroot.cer --bind_ip mongo01.trznt.com
elif [[ $host =~ "mongo-rc2" ]] ; then
        echo "matched"
        echo 0.0.0.0 mongo02.trznt.com >> /etc/hosts
        echo $MONGODB_SVC_A_SERVICE_HOST mongo01.trznt.com >> /etc/hosts
        echo $MONGODB_SVC_C_SERVICE_HOST mongo03.trznt.com >> /etc/hosts
        mongod --replSet my_set --sslMode requireSSL --clusterAuthMode x509 --sslClusterFile /keys/mongodb2.pem --sslPEMKeyFile /keys/mongodb2.pem --sslCAFile /keys/caroot.cer --bind_ip mongo02.trznt.com
elif [[ $host =~ "mongo-rc3" ]] ; then
        echo "matched"
        echo 0.0.0.0 mongo03.trznt.com >> /etc/hosts
        echo $MONGODB_SVC_A_SERVICE_HOST mongo01.trznt.com >> /etc/hosts
        echo $MONGODB_SVC_B_SERVICE_HOST mongo02.trznt.com >> /etc/hosts
        mongod --replSet my_set --sslMode requireSSL --clusterAuthMode x509 --sslClusterFile /keys/mongodb3.pem --sslPEMKeyFile /keys/mongodb3.pem --sslCAFile /keys/caroot.cer --bind_ip mongo03.trznt.com
fi
