#!/usr/bin/expect -f

spawn ssh -l bandit24 -p 2220 bandit.labs.overthewire.org
expect {
    "*yes/no*" { send "yes\r" ; exp_continue }
    "*assword: " { send "UoMYTrfrBFHyQXmg6gzctqAwOmw1IohZ\r" ; }
}

set pwd "UoMYTrfrBFHyQXmg6gzctqAwOmw1IohZ"

expect "*\$ "
send "nc localhost 3002\r"

expect "*\$ "
send "for i in \$(seq -f \"%04g\" 0 9999); do echo $pwd; done | uniq;\r"

expect "*\$ "
send "exit\r"