# k8s-automation
Provision Development Environment

This project aim to automate application build and deployment process

Requirements
1- Vagrant
2- Virtualbox

# Usage
```ShellSession
# Start Vagrant from commandline
vagrant up
```
# What is automated until now 
Vagrant app command create a new ubuntu18.04 box on local machine.
Then It will install ansible and terraform binaries on ubuntu
Ansible is used for install docker, java and jenkins on applications

# What will be automated in the future(Infrastructure)
Amazon ec2 instances will be created from terraform automatically.
SSH key generator shell script will be written for create ec2 instances. Developer can access ec2 instances from local easily with primary key.

Self Managed Kubernetes will be created with kubeadm or kubespray. Ip Addresses can accessible from tfstate file after ec2 instance creation
When configs are set for aws instances. kubeadm or kubespray will executed from start.sh file.

# What will be automated in the future(CI/CD)
Jenkins plugins will be installed automatically from ansible.
Jenkinsfiles installed from groovy script and developers just execute pipelines from ui
If developer needs to new binaries like kubectl,helm and kustomize those can be installed with ansible












