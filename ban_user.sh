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
set userpasswd [lindex $argv 1]

#准备把poot改为第三个参数
set port "9005"
spawn ssh master -p $port


expect "]*"
send "chsh $username -s /sbin/nologin \r"

expect "]*"
send "logout\r"

