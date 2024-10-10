#!/bin/bash

read -p "Enter MongoDB hostname for BSON export [e.g. mongodb.example.com]: " hostName;
read -p "Enter port [e.g. 27017]: " portNum;
read -p "Enter username [e.g. admin]: " userName;
read -p "Enter password [e.g. securePassword]: " pass;
read -p "Enter authenticationDatabase [e.g. admin]: " authenDB;
read -p "Enter databaseName [e.g. databaseName]: " dbName
read -p "Enter Collection name [e.g. myColl1]: " collName;
read -p "Enter output path [e.g. /tmp/mongodb_bson_bak]: " bakPath;

mongodump --host $hostName --port $portNum --username $userName --password $pass --authenticationDatabase $authenDB --db $dbName --collection $collName --gzip --out $bakPath;