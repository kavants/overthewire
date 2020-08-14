#!/usr/bin/expect -f

spawn ssh -l bandit31 -p 2220 bandit.labs.overthewire.org
expect {
    "*yes/no*" { send "yes\r" ; exp_continue }
    "*assword: " { send "47e603bb428404d265f59c42920d81e5\r" ; }
}

set pwd "47e603bb428404d265f59c42920d81e5"


expect "*\$ "
send "rm -rf /tmp/throwaway1\r"

expect "*\$ "
send "git clone ssh://bandit31-git@localhost/home/bandit31-git/repo /tmp/throwaway1\r"

expect "*(yes/no)? "
send "yes\r"

expect "*: "
send "$pwd\r"

expect "*\$ "
send "cd /tmp/throwaway1\r"

expect "*\$ "
send "ls\r"

expect "*\$ "
send "cat README.md\r"

expect "*\$ "
send "echo \"May I come in?\"> key.txt\r"

expect "*\$"
send "git add -f key.txt\r"

expect "*\$ "
send "git commit -m \"Unlocking repo\"\r"

expect "*\$ "
send "git push\r"

expect "*(yes/no)? "
send "yes\r"

expect "*: "
send "$pwd\r"

expect "*\$ "
send "cd ..\r"
expect "*\$ "
send "rm -rf /tmp/throwaway1\r"

expect "*\$ "
send "exit\r"
