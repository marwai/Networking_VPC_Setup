

# Move the /app folder from the OS to webapp VM
  $ scp -i ~/.ssh/DevOpsStudents.pem -r ~/PycharmProjects/Testing_VPC_Network_Via_App/app/ ubuntu@3.249.35.18:/home/ubuntu/

# Move DevOpsStudent Keys from Os to app  .ssh folder
  $ scp -i ~/.ssh/DevOpsStudents.pem -r  ubuntu@54.74.176.151:/home/ubuntu/.ssh/

# Move  ~/PycharmProjects/Testing_VPC_Network_Via_App/environment/db/  (/db) folder into the database vm 
  $ scp -i ~/.ssh/DevOpsStudents.pem -r ~/PycharmProjects/Testing_VPC_Network_Via_App/environment/db/ ubuntu@123.45.2.181:/home/ubuntu/

# Move DevOps Keys from the operating system (OS) to the bastion virtual machine (VM)
  $ ssh -i  ~/.ssh/DevOpsStudents.pem ubuntu@54.171.70.108

# Use SSH to create a secure connection between the client and the bastion server
  $ ssh -i  ~/.ssh/DevOpsStudents.pem ubuntu@54.171.70.108 # Public ip of the bastion instance

# Use SSH to create a secure connection between the bastion to the  databse server server
  $ ssh -i ~/.ssh/DevOpsStudents.pem ubuntu@123.45.2.181 # private IP of the database instance
# Leave the db server running and open another Gitbash


# Move the /app folder from the OS to webapp VM
  $ scp -i ~/.ssh/DevOpsStudents.pem -r ~/PycharmProjects/Testing_VPC_Network_Via_App/app/ ubuntu@3.249.35.18:/home/ubuntu/

# Move the ~/environment/app/ folder from the OS to the webapp vm
  $ scp -i ~/.ssh/DevOpsStudents.pem -r ~/PycharmProjects/Testing_VPC_Network_Via_App/environment/app/ ubuntu@52.50.44.115:/home/ubuntu/

# SSH into webapp
  $ ssh -i ~/.ssh/DevOpsStudents.pem ubuntu@52.50.44.115

# navigate into the webapp folder
  $ cd app/
  $ ./provsion.sh
