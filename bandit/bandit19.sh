#!/usr/bin/expect -f

spawn ssh -l bandit19 -p 2220 bandit.labs.overthewire.org
expect {
    "*yes/no*" { send "yes\r" ; exp_continue }
    "*assword: " { send "IueksS7Ubh8G3DCwVzrTd8rAVOwq3M5x\r" ; }
}


expect "*\$ "

send "./bandit20-do cat /etc/bandit_pass/bandit20\r"
expect "*\$ "

send "exit\r"
