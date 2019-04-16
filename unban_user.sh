#!/usr/bin/expect -f
 
set timeout 5
##################################
#				禁止用户          #
#								#
#								#
#################################

#[lindex $argv 0]接受到的第一个参数
set username [lindex $argv 0]

#shell注释
set port [lindex $argv 1]
spawn ssh master -p $port

expect "]*"
send "chsh $username -s /bin/bash \r"

expect "]*"
send "logout\r"

