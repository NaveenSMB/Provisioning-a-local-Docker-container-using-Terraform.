clear
sudo apt update
sudo apt install docker.io -y
sudo apt-get update && sudo apt-get install -y gnupg software-properties-common curl
wget -O- https://apt.releases.hashicorp.com/gpg | gpg --dearmor | sudo tee /usr/share/keyrings/hashicorp-archive-keyring.gpg > /dev/null
gpg --no-default-keyring --keyring /usr/share/keyrings/hashicorp-archive-keyring.gpg --fingerprint
echo "deb [signed-by=/usr/share/keyrings/hashicorp-archive-keyring.gpg] https://apt.releases.hashicorp.com $(lsb_release -cs) main" | sudo tee /etc/apt/sources.list.d/hashicorp.list
sudo apt update
sudo apt install terraform
terraform -version
docker --version
mkdir terraform-docker
cd terraform-docker
touch main.tf
vim main.tf
ls
cd terraform-docker/
vim main.tf
terraform init
terraform plan
vim main.tf
terraform plan
sudo usermod -aG docker $USER
terraform plan
sudo reboot
