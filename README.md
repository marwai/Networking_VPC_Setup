# Bastion 

![Bastion](images/Bastion-Server.png)

## Things to remember 
- SSH into DB server
- ssh -i ~/.ssh/DevOpsStudents.pem ubuntu@123.45.2.181 # DB Private IP
- sudo apt-get install nginx
- add dh_host variable to the env 
- Unresolved Ip - cd ../../etc > sudo nano hosts > copyip above and ip-XXX-XXX-XXX
- ```bad interpretor``` dosunix provision.sh

# Instructions 

## Connecting to DB
1. ssh -i ~/.ssh/DevOpsStudents.pem ubuntu@123.45.2.18
2. scp -i ~/.ssh/DevOpsStudents.pem -r ~/PycharmProjects/Testing_VPC_Network_Via_App/environment/db/provision ubuntu@123.45.2.181:/home/ubuntu/
3. scp -i ~/.ssh/DevOpsStudents.pem -r ~/PycharmProjects/Testing_VPC_Network_Via_App/environment/db/mongod.conf ubuntu@123.45.2.181:/home/ubuntu/

## Connecting to MongoDB through port 27017 on the App server 
1. scp -i ~/.ssh/DevOpsStudents.pem -r ~/PycharmProjects/Testing_VPC_Network_Via_App/app/ ubuntu@52.48.31.230:/home/ubuntu/

2. scp -i ~/.ssh/DevOpsStudents.pem -r ~/PycharmProjects/Testing_VPC_Network_Via_App/environment/app/ ubuntu@52.48.31.230:/home/ubuntu/

3. ssh -i ~/.ssh/DevOpsStudents.pem ubuntu@52.48.31.230

# Errors
If we run ```sudo apt-get install nginx``` the download will stay on 0% as the private NACL subnet doesn't allow inbound communication from internet

- This means the private NACL inbound access

Bastion connects to MY IP

cc ../..

cd /etc

![1st gif](images/1st gif.gif)


# Connecting to DB # old notes to keep
ssh -i ~/.ssh/DevOpsStudents.pem ubuntu@ec2-54-216-111-231.eu-west-1.compute.amazonaws.com # -i $ ./provision.sh

export DB_HOST="mongodb://123.45.2.181:27017/posts" # db private host

npm install 

# Notes
## Internet Gateway
VPC private network within public cloud
IGW brings internet connects to internet 



## My potential error
private nacl
Blocker Public NACL

## Proof
![proof](images/proof.png)
Humzas Error
- NACL private - Open all ports 

- Checking Databse IP 
- Checking DB Inbound rules 
- Security groups for DB
- Private NACL allowing all traffic 
- Route table 
- Subnet - route table - public
