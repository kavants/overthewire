#!/usr/bin/expect -f

spawn ssh -l bandit14 -p 2220 bandit.labs.overthewire.org
expect {
    "*yes/no*" { send "yes\r" ; exp_continue }
    "*assword:" { send "4wcYUJFw0k0XLShlDzztnTBHiqxU3b3e\r" ; }
}

expect "*\$ "
send "echo \"4wcYUJFw0k0XLShlDzztnTBHiqxU3b3e\" | nc localhost 30000\r"


expect "*\$ "
send "exit\r"