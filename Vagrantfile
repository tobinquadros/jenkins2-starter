# -*- mode: ruby -*-
# vi: set ft=ruby :

# Vagrantfile API/syntax version. Don't touch unless you know what you're doing!
VAGRANTFILE_API_VERSION = "2"

Vagrant.configure(VAGRANTFILE_API_VERSION) do |config|

  # Official Ubuntu build
  config.vm.define "ubuntu" do |ubuntu|
    ubuntu.vm.box = "ubuntu/xenial64"

    # Setup network
    ubuntu.vm.network "private_network", ip: "192.168.33.33"
    ubuntu.vm.network "forwarded_port", guest: 80, host: 8080, auto_correct: true

    # Mount local working dir in vagrant
    ubuntu.vm.synced_folder ".", "/vagrant"
  end

  config.vm.define "rhel" do |rhel|
    rhel.vm.box = "generic/rhel7"

    # Setup network
    rhel.vm.network "private_network", ip: "192.168.33.34"
    rhel.vm.network "forwarded_port", guest: 80, host: 9090, auto_correct: true

    # Mount local working dir in vagrant
    rhel.vm.synced_folder ".", "/vagrant"
  end

  # Setup instance specs as needed.
  config.vm.provider :virtualbox do |vb|
    vb.gui = $vb_gui
    vb.customize ["modifyvm", :id, "--memory", "1024"]
    vb.customize ["modifyvm", :id, "--cpus", "1"]
  end

end
