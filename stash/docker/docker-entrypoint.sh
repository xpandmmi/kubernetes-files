#!/bin/bash
set -e

ATSTASH=/opt/atlassian/stash/latest/bin/start-stash.sh

# if command starts with an option, prepend mysqld
if [ "${1:0:1}" = '-' ]; then
  set -- $ATSTASH "$@"
fi

$ATSTASH -fg
