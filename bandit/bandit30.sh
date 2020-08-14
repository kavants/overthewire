#!/usr/bin/expect -f

spawn ssh -l bandit30 -p 2220 bandit.labs.overthewire.org
expect {
    "*yes/no*" { send "yes\r" ; exp_continue }
    "*assword: " { send "5b90576bedb2cc04c86a9e924ce42faf\r" ; }
}


set pwd "5b90576bedb2cc04c86a9e924ce42faf"


expect "*\$ "
send "rm -rf /tmp/throwawayy\r"

expect "*\$ "
send "git clone ssh://bandit30-git@localhost/home/bandit30-git/repo /tmp/throwawayy\r"

expect "*(yes/no)? "
send "yes\r"

expect "*: "
send "$pwd\r"

expect "*\$ "
send "cd /tmp/throwawayy\r"

expect "*\$ "
send "ls\r"

expect "*\$ "
send "cat README.md\r"

expect "*\$ "
send "git tag\r"

expect "*\$"
send "git show secret\r"

expect "*\$ "
send "cd ..\r"
expect "*\$ "
send "rm -rf /tmp/throwawayy\r"

expect "*\$ "
send "exit\r"
