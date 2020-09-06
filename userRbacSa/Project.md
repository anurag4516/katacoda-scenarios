# Understanding Service Account

## Create project
`oc new-project demo` {{execute}}

## Create a sa in Project

`oc create sa robot -n demo ` {{execute}}

## Undestand the SA

`oc describe sa robot -n demo ` {{execute}}

Verify token fiedl is attached , it is this token by which a SA can communicate to cluster 


## Get token details 

 `oc describe sa robot -n demo | grep robot-token | awk '{print $1;exit}'`  {{execute}}
 
 
`export my_token_name= `oc describe sa robot -n demo | grep robot-token | awk '{print $1;exit}'` ` {{execute}}

## get exact token 

`oc describe secret $my_token_name` {{execute}}

`export my_token_details=`oc describe secret $my_token_name | grep token: |awk '{print $2 }'` ` {{execute}}

## Login via SA
`oc login --token=$my_token_details` {{execute}}
