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
set port "9005"
spawn ssh master -p $port
#这里就已经把问题处理掉了
:'
expect {:
    "(yes/no)" { send "yes\r"; exp_continue }
    "password:" { send "$password\r" }
}	
#expect：等待命令提示信息的出现，也就是捕捉用户输入的提示：
'
#test 
#expect "]*"
#send "touch /tmp/12.txt\r"

expect "]*"
send "useradd $username\r"

expect "]*"
send "passwd $username\r"

expect "*password:"
send "$userpasswd\r"

expect "*password:"
send "$userpasswd\r"

expect "]*"
send "su - hdfs\r"
expect "]*"
send "hdfs dfs -mkdir /user/$username\r"
expect "]*"
send "hdfs dfs -chown -R $username /user/$username\r"

expect "]*"
send "logout\r"
