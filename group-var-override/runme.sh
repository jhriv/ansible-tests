#!/bin/sh

cd "$(dirname $0)" || exit 1
exec ansible-playbook -i hosts playbook.yml -e command_line_specific='"part of command line"'
