#!/usr/bin/expect -f
# Backup all Cisco switches
set Username "admin"
set Password "COM617Team12"
set TFTPHost 10.0.0.111
set timeout 20
set DATE [exec date +%F-%H%M%S]

set hosts {
    R1
    R2
    R3
    R4
}

foreach host $hosts {
    spawn ssh -o "StrictHostKeyChecking no" $Username@$host
    expect "*assword: "
    send "$Password\r"
    expect ">"
    send "en\r"
    expect "*assword: "
    send "$Password\r"
    expect "#"
    send "write\r"
    expect "\[OK\]"
    send "copy running-config tftp://$TFTPHost/$host/$host-$DATE.cfg\r"
    expect "Address or name of remote host*?"
    send "\r"
    send "\r"
    send "exit\r"
    expect "#"
    send "exit\r"
}
exit
