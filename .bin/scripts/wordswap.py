import json
google = '/home/jack/.bin/scripts/google-10000-english-usa.txt'
full = '/home/jack/.bin/scripts/words_alpha.txt'
hk = '/home/jack/.bin/scripts/wiki-100k.txt'

d = open(full,'r').read().split('\n')
w = []
s = []
for x in d:
    if (len(x) > 7):
        w.append(x.lower().strip("'"))

def m(x):
    return x[1:-1]

w.sort(key=m)

for x in range(len(w) - 1):
    if (m(w[x]) == m(w[x+1]) and w[x][0] != w[x+1][0] and w[x][-1] != w[x+1][-1]):
        s.append(w[x])
        s.append(w[x+1])

y = len(s)-1
for x in range(len(s)):
    z = y-x
    if (s[z] == s[z-1]):
        del s[z]

