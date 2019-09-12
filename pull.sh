#!/usr/bin/expect -f

set timeout 30;

set code [lindex $argv 0]
set repo [lindex $argv 1]
set password [lindex $argv 2] 
set azurePassword [lindex $argv 3] 

spawn git -C $repo pull

expect "Enter passphrase*"

send -- "$password\r"

expect "Verification code*"

send -- "$code\r"

expect ".cpp.nonlive's password*"

send -- "$azurePassword\r"
 
#expect ".cpp.nonlive's password*"
expect "Enter passphrase*"

send -- "$password\r"
 
interact
