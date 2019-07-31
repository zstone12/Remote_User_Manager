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

examples:

     ansible-playbook create_user.yaml --extra-vars "hosts=linux01 name=zhihu  password={{ '123456' | password_hash('sha512', 'mysecretsalt') }}"
     ansible-playbook ban_user.yaml --extra-vars "hosts=linux01 name=zhihu"
     ansible-playbook unban_user.yaml --extra-vars "hosts=linux01 name=zhihu"
     ansible-playbook remove_user.yaml  --extra-vars "hosts=linux01 name=zhihu"
     ansible-playbook win_user.yaml --extra-vars "host=windows02 user=xupt password=12345"
