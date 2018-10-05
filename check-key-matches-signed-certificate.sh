#!/bin/bash

FQDN=`cat ./san.cnf | grep commonName | cut -d= -f2 | tr -d '[:space:]'`
echo "Check Signed Certificate matches the private key for $FQDN"

openssl x509 -noout -modulus -in $FQDN.crt | openssl md5 ;  openssl rsa -noout -modulus -in $FQDN.key | openssl md5
