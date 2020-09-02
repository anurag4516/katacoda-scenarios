# Create a new Project 

`oc new-project demo --display-name='My Project' --description='cool project owned by myuser `{{execute}}

# Build a new app via oc client 
`oc new-app centos/ruby-22-centos7~https://github.com/openshift/ruby-ex.git` {{execute}}

# Get project details in YAML
` oc get project myproject1 -o yaml` {{execute}}

# Get all running resources 
` oc get all`{{execute}}

# Get all Pods
` oc get all`{{execute}}

# See if a deployment Config is created 
`oc get dc ` {{execute}}
`oc describe dc ruby-ex ` {{execute}}

# Switch back to default project

`oc project default` {{execute}}
