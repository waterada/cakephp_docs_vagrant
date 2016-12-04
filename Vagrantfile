# -*- mode: ruby -*-
# vi: set ft=ruby :

# Vagrantfile API/syntax version. Don't touch unless you know what you're doing!
VAGRANTFILE_API_VERSION = "2"

Vagrant.configure(VAGRANTFILE_API_VERSION) do |config|
  # Every Vagrant virtual environment requires a box to build off of.
  config.vm.box = "bento/centos-6.7"
  config.vm.hostname = "cakephp-docs"

  # Provider-specific configuration so you can fine-tune various
  # backing providers for Vagrant. These expose provider-specific options.
  config.vm.provider :virtualbox do |vb|
    # Don't boot with headless mode
    vb.gui = false

    # Use VBoxManage to customize the VM. For example to change memory:
    vb.customize ["modifyvm", :id, "--memory", "1024"]
  end

  config.vm.boot_timeout = 120

  config.vm.provision "shell", inline: <<-SHELL
    mv "/etc/localtime" "/etc/localtime.org"
    ln -s "/usr/share/zoneinfo/Japan" "/etc/localtime"
    yum install -y "epel-release"
    yum install -y "python-pip"
    pip install -r "/vagrant/docs/requirements.txt"
  SHELL
end
