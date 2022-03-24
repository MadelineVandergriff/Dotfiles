import subprocess
import string

conv = str.maketrans("", "", string.punctuation)

def getRarity(word):
    num = subprocess.run("cat ~/count.txt | egrep '^" + word.lower().translate(conv) + "\\s' | awk '{print $2}'", shell=True, stdout=subprocess.PIPE, text=True).stdout.strip('\n')
    if (num == ""):
        num = 999999999
    return int(num)

lookup = {"nope": 999999999, "pe": 999999999, "npe": 999999999, "nopwe": 999999999, "nopbrbrbe": 999999999, "nopccce": 999999999, "noccpe": 999999999, "nopce": 999999999, "noqwpe": 999999999, "nopuye": 999999999, "nopje": 999999999, "noawdsdpe": 999999999, "nodpe": 999999999, "noawd": 999999999, "wdawf": 999999999};

def tryAdd(word):
    rarity = getRarity(word)
    curMax = max(lookup, key=lookup.get)
    if (rarity < lookup[curMax]):
        del lookup[curMax]
        lookup[word] = rarity

