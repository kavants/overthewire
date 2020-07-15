#!/usr/bin/expect -f

spawn ssh -l bandit2 -p 2220 bandit.labs.overthewire.org
expect {
    "*yes/no*" { send "yes\r" ; exp_continue }
    "*assword:" { send "CV1DtqXWVFXTvM2F0k09SHz0YwRINYA9\r" ; }
}
expect "*\$ "

send "cat spaces\\ in\\ this\\ filename\r"
expect "*\$ "

send "exit\r"
