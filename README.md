# RHCE-Ansible-Cluster

```
Ansible Cluster build on Vagrant to train for RHCE - Exam (Control-Node + 3 Nodes) 
```

## Setup 

```
Step1: Clone Repo 
Step2: cd into folder 
Step3: ./run.sh 
Step4: Log into workstation like so:
cd workstation
vagrant ssh 
sudo su -
ssh-keyscan servera
ssh-keyscan serverb
ssh-keyscan serverc
ssh-keyscan serverd 
```

## ssh-keys 

  * On all servers a pubkey is setup for root from workstation 
  
