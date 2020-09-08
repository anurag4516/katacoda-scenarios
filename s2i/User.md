# Deploying Application via cli

`oc new-project demo`{{execute}}

`oc new-app https://github.com/sclorg/nodejs-ex`{{execute}}

## Verify Deployment config is created

`oc get dc nodejs-ex`{{execute}}

`oc describe dc nodejs-ex`{{execute}}

Verify Image /Triggers

## Verify a Build Config  is created 

`oc describe buildconfig nodejs-ex`{{execute}}

Verify strategy /URL / Build section

## Verify a Build is created 
`oc describe build nodejs-ex-1`{{execute}}

Verify Events section 

## Verify image Stream is there 
`oc describe is nodejs-ex`{{execute}}

Check Unique Images section , it should say 1 image


