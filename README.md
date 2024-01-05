# Tacacs+ Test Server

This repository uses the official Ubuntu 18.04 Docker image for setting up a test TACACS+ server using `tac_plus`. Tested on Ubuntu 22.04 server running Docker 24.0.5.

## Build Steps

To build the Docker image, execute the following command on the cli:

```bash
sudo docker build -t tacacs .
```

## Run Steps

To run the Docker image, execute the following command on the cli:

```bash
sudo docker run --name tacplus \
                -td \
                -p 49:49 \
                -v /<full path>/tac_plus.conf:/etc/tacacs+/tac_plus.conf \
                tacacs
```

Example [tacacs config file](tac_plus.conf) for F5 BIG-IP is included.

## Use Case - F5 BIG-IP remote auth

For testing remote auth for tacacs (not for production!). Example [BIG-IP auth config](f5auth.conf) is included. 
