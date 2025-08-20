import os, sys

def main():
    f = open("~/test")
    while (f):
        currentline = f.readline(x)
        for i in currentline:
            if (i == '@'):
                i.replace('@', '')
            else:
                pass
        x += 1

main()