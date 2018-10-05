# SSL Management Scripts

## PreReq's
This was created on Amazon Linux but should work on most Linux distro's.

## Setup
The configuration file san.cnf is the basis for all scripts. They will run based on what's configured in that file. Good practice is to copy this entire directory each time you wish to create a new certifcate to keep things clean. 

## Generate a certifcate
1. Update the commonName and emailAddress in san.cnf. Ideally use your group email distribution list but remember 
2. Run the following script to generate the certificate and key.
  ./generate-certificate.sh

## Check a certificate signing request
To ensure the csr is valid and contains the correct information use ./check-csr.sh

## Send your CSR off to a certifcate authority to be signed
This will vary according to your CA

## Validate the Certificate
To ensure the signed certificate has maintained it's integrity through the signing process use ./check-certificate.sh

## Ensure the Ceritifcate and Private Key match
If you have a valid certificate you can check the private key and certificate are still paried. Use ./check-key-matches-signed-certificate.sh


## Convert signed certifcate for use with F5's (optional)
The F5's work well with PFX files (a single file containing the certificate and key). Prior to conversion you will need a password. Use ./generate-password.sh to generate a password. To convert run the following ./convert-to-pfx-for-f5.sh and use the supplied password. Make sure you save this password and distribute securely to the Network team with the pfx file

## Check PFX (optional)
To check the PFX file and confirm the password is correct use ./check-pfx.sh

