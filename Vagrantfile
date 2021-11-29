# -*- mode: ruby -*-
# vi: set ft=ruby :

#if jenkins_domain will be changed, /playbooks/jenkins-install.yaml jenkins_hostname need to be changed
JENKINS_DOMAIN="dev.jenkins.local"
DEV_BOX_IP="192.168.10.10"

Vagrant.configure("2") do |config|

  config.vm.box = "generic/ubuntu1804"

  config.vm.provider "virtualbox" do |vb|
    vb.gui = false
    vb.memory = "2048"
  end
  config.vm.network "private_network", ip: DEV_BOX_IP
  config.vm.synced_folder ".", "/vagrant", disabled: false
  
  config.vm.provision "shell", inline: "sudo echo \"#{DEV_BOX_IP} #{JENKINS_DOMAIN}\" >> /etc/hosts"

  config.vm.provision "shell", inline: $script

  config.vm.provision "ansible_local" do |ansible|
    ansible.playbook = "/vagrant/playbooks/playbook.yml"
    ansible.install_mode = "default"
    ansible.version = "2.9.27"
  end
  config.vm.provision "shell", inline: "cp /vagrant/inventories/ansible.cfg /etc/ansible/ansible.cfg", privileged: true, run: "always"


  config.vm.provision "shell", inline: "cd /vagrant && ./install_terraform.sh"

  config.vm.provision "shell", inline: "cd /vagrant && ./start.sh"

end

$script = <<SCRIPT
sudo rm /etc/apt/sources.list
sudo cp /vagrant/inventories/sources.list /etc/apt/
sudo apt update -y
SCRIPT