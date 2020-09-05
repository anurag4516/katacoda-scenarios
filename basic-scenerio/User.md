All the components of k8s are deployed as Operator
# Check Operators deployed in Project

`oc get projects | grep operator `{{execute}}

### You can see that Some of  Openshift components which are deployed as Operators .
### Components Includes Kubeapi_server , Controller ,Schedular

### Operators Basically manage a application deployed in project . So for each operator we have project 

` oc get projects | grep apiserver `{{execute}}

### Change Project to see the acual Pod Running 

`oc project openshift-apiserver`{{execute}}

### View Pods Running which actually runs an Application
`oc get pods`{{execute}}

You will see that a  Pod running inside this project

### Describe the Pod to see which image and container running inside it
`oc describe pod `{{execute}}

See the image section to identify Image which is used to run application . You can see the logs via
oc logs {podnamecommand}

## Some Components can also only be deployed as Projects example etcd (Majorly those whose Operators are not avialable) 

`oc get projects | grep etcd `{{execute}}
