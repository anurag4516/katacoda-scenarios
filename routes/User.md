## Services
We have already Deployed an application for you

## press Cntrl+c when you see 3 pods
See the running Service
`oc get svc`{{execute}} 

Verify the service created is of type ClusterIP . Sow we would be anle to access this services within Cluster


## Expose Service and Create route 

`oc expose svc nodejs-ex`{{execute}}
