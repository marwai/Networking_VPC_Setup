SSH into DB server
ssh -i ~/.ssh/DevOpsStudents.pem ubuntu@123.45.2.181 # DB Private IP

sudo apt-get install nginx
add dh_host variable to the env 

## Going on browser using Nginx on APP
scp -i ~/.ssh/DevOpsStudents.pem -r ~/PycharmProjects/Testing_VPC_Network_Via_App/app/ ubuntu@52.48.31.230:/home/ubuntu/

scp -i ~/.ssh/DevOpsStudents.pem -r ~/PycharmProjects/Testing_VPC_Network_Via_App/environment/app/ ubuntu@52.48.31.230:/home/ubuntu/

ssh -i ~/.ssh/DevOpsStudents.pem ubuntu@52.48.31.230

Connecting to DB
ssh -i ~/.ssh/DevOpsStudents.pem ubuntu@ec2-54-216-111-231.eu-west-1.compute.amazonaws.com # -i $ ./provision.sh

export DB_HOST="mongodb://123.45.2.181:27017/posts" # db private host

npm install 

# Errors
If we run ```sudo apt-get install nginx``` the download will stay on 0% as the private NACL subnet doesn't allow inbound communication from internet

- This means the private NACL inbound access

Bastion connects to MY IP

cc ../..

cd /etc 

sudo nano hosts

## Changing Provisions to DOS2UNIX
Dos2unix 

# Notes
## Internet Gateway
VPC private network within public cloud
IGW brings internet connects to internet 



My potential error
private nacl

Blocker Public NACL


Humzas Error
- NACL private - Open all ports 

- Checking Databse IP 
- Checking DB Inbound rules 
- Security groups for DB
- Private NACL allowing all traffic 
- Route table 
- Subnet - route table - public
