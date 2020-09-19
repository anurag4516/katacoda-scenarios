# Connecting AWS to terraform

You can connect to aws via three mechanism :  

## Mehtod 1: Via setting env variables 

export AWS_ACCESS_KEY_ID={your Cred}    
export AWS_SECRET_ACCESS_KEY={yourcred}  

Try this .  

## Method 2 : Setting value in main.tf (Not reccomended as it is to be stored at github and can be compromized)  


Add these 2 parameters in main.tf    
access_key = "{your Cred}"  
 secret_key = "{yourcred}"     

Try this 

## Method 3 : Configuring AWS CLI 

Curl AWS CLi via following command  
curl "https://awscli.amazonaws.com/awscli-exe-linux-x86_64.zip" -o "awscliv2.zip"  

Use aws configure to configureit 
`aws configure`{{ execute}} 




