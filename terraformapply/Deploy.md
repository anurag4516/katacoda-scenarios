## Understanding Terraform Plan

Verify based on your .tf files a plan is created which includes how many resources to be added 

## Understanding Terraform   
`terraform apply -auto-approve`{{execute}}  

Verify that resources are created .  

Verify .tfstate file is created  
`ls -ltra | grep .tfstate`{{ execute }}  

View the state file and verify that it is updated with resources created 
`cat terraform.tfstate`{{execute}}  

## Destroy the resources  

`terraform destroy -auto-approve`{{execute}} 





