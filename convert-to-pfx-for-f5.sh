#!/bin/bash
FQDN=`cat ./san.cnf | grep commonName | cut -d= -f2 | tr -d '[:space:]'`
echo "Convert pem certificate for $FQDN to pfx (combining certifcate and key) for use with the F5's"

openssl pkcs12 -export -out $FQDN.pfx -inkey $FQDN.key -in $FQDN.crt -name $FQDN

