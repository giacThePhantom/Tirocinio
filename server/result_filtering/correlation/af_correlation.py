#!/usr/bin/python3
import sys


def split_vcf(path):
    with open(path, 'r') as f:
        lines = [l.split('\t') for l in f if not l.startswith('##')]
    return lines

def read_pileup(path):
    res = {}
    for line in split_vcf(path):
        res[line[2]] = [line[15]]
    return res

def intersect(id_dict, path):
    for line in split_vcf(path):
        if line[2] in id_dict:
            id_dict[line[2]].append(line[15])
    return id_dict

if __name__ == "__main__":
    id_dict = read_pileup(sys.argv[1])
    intersect_dict = intersect(id_dict, sys.argv[2])
    for key in intersect_dict:
        if len(intersect_dict[key]) > 1:
            print("{},{},{}".format(key, intersect_dict[key][0], intersect_dict[key][1]))
