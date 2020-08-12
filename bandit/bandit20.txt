#!/usr/bin/expect -f

spawn ssh -l bandit20 -p 2220 bandit.labs.overthewire.org
expect {
    "*yes/no*" { send "yes\r" ; exp_continue }
    "*assword: " { send "GbKksEFF4yrVs6il55v6gwY5aVje5f0j\r" ; }
}


expect "*\$ "

send "echo \"GbKksEFF4yrVs6il55v6gwY5aVje5f0j\" | nc -l localhost -p 4000 &\r"
expect "*\$ "

send "./suconnect 4000\r"
expect "*\$ "

send "exit\r"
send "\r"
