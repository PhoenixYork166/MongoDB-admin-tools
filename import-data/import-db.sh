#!/bin/bash

read -p "Enter .json file name [e.g. tv-shows.json]: " fileName;
read -p "Enter new database name [e.g. movieData]: " dbName;
read -p "Enter new collection name [e.g. movies]: " collectionName;

mongoimport $fileName -d $dbName -c $collectionName --jsonArray --drop;