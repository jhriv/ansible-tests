#!/bin/sh

role_path=roles
role=test
tar -C "$role_path" -czf "${role}".tar.gz "$role"
ansible-galaxy install "${role}".tar.gz --roles-path="$role_path"
