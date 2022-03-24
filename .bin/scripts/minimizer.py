#! /usr/bin/python

import i3ipc
import sys

from subprocess import Popen, PIPE

def scratch():
    return i3.get_tree().scratchpad()

def root():
    return i3.get_tree().root()

def dmenu(opts):
    args = ''
    for opt in opts:
        if opt != None:
            args += opt
            args += '\n'
    args = bytes(args, 'UTF-8')
    instance = Popen('dmenu',stdin=PIPE,stdout=PIPE)
    return instance.communicate(args)[0].decode('UTF-8').rstrip()

i3 = i3ipc.Connection()

mins = list(map(lambda x: x.name[:15],
    filter(lambda x: x.name, scratch().descendants())))
# for x in range(len(mins)):
#     if len(mins[x]) > 15:
#         mins[x] = mins[x][:13] + '...'
if mins:
    window = dmenu(mins)
if window:
    scratch().find_named(window)[0].command('scratchpad show; floating toggle')

# for ws in root().workspaces():
#     for con in ws.descendents():
#         if con.name:
#             print(con.name + ' on ws ' + str(ws.num))

try:
    scratch().find_named(sys.argv[1])[0].command('scratchpad show; floating toggle')
except IndexError:
    pass
