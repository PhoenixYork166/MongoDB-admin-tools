#!/bin/bash

read -p "Enter MongoDB database name for export [e.g. restaurants]: " dbName;
read -p "Enter Collection name for export [e.g. reviews]: " collName;
read -p "Enter Target .json name [e.g. reviews.json]: " jsonName;

mongoexport --db $dbName --collection $collName -o $jsonName;