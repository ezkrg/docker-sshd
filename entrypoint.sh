#!/bin/sh

if [ ! -f /etc/ssh/ssh_host_rsa_key ] || [ ! -f /etc/ssh/ssh_host_dsa_key ] || [ ! -f /etc/ssh/ssh_host_ecdsa_key ] || [ ! -f /etc/ssh/ssh_host_ed25519_key ]
  then
    ssh-keygen -A
fi

exec "$@"