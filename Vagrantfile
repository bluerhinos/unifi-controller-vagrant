# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure("2") do |config|
    config.vm.box = "debian/stretch64"

    config.ssh.shell="bash"

    config.vm.network "public_network"
    # To remember which network to bridge against use the line bellow instead of the one above
    #config.vm.network "public_network", bridge: "en0: Wi-Fi (AirPort)"

    config.vm.provider "virtualbox" do |vb|
        vb.gui = false
        vb.memory = "1024"
    end

    config.vm.provision "ansible" do |ansible|
        ansible.playbook = "provision.yml"
    end

    config.trigger.after [:up, :reload] do |trigger|
        trigger.info = "Unifi Info"
        trigger.run_remote = {path: "start.sh"}
    end

end
