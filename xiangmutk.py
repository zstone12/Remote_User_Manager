import tkinter as tk
from tkinter.messagebox import *
import os

import youjian

root = tk.Tk()

button_one_page = tk.Toplevel()
username_label = tk.Label(button_one_page, text='用户名:')
username_label.grid(row=0, column=0)

password_label = tk.Label(button_one_page, text='密码:')
password_label.grid(row=1, column=0)

password_label = tk.Label(button_one_page, text='用户邮箱:')
password_label.grid(row=2, column=0)

username = tk.StringVar()
username_entry = tk.Entry(button_one_page, textvariable=username)
username_entry.grid(row=0, column=1)

password = tk.StringVar()
password_entry = tk.Entry(button_one_page, textvariable=password, show='*')
password_entry.grid(row=1, column=1)

email = tk.StringVar()
email_entry = tk.Entry(button_one_page, textvariable=email)
email_entry.grid(row=2, column=1)


def confirm():
    # 通过参数运行脚本
    print("passwd:"+password_entry.get())
    print("username:"+username_entry.get())
    # 执行脚本
    str = '/Users/zhoumeng/Desktop/create_user.sh' + ' ' + username_entry.get() + ' ' + password_entry.get()
    print(str)
    os.system(str)
    youjian.mail(email_entry.get())
    showinfo(message='创建用户成功')


button_confirm = tk.Button(button_one_page, command=confirm, text='确认').grid(row=1, column=2)
button_one_page.withdraw()


def button_one_command():
    pass
    root.withdraw()
    button_one_page.deiconify()


# main_menu UI
button_one = tk.Button(root, text="申请资源一(hadoop)", command=button_one_command)
button_one.grid(column=0, row=0)

button_one = tk.Button(root, text="申请资源二(linuxGPU)")
button_one.grid(column=0, row=1)

button_one = tk.Button(root, text="申请资源三(windowsGPU)")
button_one.grid(column=0, row=2)

button_one = tk.Button(root, text="申请资源四")
button_one.grid(column=0, row=3)

root.mainloop()
