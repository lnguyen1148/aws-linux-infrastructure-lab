## Connect to the EC2 instance:
ssh -i /path/to/private-key.pem ubuntu@EC2-PUBLIC-IP

## Verify the operating system
whoami
hostname
uname -a

## Update the server
sudo apt update
sudo apt upgrade -y

## Install tools
sudo apt install -y nginx git curl unzip htop tree

## Check status of Nginx
sudo systemctl status nginx
sudo systemctl is-enabled nginx

## Test the web server
curl http://localhost
sudo ss -tulnp
