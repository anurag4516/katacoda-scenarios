## Use oc new app command to run via docker strategy

`oc new-app https://github.com/cloudpassion1801/angularSpringbootFrontEnd.git`{{execute}}

If a Docker file is present at root location then by default oc new-app uses docker strategy 

## Verify Build config
`oc get bc`{{execute}}
Verify a build config is created with Type as Docker
`oc describe bc angularspringbootfrontend`{{execute}}

Verify a Build is created
`oc get builds`{{execute}}

Wait untill 3 Pods are created and one pod is in running status
`oc get pods`{{execute}}

## Verify a Service is created 
`oc describe svc angularspringbootfrontend`{{execute}}

## Expose service to route 

`oc expose svc angularspringbootfrontend`{{execute}}


