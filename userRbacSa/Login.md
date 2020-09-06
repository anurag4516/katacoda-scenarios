# Check with which user you are login . Try below command 

`oc whoami `{{execute}}

Check that YOu are login as a admin

## Check what users are avialable 

`oc get users `{{execute}}

Verify that Identity as htpassword_provider

# Perform Web Console activities 
Step 1 : Login As developer/developer

`oc get users `{{execute}}

Verify that now 2 users are present 

## Verify default service accounts 

`oc get sa `{{execute}}

# Logout from Cluster

`oc logout `{{execute}}






