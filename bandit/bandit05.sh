#!/usr/bin/expect -f

spawn ssh -l bandit5 -p 2220 bandit.labs.overthewire.org
expect {
    "*yes/no*" { send "yes\r" ; exp_continue }
    "*assword:" { send "koReBOKuIDDepwhWk7jZC0RTdopnAYKh\r" ; }
}

expect "*\$ "
send "find . -type f -size 1033c | { read -r first _; cat \$first; }\r"

expect "*\$ "
send "exit\r"