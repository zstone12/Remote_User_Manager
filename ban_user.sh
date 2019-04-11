#!/usr/bin/expect -f
 
set timeout 5
##################################
#				创建用户          #
#								#
#								#
#################################

#[lindex $argv 0]接受到的第一个参数
set username [lindex $argv 0]

#shell注释
#准备把poot改为第三个参数
set port [lindex $argv 1]
spawn ssh master -p $port


expect "]*"
send "chsh $username -s /sbin/nologin \r"

expect "]*"
send "logout\r"

