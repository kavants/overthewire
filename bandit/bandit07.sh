#!/usr/bin/expect -f

spawn ssh -l bandit7 -p 2220 bandit.labs.overthewire.org
expect {
    "*yes/no*" { send "yes\r" ; exp_continue }
    "*assword:" { send "HKBPTKQnIay4Fw76bEy8PVxKEDQRKTzs\r" ; }
}

expect "*\$ "
send "grep millionth data.txt\r"
expect "*\$ "
send "exit\r"