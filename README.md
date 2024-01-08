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

## Resources/Source Material

- [Tac_plus man page](https://manpages.ubuntu.com/manpages/xenial/man8/tac_plus.8.html)
- [Create free TACACS+ Server on Ubuntu Machine Step by Step](https://ipwithease.com/steps-to-create-free-tacacs-server-on-ubuntu-machine/)
- [tacplus_image](https://github.com/llima3000/tacplus_image)
- [TACACS+ Remote Role Configuration for BIG-IP](https://community.f5.com/t5/technical-articles/tacacs-remote-role-configuration-for-big-ip/ta-p/285938)
- [Demystifying iControl REST Part 6: Token-Based Authentication](https://community.f5.com/t5/technical-articles/demystifying-icontrol-rest-part-6-token-based-authentication/ta-p/286793)
