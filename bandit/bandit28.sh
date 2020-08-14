#!/usr/bin/expect -f

spawn ssh -l bandit28 -p 2220 bandit.labs.overthewire.org
expect {
    "*yes/no*" { send "yes\r" ; exp_continue }
    "*assword: " { send "0ef186ac70e04ea33b4c1853d2526fa2\r" ; }
}


set pwd "0ef186ac70e04ea33b4c1853d2526fa2"


expect "*\$ "
send "rm -rf /tmp/throwaway\r"

expect "*\$ "
send "git clone ssh://bandit28-git@localhost/home/bandit28-git/repo /tmp/throwaway\r"

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
send "git log -p -- README.md\r"
sleep .5
send "q\r"

expect "*\$"
send "cd ..\r"

expect "*\$ "
send "rm -rf /tmp/throwaway\r"

expect "*\$ "
