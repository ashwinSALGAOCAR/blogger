Vagrant.configure("2") do |config|
  config.vm.box = "ubuntu/xenial64"
  config.vm.network "private_network", ip: "192.168.45.100"
  config.vm.provider "virtualbox" do |vb|
    vb.memory = "512"
  end
end
