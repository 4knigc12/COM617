#!/bin/bash

# exit if no container name provided as $1
[ "x$1" = 'x' ] && exit 1
# holds pid of the docker container
pid=''
# read the pid for container
pid=$(docker inspect -f '{{.State.Pid}}' "${1}" 2>/dev/null)
# if for whatevery reason we get pid 0 avoid setting routes
[ "x$pid" = 'x0' ] && pid=''
if [ "x$pid" != 'x' ] ; then
  # let the routing happen
  mkdir -p /var/run/netns
  ln -s /proc/$pid/ns/net /var/run/netns/$pid
  if [ "${1}" = 'debug-traffic-testing' ] ; then
      ip netns exec $pid ip route del default
      ip netns exec $pid ip route add default via 10.225.0.2
  fi
  if [ "${1}" = 'locust-traffic-testing' ] ; then
      ip netns exec $pid ip route del default
      ip netns exec $pid ip route add default via 10.225.0.2
  fi
  if [ "${1}" = 'nginx-traffic-testing' ] ; then
      ip netns exec $pid ip route del default
      ip netns exec $pid ip route add default via 10.228.0.2
  fi
fi
# clean up broken symlinks which occur when a container is stopped
# verify that your find supports -xtype l
find /var/run/netns -xtype l -exec rm -f '{}' \;
