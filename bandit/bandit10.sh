#!/usr/bin/expect -f

spawn ssh -l bandit10 -p 2220 bandit.labs.overthewire.org
expect {
    "*yes/no*" { send "yes\r" ; exp_continue }
    "*assword:" { send "truKLdjsbJ5g7yyJ2X2R0o3a5HQJFuLk\r\r" ; }
}

expect "*\$ "
send "cat data.txt | base64 -d"

expect "*\$ "
send "exit\r"