## Navigate to project folder
cd ~/Projects/aws-linux-infrastructure-lab

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

## Start local web server
python3 -m http.server 8000

## Git
git status
git add .
git commit -m  "..."
git push

## Copy file to EC2
scp -i /path/to/key.pem website/index.html ubuntu@EC2_PUBLIC_IP:home/ubuntu/

## Copy HTML file into web directory
sudo cp /home/ubuntu/index.html /var/www/html/index.html

## Reload Nginx
sudo systemctl status nginx


