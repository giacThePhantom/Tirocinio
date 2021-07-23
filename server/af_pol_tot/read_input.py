import argparse
from rs import RS

def define_args():
    parser = argparse.ArgumentParser(description = "This script will calculate difference in allelic expression between total and polisomial fraction across all the different conditions")
    parser.add_argument('-i', '--idfile', help = "Input id file", required = False, action = 'append')
    parser.add_argument('-c', '--mincoverage', help = "Input id file", required = True)
    parser.add_argument('-p', '--post', help = "Use post recalibration data", action = "store_true")
    return parser

def read_id(id_files, chrs, header = True):
    res = {}
    for ch in chrs:
        res[ch] = []
    for id_file in id_files:
        with open(id_file) as temp:
            for line in temp.readlines():
                data = line.split(' ')
                data[-1] = data[-1][:-1]
                res[data[0]].append(data[1])
    return res

def get_file_name(condition, frac, chrs, post, min_cov, rep):
    prefix = "/GROUPS/sharedRL/tirocinanti/giacomo/output/alignment/" + condition.replace('_', '/') + '/' + frac + "/rep{}-{}/rep{}{}_chr" + chrs + ".PILEUP.ASEQ"
    if post:
        last_folder = "post-recalibration-aseq"
        name_suffix = ".sorted.groups.dedup.splitted.realigned.recalibrated"
    else:
        last_folder = "aseq"
        name_suffix = ""
    return prefix.format(rep, last_folder, rep, name_suffix)

def get_file_data(file_name):
    res = {}
    with open(file_name):
        for line in data.readlines():
            data = line.split('\t')
            res[data[2]] = data[15]
    return res

def save_af(file_name):
    res = {}
    with open(file_name) as data:
        for line in data.readlines()[1:]:
            line_data = line.split('\t')
            res[line_data[2]] = [float(line_data[15]), int(line_data[16])]
    return res
