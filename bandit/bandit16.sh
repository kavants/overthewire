#!/usr/bin/expect -f

spawn ssh -l bandit16 -p 2220 bandit.labs.overthewire.org
expect {
    "*yes/no*" { send "yes\r" ; exp_continue }
    "*assword:" { send "cluFn7wTiGryunymYOu4RcffSxQluehd\r" ; }
}

expect "*\$ "

send "nmap localhost -p 31000-32000 -A\r"
expect "*\$ "
sleep 100

send "echo cluFn7wTiGryunymYOu4RcffSxQluehd | openssl s_client -connect localhost:31790 -quiet | tail -n 2 > /tmp/bandit17.key\r"
expect "*\$ "

send "chmod 600 /tmp/bandit17.key\r"

send "ssh -i /tmp/bandit17.key -o StrictHostKeyChecking=no bandit17@localhost\r"
expect "*\$ "

send "cat /etc/bandit_pass/bandit17\r"
expect "*\$ "
send "exit\r"
expect "*\$ "

send "rm -f /tmp/bandit17.key"
expect "*\$ "

send "exit\r"
