user ansible to manage user state on windows or linux.

command_lists:
    
    on linux:
      create_user
      remove_user
      ban_user
      unban_user
    
    on windows:
      create_user
      change_user_password

used to use except and shell-scripts To achieve the same effect.
both are available.

eaamples:


     ansible-playbook create_user.yaml --extra-vars "name=hupu password=123456" 
