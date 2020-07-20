#!/usr/bin/expect -f

spawn ssh -l bandit8 -p 2220 bandit.labs.overthewire.org
expect {
    "*yes/no*" { send "yes\r" ; exp_continue }
    "*assword:" { send "cvX2JJa4CFALtqS87jk27qwqGhBM9plV\r" ; }
}

expect "*\$ "
send " cat data.txt | sort | uniq -u\r"

expect "*\$ "
send "exit\r"
