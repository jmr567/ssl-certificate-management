#!/bin/bash
FQDN=`cat ./san.cnf | grep commonName | cut -d= -f2 | tr -d '[:space:]'`
echo "Check Certificate Signing Request is valid for $FQDN and contains the correct information"

openssl req -noout -text -in $FQDN.csr | egrep 'DNS|CN'
