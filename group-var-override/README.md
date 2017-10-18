Group Variable Override
=======================

What happens when a variable defined in "all" is also defined as part of a group? What happens when a variable defined in a group is also defined as part of a host? What happens when a variable is defined in all three locations?

What happens when include_vars is called in a playbook?

Hypothesis:

The most specific variable will will be defined, overriding the more generic definitions

* Command line beats include_vars
* include_vars beats host
* Host beats group
* Group beats "all"

Test:

`runme.sh`

Result:

* NB: "group2_specific" was never defined outside of group_vars/all

```
TASK [Print all the vars and values] *****************************************************************
ok: [host1] => (item=all_specific) => {
    "item": "all_specific",
    "msg": "all_specific -> part of all"
}
ok: [host1] => (item=group1_specific) => {
    "item": "group1_specific",
    "msg": "group1_specific -> part of group1"
}
ok: [host1] => (item=group2_specific) => {
    "item": "group2_specific",
    "msg": "group2_specific -> part of all"
}
ok: [host1] => (item=host1_specific) => {
    "item": "host1_specific",
    "msg": "host1_specific -> part of host1"
}
ok: [host1] => (item=included_specific) => {
    "item": "included_specific",
    "msg": "included_specific -> part of included"
}
```
