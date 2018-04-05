#!/bin/bash
if (( $# == 0 )); then
	echo "Removing any previous data from Neon";
        (cd ./docker-neonwalletdb-neoscan; rm -rf data)
  
	echo "Calling docker compose for building privnet with neoscan and neon";
	(cd ./docker-neonwalletdb-neoscan; docker-compose up -d)
else
	echo "Calling docker compose, inside docker-neo-scan folder, with parameter $1";
	(cd ./docker-neonwalletdb-neoscan; docker-compose $1)
fi
