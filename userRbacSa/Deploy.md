# Understanding Role Based Access Control

The SA Created in previous Section does not have any Projects associated to It

## First login as admin as SA will not have permissions to add role

`oc login -u admin -p admin`{{execute}}
In this section We will Add view role to Service Account 


`oc policy add-role-to-user view system:serviceaccount:demo:robot -n demo`{{execute}}



# Verify that it is able to view project


# Interacting directly with the container is simple with oc rsh

