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

## IAM verification
aws sts get-caller-identity

## Health check script
mkdir ~/scripts

cd ~/scripts

nano health-check.sh

chmod +x health-check.sh

./health-check.sh

## Commands inside the health check script
date

hotstname

grep PRETTY_NAME /etc/os-release

uptime -p

df -h

free -h

systemctl is-active nginx

curl -s --head http://localhost

aws sts get-caller-identity

## View the generated report
car ~/deployment-report.txt

## Upload to S3
aws s3 cp ~/deployment-report.txt s3://linh-aws-linux-lab-report-2026/health-reports/deployment-report.txt

## Verify upload
aws s3 ls s3://linh-aws-linux-lab-report-2026/health-reports/


