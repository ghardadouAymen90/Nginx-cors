# -*- mode: ruby -*-
# vi: set ft=ruby :
# new code
#The "2" in Vagrant.configure
# configures the configuration version (we support older styles for
# backwards compatibility). Please don't change it unless you know what
# you're doing.

Vagrant.configure(2) do |config|
	config.vm.box = "bento/ubuntu-18.04"
	
	config.vm.define :nginx do |nginx_config|
		nginx_config.vm.host_name = "nginx"
		nginx_config.vm.network "private_network", ip:"172.17.8.110"
		nginx_config.vm.provider :virtualbox do |vb|
			vb.customize ["modifyvm", :id, "--memory", "1048"]
			vb.customize ["modifyvm", :id, "--cpus", "2"]
		end
	end
	
	config.vm.network "forwarded_port", guest: 80, host: 8080,
     auto_correct: true
	
end
