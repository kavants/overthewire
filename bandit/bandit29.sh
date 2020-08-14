#!/usr/bin/expect -f

spawn ssh -l bandit29 -p 2220 bandit.labs.overthewire.org
expect {
    "*yes/no*" { send "yes\r" ; exp_continue }
    "*assword: " { send "bbc96594b4e001778eee9975372716b2\r" ; }
}


set pwd "bbc96594b4e001778eee9975372716b2"


expect "*\$ "
send "rm -rf /tmp/throwaway\r"

expect "*\$ "
send "git clone ssh://bandit29-git@localhost/home/bandit29-git/repo /tmp/throwaway\r"

expect "*(yes/no)? "
send "yes\r"

expect "*: "
send "$pwd\r"

expect "*\$ "
send "cd /tmp/throwaway\r"

expect "*\$ "
send "ls\r"

expect "*\$ "
send "cat README.md\r"

expect "*\$ "
send "git branch -a\r"

expect "*\$"
send "git checkout dev\r"
expect "*\$ "
send "cat README.md\r"

expect "*\$ "
send "cd .."
expect "*\$ "
send "rm -rf /tmp/throwaway\r"

expect "*\$ "
send "exit\r"
