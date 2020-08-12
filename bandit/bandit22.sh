#!/usr/bin/expect -f

spawn ssh -l bandit22 -p 2220 bandit.labs.overthewire.org
expect {
    "*yes/no*" { send "yes\r" ; exp_continue }
    "*assword: " { send "Yk7owGAcWjwMVRwrTesJEwB7WVOiILLI\r" ; }
}
set myname "bandit23"

expect "*\$ "

send "cd /etc/cron.d/\r"

expect "*\$ "
send "ls -a\r"

expect "*\$ "
send "cat cronjob_bandit23\r"

expect "*\$ "
send "cat cronjob_bandit23.sh\r"

expect "*\$ "
send "echo I am user $myname | md5sum | cut -d ' ' -f 1\r"

expect "*\$ "
send "exit\r"