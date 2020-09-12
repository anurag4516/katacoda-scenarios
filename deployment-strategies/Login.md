

`apt-get -y remove ansible-base`{{execute}}  
`pip install ansible-base`{{execute}}  
`curl -fsSL https://apt.releases.hashicorp.com/gpg |  apt-key add -`{{execute}}  
`apt-add-repository "deb [arch=amd64] https://apt.releases.hashicorp.com $(lsb_release -cs) main"`{{execute}}  
`apt-get update && sudo apt-get install terraform`{{execute}}  

`git clone https://github.com/anurag4516/thoughtworks_assgnment.git`{{execute}}  
`cd thoughtworks_assgnment/`{{execute}}  


export AWS_ACCESS_KEY_ID={your Cred}    
export AWS_SECRET_ACCESS_KEY={yourcred}  

#### Wget your .pem file here
wget {{url}}

#### Chnage Permisiions of .pem
chmod 400 {{yourpemname}}

`terraform apply -auto-approve`{{execute}}  
