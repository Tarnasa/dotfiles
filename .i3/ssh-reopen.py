#!/usr/bin/env python2
"""
This program allows the user to make an ssh connection
to the same destination as an existing ssh connection.
Using a either arg flags or a CLI.
"""

import os
import subprocess
import re
import shlex

TERMINAL = '/usr/bin/sakura -e \'tmux new-session \"{command}\"\''

# Get the output of ps and find ssh sessions
regex = re.compile(r'^.+?(ssh [0-9a-zA-Z].+)$')
lines = subprocess.check_output(['ps', 'aux'])
for line in lines.split('\n'):
    line = line.strip()
    match = regex.match(line)
    if match:
        command = ['nohup']
        command.extend(shlex.split(TERMINAL.format(command=match.group(1))))
        devnull = open(os.devnull, 'wb')
        print(command)
        subprocess.Popen(command, stdout=devnull, stderr=devnull)
        devnull.close()
        break

