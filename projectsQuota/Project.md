# Create a new Project 

`oc new-project advanced --display-name='My Project' --description='cool project owned by myuser `{{execute}}

One of the main ideas behind OpenShift projects in multi-tenant environments is the need to limit resource consumption at a more granular level than just a whole cluster, providing operations with the ability to scope such limitations to organizations and departments.

OpenShift provides two mechanisms for setting limits on resource consumption in a cluster:

ResourceQuota
LimitRanges

# Controlling resource consumption using ResourceQuotas
ResourceQuota can be used to control the number of API resources that can be created, or the amount of CPU, memory, and storage consumed by pods in the same project the quotas were defined in. Essentially, they determine the capacity of a project

Note: If CPU/memory or limits.cpu/limits.memory are managed by quotas, then all pods in the same project must specify requests/limits for the respective computing resources.

## Create Quota
`oc create quota my-quota --hard=cpu=500m,memory=256Mi,pods=1,resourcequotas=1`{{execute}}

`oc describe quota/my-quota`{{execute}}

By creating this quota, we have set the limits of 500 CPU millicores (half-core), 256Mi requested RAM, 1 pod, and 1 ResourceQuota on the current project. Let's see if the quota is in effect.

### Clone project
`git clone https://github.com/cloudpassion1801/quotas.git`{{execute}}
`cd quotas`{{execute}}

