#!/usr/bin/python3
import sys
def read_chr_file(filename, res):
    with open(filename, "r") as temp:
        for line in temp.readlines():
            fields = line.split("\t")
            res[fields[2]] = [fields[15], 0]

def read_recalibrated_file(filename, res):
    with open(filename, "r") as temp:
        for line in temp.readlines():
            fields = line.split("\t")
            if fields[2] not in res:
                res[fields[2]] = [0, fields[15]]
            else:
                res[fields[2]][1] = fields[15]

if __name__ == "__main__":
    res = {}
    chrs = ['1', '2', '3', '4', '5', '6', '7', '8', '9', '10', '11', '12', '13', '14', '15', '16', '17', '18', '19', '20', '21', '22', 'X', 'MT']
    condition = "/GROUPS/sharedRL/tirocinanti/giacomo/output/alignment/" + sys.argv[1]
    rep = sys.argv[2]
    if len(sys.argv) < 4:
        constraint = ""
    else:
        constraint = "." + sys.argv[3] + ".filtered"
    for chr in chrs:
        read_chr_file(condition + "rep{}-aseq/rep{}_chr{}.PILEUP.ASEQ{}".format(rep, rep, chr, constraint), res)
        read_recalibrated_file(condition + "rep{}-post-recalibration-aseq/rep{}.sorted.groups.dedup.splitted.realigned.recalibrated_chr{}.PILEUP.ASEQ{}".format(rep, rep, chr, constraint), res)
    for key in res:
        print("{},{},{}".format(key, res[key][0], res[key][1]))
