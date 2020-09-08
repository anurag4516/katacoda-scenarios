# Case 1: There is no explicit request

`cat pod1.yml`{{execute}}
`oc create -f pod1.yml`{{execute}}
As you can see, our definition didn't pass the check by the quota because it explicitly limits the requested amount of CPU and RAM, but we didn't specify them.

# Case 2: Specify limits exlicitly and in range

`cat pod2.yml`{{execute}}
`oc create -f pod2.yml`{{execute}}

The pod was created successfully, as expected. At this point, we can take a look at how much of our quota was consumed:

`oc describe quota/my-quota`{{execute}}

# Case 3 Specify limits but exceed CPU Quota 

`cat pod3.yml`{{execute}}
`oc create -f pod3.yml`{{execute}}

You will Again see that it fails 
