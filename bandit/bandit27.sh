#!/usr/bin/expect -f

spawn ssh -l bandit27 -p 2220 bandit.labs.overthewire.org
expect {
    "*yes/no*" { send "yes\r" ; exp_continue }
    "*assword: " { send "3ba3118a22e93127a4ed485be72ef5ea\r" ; }
}

set pwd "3ba3118a22e93127a4ed485be72ef5ea"

expect "*\$ "
send "rm -rf /tmp/throwaway\r"

expect "*\$ "
send "git clone ssh://bandit27-git@localhost/home/bandit27-git/repo /tmp/throwaway\r"

expect "*(yes/no)? "
send "yes\r"

expect "*: "
send "$pwd\r"

expect "*\$ "
send "ls /tmp/throwaway\r"

expect "*\$ "
send "cat /tmp/throwaway/README\r"

expect "*\$ "
send "rm -rf /tmp/throwaway\r"

expect "*\$ "