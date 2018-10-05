#!/bin/bash

FQDN=`cat ./san.cnf | grep commonName | cut -d= -f2 | tr -d '[:space:]'`
echo "Generating Certificate and Key for $FQDN"

openssl req -out $FQDN.csr -new -newkey rsa:2048 -nodes -keyout $FQDN.key -config san.cnf

