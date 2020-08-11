#!/usr/bin/expect -f

spawn ssh -l bandit17 -p 2220 bandit.labs.overthewire.org
expect {
    "*yes/no*" { send "yes\r" ; exp_continue }
    "*assword:" { send "xLYVMN9WE5zQ5vHacb0sZEVqbrp7nBTn\r" ; }
}

expect "*\$ "

send "diff passwords.old passwords.new\r"
expect "*\$ "

send "exit\r"
