#!/usr/bin/env bash
# -*- mode: ruby -*-
# vi: set ft=ruby :

# All Vagrant configuration is done below. The "2" in Vagrant.configure
# configures the configuration version (we support older styles for
# backwards compatibility). Please don't change it unless you know what
# you're doing.
Vagrant.configure("2") do |config|
  # The most common configuration options are documented and commented below.
  # For a complete reference, please see the online documentation at
  # https://docs.vagrantup.com.

  # Every Vagrant development environment requires a box. You can search for
  # boxes at https://vagrantcloud.com/search or https://mirrors.tuna.tsinghua.edu.cn
  # Add required box of this vagrant file by the following line:
  # vagrant box add https://mirrors.tuna.tsinghua.edu.cn/ubuntu-cloud-images/eoan/current/eoan-server-cloudimg-amd64-vagrant.box --name ubuntu/eoan
  # vagrant box add https://mirrors.cloud.tengxun.com/ubuntu-cloud-images/eoan/current/eoan-server-cloudimg-amd64-vagrant.box --name ubuntu/eoan
  config.vm.box = "ubuntu/eoan"

  config.vm.hostname = "carstino"

  # If get this error `/sbin/mount.vboxsf: mounting failed with the error:`
  # look at this: https://github.com/scotch-io/scotch-box/issues/296
  # which suggest to run the following commands:
  # vagrant plugin install vagrant-vbguest && vagrant vbguest && vagrant reload
  config.vm.synced_folder ".", "/carstino"

  config.vm.boot_timeout = 600

  # Disable automatic box update checking. If you disable this, then
  # boxes will only be checked for updates when the user runs
  # `vagrant box outdated`. This is not recommended.
  # config.vm.box_check_update = false

  # Create a forwarded port mapping which allows access to a specific port
  # within the machine from a port on the host machine. In the example below,
  # accessing "localhost:8080" will access port 80 on the guest machine.
  # NOTE: This will enable public access to the opened port
  # config.vm.network "forwarded_port", guest: 80, host: 8080

  # Create a forwarded port mapping which allows access to a specific port
  # within the machine from a port on the host machine and only allow access
  # via 127.0.0.1 to disable public access

  # 9000 for django debug
  config.vm.network "forwarded_port", guest: 9000, host: 9000
  config.vm.network "forwarded_port", guest: 8009, host: 8009

  # 5002 for flask debug
  config.vm.network "forwarded_port", guest: 5002, host: 5002

  # for vue
  config.vm.network "forwarded_port", guest: 8080, host: 8088
  config.vm.network "forwarded_port", guest: 8081, host: 8089
  config.vm.network "forwarded_port", guest: 9527, host: 9528

  # Create a private network, which allows host-only access to the machine
  # using a specific IP.
  # config.vm.network "private_network", ip: "192.168.33.10"

  # Create a public network, which generally matched to bridged network.
  # Bridged networks make the machine appear as another physical device on
  # your network.
  # config.vm.network "public_network"

  # Share an additional folder to the guest VM. The first argument is
  # the path on the host to the actual folder. The second argument is
  # the path on the guest to mount the folder. And the optional third
  # argument is a set of non-required options.
  # config.vm.synced_folder "../data", "/vagrant_data"

  # To set disksize, you may need to run:
  # vagrant plugin install vagrant-disksize
  #config.disksize.size = '20GB'

  # Provider-specific configuration so you can fine-tune various
  # backing providers for Vagrant. These expose provider-specific options.
  # Example for VirtualBox:
  config.vm.provider "virtualbox" do |vb|
    # Display the VirtualBox GUI when booting the machine
    #vb.gui = true

    # Customize the amount of memory on the VM:
    vb.memory = "4096"
    vb.cpus = 2
  end
  #
  # View the documentation for the provider you are using for more
  # information on available options.

  # Enable provisioning with a shell script. Additional provisioners such as
  # Puppet, Chef, Ansible, Salt, and Docker are also available. Please see the
  # documentation for more information about their specific syntax and use.
  config.vm.provision "shell", inline: <<-SHELL

  echo "---- Optional: clone carstino"
  export repo="https://github.com/waketzheng/carstino"
  su vagrant -c 'mkdir archives&&cd archives&&git clone $repo'

  echo "Done."
  SHELL
end
