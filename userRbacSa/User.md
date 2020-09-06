# Understand how authentication works 

### Identify the Namespace which is responsible for authentication
`oc get ns | grep config`{{execute}}

Openshift config is the namespace/project which is responsible for all type of configurations

`oc get ns | grep oauth`{{execute}}

Openshift-oauth namespace runs application which is responsible for running authetication in oprenshift

## View the cluster Object in Oauth ad verify Identity provider configured
`oc get oauth cluster -o yaml`{{execute}}

Verify the Identity Provider configured in spec section


## View Password of users configured

`oc get secrets -n openshift-config`{{execute}}

Verify the secret htpass-secret is present in openshift-config namespae 

`oc get secret htpass-secret -n openshift-config -o yaml`{{execute}}

Now decrypt the password via base64 encoding to get user password 

echo -n '' | base64 --decode

