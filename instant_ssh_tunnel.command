#!/bin/bash
myInterface="Wi-Fi" # Add your interface
host="user@hostname"
port="8080"

declare -i pid

function cleanup {
  echo "Turning off socks for $myInterface and killing process $pid"
  networksetup -setsocksfirewallproxystate $myInterface off
  kill -9 $pid;
}
setpid () {
   echo "Started ssh tunnel with pid $1"
   pid=$1
}

trap cleanup EXIT

ssh -D $port -N $host & setpid $!
networksetup -setsocksfirewallproxystate $myInterface on &
networksetup -setsocksfirewallproxy $myInterface localhost $port &
wait
