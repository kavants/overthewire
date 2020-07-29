#!/usr/bin/expect -f

spawn ssh -l bandit15 -p 2220 bandit.labs.overthewire.org
expect {
    "*yes/no*" { send "yes\r" ; exp_continue }
    "*assword:" { send "BfMYroe26WYalil77FoDi9qh59eK5xNr\r" ; }
}
expect "*\$ "
send "openssl s_client -connect localhost:30001\r"
expect ":1\r"
send "BfMYroe26WYalil77FoDi9qh59eK5xNr\r"
expect "*\$ "

send "exit\r"