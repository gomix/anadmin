#!/usr/bin/bash

source lib/common_fns.sh

section_header "LetsEncrypt Certificates Expiration Date Check"

sudo openssl x509 -dates -noout -in /etc/letsencrypt/live/virtual.anaj.org.ve/fullchain.pem

section_footer 
