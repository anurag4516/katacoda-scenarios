# Services

We have already Deployed an application for you 


### press Cntrl+c when you see 3 pods

------------------------------------------------
## See the running Service 
`oc get svc`{{execute}}
Verify the service created is of type ClusterIP . Sow we would be anle to access this services within Cluster

### Run a busy box container 
`kubectl run -i --tty busybox --image=busybox --restart=Never -- sh`{{execute}}

### Try to wget the service 
`wget nodejs-ex:8080`{{execute}}

Exit from container

### Edit SVC to Nodeport
`oc edit svc nodejs-ex`{{execute}}

Chnage Type and add Node port as 32000

Save and Exit

## Try connecting to port 32000 on Cluster

Validate if you are able to see application

Select Port to view

![Katacoda Logo](./assets/Selectport.PNG)

Enter Port 32000 and view application
![Katacoda Logo1](./assets/enterport.PNG)


