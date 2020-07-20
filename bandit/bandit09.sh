#!/usr/bin/expect -f

spawn ssh -l bandit9 -p 2220 bandit.labs.overthewire.org
expect {
    "*yes/no*" { send "yes\r" ; exp_continue }
    "*assword:" { send "UsvVyFSfZZWbi6wgC7dAFyFuR6jQQUhR\r" ; }
}

expect "*\$ "
send "strings data.txt | grep ==\r"

expect "*\$ "
send "exit\r"