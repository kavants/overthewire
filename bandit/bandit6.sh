#!/usr/bin/expect -f

spawn ssh -l bandit6 -p 2220 bandit.labs.overthewire.org
expect {
    "*yes/no*" { send "yes\r" ; exp_continue }
    "*assword:" { send "DXjZPULLxYr17uwoI01bNLQbtFemEgo7\r" ; }
}

expect "*\$ "
send "cat `find / -size 33c -group bandit6 -user bandit7 2>/dev/null`\r"
expect "*\$ "
send "exit\r"