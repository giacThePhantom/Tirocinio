#!/usr/bin/python3
import sys

if __name__ == "__main__":
    with open(sys.argv[1]+sys.argv[3], 'r') as f, open(sys.argv[2]+sys.argv[3], 'w') as w1:
        for line in f.readlines():
            content = line.split()
            if ',' in content[4]:
                for alt in content[4].split(','):
                    temp = content
                    temp[4] = alt
                    w1.write('\t'.join(temp)+'\n')
            else:
                w1.write(line)#, file=sys.argv[2])
