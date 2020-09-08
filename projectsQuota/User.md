# Limit ranges
This is another way of control resource allocation in OpenShift at the project level, but unlike ResourceQuotas, they are different in certain ways:

They are applied to individual pods, containers, images, or image streams
They don't control some resources such as secrets, ConfigMaps, ResourceQuotas, services, and ReplicationControllers
They can be created from a raw definition only
Depending on the type of resource they are applied to, LimitRanges control various computing resources and objects

Pods and containers can explicitly state the amount of CPU and/or RAM they need and their limits, and LimitRanges takes care that they don't fall outside certain boundaries. Also, LimitRanges may provide defaults for a requested number of resources and their limits if they are not specified.

## Delete previous quotas 
`oc delete all --all`{{execute}}
`oc delete quota/my-quota`{{execute}}

## View limits
`cat limits.yml`{{execute}}
`oc create -f limits.yml`{{execute}}

Note: There are also the spec.limits[].default and spec.limits[].defaultRequest parameters, which determine the amount of CPU/RAM a container is limited to use and the amount it requests by default, respectively. Since we didn't specify them explicitly, they default to the same maximum value

## View Pod which exceeds limit
The next step is to create a pod that requests a specific amount of computing resources and sets limits on their usage for itself. Prepare the following pod definition:
`cat pod4.yml`{{execute}}
`oc create -f pod4.yml`{{execute}}

It throws error
As you might expect after looking at the pod's definition, the operation was rejected because the pod's request and limit ranges violate the policy defined earlier.

Note: Minimum boundaries are also enforced.
## View Pod which is in limit
`cat pod5.yml`{{execute}}
`oc create -f pod5.yml`{{execute}}

Note: LimitRanges are considered a separate kind of resource as well, like templates, ConfigMaps, and ResourceQuotas, so they must be deleted by issuing a separate command.
