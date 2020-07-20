#!/usr/bin/expect -f

spawn ssh -l bandit3 -p 2220 bandit.labs.overthewire.org
expect {
    "*yes/no*" { send "yes\r" ; exp_continue }
    "*assword:" { send "UmHadQclWmgdLOKQ3YNgjWxGoRMb5luK\r" ; }
}
expect "*\$ "

send "ls -a\r"
expect "*\$ "

send "cat .hidden"
expect "*\$ "

send "exit\r"
