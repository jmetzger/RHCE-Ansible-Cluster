#!/bin/bash 

# Done in vagrant file 
# ssh_pub_key = File.readlines("../_config/.ssh/server_root_id_rsa.pub").first.strip

dnf install -y epel-release
dnf update -y
dnf install -y python36

# Done by file provisioner inside Vagrantfile 
[ -d /root/.ssh ] || mkdir /root/.ssh 
echo $SSH_PUB_KEY_FROM_VAGRANT  > /root/.ssh/authorized_keys
env > /root/THIS_IS_MY_ENV 
