# OverTheWire: Bandit

<a href="https://overthewire.org/wargames/">OverTheWire</a> is a wargame (cyber-security challenge or mind sport) using Linux CLI.

Bandit is one of the multi-level challenges that can be found on their site.

The challenges require you to uncover the password for the user for the next "level" (initially ssh as the user bandit0, uncover the password for bandit1, etc.)

I've completed all 32 (as of this push) challenges at this level and uploaded my answers as expect scripts.

Expect is a program that automates interactions. Instructions to install can be found <a href="https://www.geeksforgeeks.org/expect-command-in-linux-with-examples">here</a>. 
For more information, see the man page <a href="https://linux.die.net/man/1/expect">here</a>. 

The scripts are not 100% straight forward and include the steps one would logically take to get to the answer. For example, there are instances where I would need to cat
a file to get information. Of course, after the fact I would know the contents and could optimize the script a little better but I thought it was important to leave these in.

I"ve decided to add comments to the scripts to detail my solutions and explain what the script is doing. If you're seeing this, I'm not done yet. :)
