#!/usr/bin/expect -f


#used to ssh and login
spawn ssh -l bandit1 -p 2220 bandit.labs.overthewire.org
expect {
    "*yes/no*" { send "yes\r" ; exp_continue }
    "*assword:" { send "boJ9jbbUNNfktd78OOpsqOltutMc3MY1\r" ; }
}
expect "*\$ "

#display contents of a file named -
send "cat ./-\r"
expect "*\$ "

send "exit\r"
