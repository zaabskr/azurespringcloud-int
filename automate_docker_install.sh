# Remove clamav
sudo systemctl stop clamav-freshclam
sudo apt-get remove clamav clamav-daemon -y
sudo apt autoremove -y
# Stop web services
# Remove web services
# Clean up directories
rmdir intake-service
# Remove docker & docker-compose
sudo rm $(which docker-compose) -f
sudo apt remove docker-ce -y
sudo apt install apt-transport-https ca-certificates curl software-properties-common -y
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -
sudo add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu bionic stable"
sudo apt update
sudo apt-cache policy docker-ce
sudo apt install docker-ce -y
sudo usermod -aG docker delladmin
sudo curl -L https://github.com/docker/compose/releases/download/1.21.2/docker-compose-`uname -s`-`uname -m` -o /usr/local/bin/docker-compose
sudo chmod +x /usr/local/bin/docker-compose
sudo docker images
sudo docker-compose --version
sudo docker ps
sudo docker run hello-world
# Install Azure cli
curl -sL https://aka.ms/InstallAzureCLIDeb | sudo bash
# Login to Container Registry without using passwords
az login --identity
az acr login --name intakecontainerregistry
mkdir intake-service
cd intake-service
