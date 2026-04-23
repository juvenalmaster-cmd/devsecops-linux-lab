""" import os

user_input = input("Enter command: ")
os.system(user_input) """


import subprocess

command = ["ls"]
subprocess.run(command)
