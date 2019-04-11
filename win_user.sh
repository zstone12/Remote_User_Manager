#!/bin/bash

# use ansible create user and if user exists change user password
ansible win2 -m win_user -a "name=xiyou password=$1 groups='Administrators,Remote Desktop Users' user_cannot_change_password=yes"

