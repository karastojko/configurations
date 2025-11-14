#!/bin/sh

openssl genrsa -out server.key 2048
openssl req -new -key server.key -out server.csr
openssl genrsa -aes256 -out ca.key 4096
openssl req -x509 -new -nodes -key ca.key -sha256 -days 3650 -out ca.pem
openssl x509 -in ca.pem -out ca.crt
openssl x509 -req -in server.csr -CA ca.pem -CAkey ca.key -CAcreateserial -out server.crt -days 365 -sha256 -extfile san.cnf -extensions v3_req
openssl pkcs12 -export -out server.pfx -inkey server.key -in server.crt -certfile ca.crt
