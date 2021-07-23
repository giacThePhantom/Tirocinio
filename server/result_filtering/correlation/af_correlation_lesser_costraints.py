#!/usr/bin/python3
import sys


def split_pileup(path):
    with open(path, 'r') as f:
        lines = [l.split('\t') for l in f if not l.startswith('chr')]
    return lines

def get_data_from_line(line):
    return [line[2], float(line[15]), float(line[16])]

def check_data(data, cov):
    return data[2] >= cov

def read_pileup(path, cov):
    res = {}
    for line in split_pileup(path):
        data = get_data_from_line(line)
        if check_data(data, cov):
            res[data[0]] = data[1]
    return res

def snp_in_range(key, id_dict, bottom_af, top_af):
   return id_dict[key] <= top_af and id_dict[key] >= bottom_af


def check_print(key, first_dict, second_dict, bottom_af, top_af):
    return (key in second_dict) and (snp_in_range(key, first_dict, bottom_af, top_af) or snp_in_range(key, second_dict, bottom_af, top_af))


if __name__ == "__main__":
    first_file = sys.argv[1]
    second_file = sys.argv[2]
    if len(sys.argv) <= 3:
        bottom_af = 0
        top_af = 1
        min_cov = 0
    else:
        bottom_af = float(sys.argv[3])
        top_af = float(sys.argv[4])
        min_cov = float(sys.argv[5])
    print("{},{},{}".format(bottom_af, top_af, min_cov))

    first_dict = read_pileup(first_file, min_cov)
    second_dict = read_pileup(second_file, min_cov)

    for key in first_dict:
        if check_print(key, first_dict, second_dict, bottom_af, top_af):
            print("{},{},{}".format(key, first_dict[key], second_dict[key]))
