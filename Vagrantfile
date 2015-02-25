Vagrant.configure(2) do |config|

  config.vm.define "gateway" do |gw|
    gw.vm.box = "ubuntu/precise32"
    gw.vm.hostname = "gateway"
    # gw.vm.network "public_network"
    gw.vm.provision "shell", path: "provision.sh"
    gw.vm.provision "shell", path: "gw/provision.sh"
    gw.vm.provider "virtualbox" do |vb|
      #vb.gui = true
      vb.memory = "512"
      vb.customize ["modifyvm", :id, "--nic4", "intnet"]
      vb.customize ["modifyvm", :id, "--intnet4", "blau"]
      vb.customize ["modifyvm", :id, "--macaddress4", "0810271377C2"]
      vb.customize ["modifyvm", :id, "--nic5", "bridged"]
      vb.customize ["modifyvm", :id, "--bridgeadapter5", "eth0"]
      vb.customize ["modifyvm", :id, "--macaddress5", "0810271377C3"]
    end
  end
  
  config.vm.define "web", primary: true do |web|
    web.vm.box = "ubuntu/precise32"
    web.vm.provision "shell", path: "provision.sh"
    web.vm.provision "shell", path: "web/provision.sh"
    web.vm.hostname = "web"
    web.vm.provider "virtualbox" do |vb|
      vb.memory = "512"
      vb.customize ["modifyvm", :id, "--nic4", "intnet"]
      vb.customize ["modifyvm", :id, "--intnet4", "blau"]
      vb.customize ["modifyvm", :id, "--macaddress4", "0810271377C0"]
    end
  end
  
  config.vm.define "db" do |db|
    db.vm.box = "ubuntu/precise32"
    db.vm.provision "shell", path: "provision.sh"
    db.vm.provision "shell", path: "db/provision.sh"
    db.vm.hostname = "db"
    db.vm.provider "virtualbox" do |vb|
      vb.memory = "512"
      vb.customize ["modifyvm", :id, "--nic4", "intnet"]
      vb.customize ["modifyvm", :id, "--intnet4", "blau"]
      vb.customize ["modifyvm", :id, "--macaddress4", "0810271377C1"]
    end
  end
  config.vm.define "family" do |family|
    family.vm.box = "ubuntu/precise32"
    family.vm.provision "shell", path: "provision.sh"
    family.vm.provision "shell", path: "family/provision.sh"
    family.vm.hostname = "family"
    family.vm.provider "virtualbox" do |vb|
      vb.memory = "512"
      vb.customize ["modifyvm", :id, "--nic4", "intnet"]
      vb.customize ["modifyvm", :id, "--intnet4", "blau"]
      vb.customize ["modifyvm", :id, "--macaddress4", "0810271377C4"]
    end
  end
end
