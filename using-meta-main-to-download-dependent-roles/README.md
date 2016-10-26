Using Meta Main to Download Dependent Roles
===========================================

Using `anible-galaxy` to install from local `.tar.gz` (_must_ be `.gz`. It does
choke on `.xz`) causes the role to be named the exact name of the tarball. It
will, however, download any required dependent roles. We can still use this to
our advantage.

```sh
role_path=roles
role=sample-role
tar -C "$role_path" -czf "${role}".tar.gz "$role"
ansible-galaxy install "${role}".tar.gz --roles-path="$role_path"
```
