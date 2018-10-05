#!/bin/bash
FQDN=`cat ./san.cnf | grep commonName | cut -d= -f2 | tr -d '[:space:]'`
echo "Check PFX is valid for $FQDN. You will need to supply the password"

openssl pkcs12 -info -in $FQDN.pfx
