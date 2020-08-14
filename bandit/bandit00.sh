#!/usr/bin/expect -f

#used to ssh and login
spawn ssh -l bandit0 -p 2220 bandit.labs.overthewire.org
expect {
    "*yes/no*" { send "yes\r" ; exp_continue }
    "*assword:" { send "bandit0\r" ; }
}

#display contents of the file
expect "*\$ "
send "cat readme\r"
expect "*\$ "

send "exit\r"
