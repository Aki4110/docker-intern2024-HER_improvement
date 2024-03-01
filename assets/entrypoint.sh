#!/bin/bash
USER_ID=${LOCAL_UID:-9001}
GROUP_ID=${LOCAL_GID:-9001}
UNAME="rl-spring-seminor"
echo "Starting with USER_NAME: $UNAME ($USER_ID:$GROUP_ID)"
usermod -o -u $USER_ID -m -d /home/$UNAME $UNAME
groupmod -g $GROUP_ID $UNAME
exec /usr/sbin/gosu $UNAME "$@"
