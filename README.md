# Bastion 

## Diagram
![Bastion](images/Bastion-Server.png)
```Key words``` : VPN, Bastion, IGW, Route Table, NACL, Security Groups 

## Things to remember 
- SSH into DB server
- ssh -i ~/.ssh/DevOpsStudents.pem ubuntu@123.45.2.181 # DB Private IP
- sudo apt-get install nginx
- add dh_host variable to the env 
- Unresolved Ip - cd ../../etc > sudo nano hosts > copyip above and ip-XXX-XXX-XXX
- ```bad interpretor``` dosunix provision.sh

# Instructions 

## Connecting to DB
1) Secure copy db folder from OS to bastion to DB
    ```
    scp -i ~/.ssh/DevOpsStudents.pem -r ~/PycharmProjects/Testing_VPC_Network_Via_App/environment/db/ ubuntu@52.48.31.230:/home/ubuntu/
    
   # SSh into the bastion to move the devops keys here
    scp -i ~/.ssh/DevOpsStudents.pem -r ~/PycharmProjects/Testing_VPC_Network_Via_App/environment/db/ ubuntu@123.45.2.181:/home/ubuntu/
    ```
   
1) SSH to the bastion 
    ```
    ssh -i ~/.ssh/DevOpsStudents.pem ubuntu@52.48.31.230
    ```
   
2) SSH to the DB 
   ```
    ssh -i ~/.ssh/DevOpsStudents.pem ubuntu@123.45.2.181
    ```
   
 3) Run the provision folder using ```./provision``` 


## Connecting to MongoDB through port 27017 on the App server 
1. Secure copy the app folder from OS to the App VM 
    ```
    scp -i ~/.ssh/DevOpsStudents.pem -r ~/PycharmProjects/Testing_VPC_Network_Via_App/app/ ubuntu@123.45.1.45:/home/ubuntu/
    ```
   
2. secure copy the environment/app/ folder to the app folder in the App VM
    ```
    scp -i ~/.ssh/DevOpsStudents.pem -r ~/PycharmProjects/Testing_VPC_Network_Via_App/environment/app/ ubuntu@5123.45.1.45:/home/ubuntu/
    ```
3. SSH into the app vm
    ```
    ssh -i ~/.ssh/DevOpsStudents.pem ubuntu@123.45.1.45
    ```
   
4. Navigate into the app folder where app.js resides
    ```apex
    cd app
    ./provision.sh
    ```
# Errors
If we run ```sudo apt-get install nginx``` the download will stay on 0% as the private NACL subnet doesn't allow inbound communication from internet

- This means the private NACL inbound access

Bastion connects to MY IP

cc ../..

cd /etc

![1st gif](images/1st%20gif.gif)


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

