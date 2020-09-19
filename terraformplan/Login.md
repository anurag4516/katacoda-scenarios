
# Installing Terraform Locally

Download Terraform binary :  
`curl -fsSL https://apt.releases.hashicorp.com/gpg |  apt-key add -`{{execute}}  
`apt-add-repository "deb [arch=amd64] https://apt.releases.hashicorp.com $(lsb_release -cs) main"`{{execute}}    

Install terraform :

`apt-get update && sudo apt-get install terraform`{{execute}}  


Check if Terraform is isntalled correctly:  
`terraform --version`{{execute}}

Verify the version of terraform 
