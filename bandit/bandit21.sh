#!/usr/bin/expect -f

spawn ssh -l bandit21 -p 2220 bandit.labs.overthewire.org
expect {
    "*yes/no*" { send "yes\r" ; exp_continue }
    "*assword: " { send "gE269g2h3mw3pwgrj0Ha9Uoqen1c9DGr\r" ; }
}


expect "*\$ "

send "cd /etc/cron.d/\r"

expect "*\$ "
send "ls -a\r"

expect "*\$ "
send "cat /etc/cron.d/cronjob_bandit22\r"

expect "*\$ "
send "cat /usr/bin/cronjob_bandit22.sh\r"

expect "*\$ "
send "cat /tmp/t7O6lds9S0RqQh9aMcz6ShpAoZKF7fgv\r"

expect "*\$ "
send "exit\r"