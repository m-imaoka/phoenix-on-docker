Vagrant.configure("2") do |config|
  config.vbguest.auto_update = false
  
  config.vm.box = "ailispaw/barge"
  
  config.vm.network "private_network", ip: "192.168.56.99"
  
  config.vm.synced_folder "./projects", "/home/bargee/projects", type: "virtualbox"
  config.vm.synced_folder "./Dockerfiles", "/home/bargee/Dockerfiles", type: "virtualbox"
  
  config.vm.provision "shell", path: "provision.sh", privileged: false
  config.vm.provision "file", source: "./docker-compose.yml", destination: "docker-compose.yml"
  config.vm.provision "file", source: "./.env", destination: ".env"
end
