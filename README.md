
# Configurations #

Settings for various stuff.


## PostgreSQL 15.5 ##

Setup for TCP and remote connections.


## Emacs 27, 28.2 ##

Init file for various modes and colors.


## Apache 2 ##

Virtual hosts for HTTP and HTTPS.


## Nginx 1.22.1 ##

Reverse proxy for HTTP and HTTPS to a web backend on port 3000.


## OpenSSL ##

Generating server key and certificate with the self signed certificate authority. Execute `. ./generate.sh` which uses the given file `san.cnf` to produce the
following files: `server.key`, `server.csr`, `ca.key`, `ca.pem`, `ca.crt`, `server.crt`, `server.pfx`. Several questions will be asked by the openssl command.
