#!/bin/bash
FQDN=`cat ./san.cnf | grep commonName | cut -d= -f2 | tr -d '[:space:]'`
echo "Check Signed Certificate is valid for $FQDN"

openssl x509 -in $FQDN.crt -text -noout
