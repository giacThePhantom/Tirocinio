#!/usr/bin/python3
from read_data_from_csv import get_data, get_three_prime
from rs import RS
import sys
from itertools import combinations


def count_rs(rs, conditions, nrep, final_path, three_prime):
    res = 0
    # id_file_name = '/home/giacomo/Universita/Tesi/DatiRaccolti/hetero/output/rsid_list/' + final_path + '/'
    # for con in conditions:
    #     id_file_name += con + '.'
    # id_file_name += str(nrep)
    # with open(id_file_name, 'w') as id_file:
    for rsid in rs:
        enough = True
        for con in conditions:
            if not rs[rsid].enough_replicate_for_condition(con, nrep):
                enough = False
        if three_prime:
            if enough and three_prime.get(rsid):
                res += 1
                    # id_file.writelines(rsid + '\n')
        elif enough:
            res +=1
    return res

def from_con_to_label(con):
    res = ""
    for c in con:
        if c == "scr_DMSO":
            res += "1"
        if c == "scr_NUTLIN":
            res += "2"
        if c == "shDHX30_DMSO":
            res += "3"
        if c == "shDHX30_NUTLIN":
            res += "4"
        if c == "shPCBP2_DMSO":
            res += "5"
        if c == "shPCBP2_NUTLIN":
            res += "6"
        res += '-'
    return res[:-1]


if __name__ == '__main__':
    conditions = ['scr_DMSO', 'scr_NUTLIN', 'shDHX30_DMSO', 'shDHX30_NUTLIN', 'shPCBP2_DMSO', 'shPCBP2_NUTLIN']
    reps = ['1', '2', '3', '4', 'AVG']
    fracs = ['TOT', 'POL', 'TOT - POL', 'POL / TOT']
    rs = get_data(sys.argv[1], conditions, fracs, reps)
    c = set(conditions)
    c = sum(map(lambda r: list(combinations(c,r)), range(1,len(c) + 1)), [])
    three_prime = None
    if len(sys.argv) > 2:
        three_prime = get_three_prime(sys.argv[2])
    for i in range(len(c)):
        c[i] = list(c[i])
    final_path = '_'.join(sys.argv[1].split('.')[-2].split('_')[-2:])
    print("conditions,min_rep,count")
    for cons in c:
        for rep in range(1,5):
            print(from_con_to_label(cons), rep, count_rs(rs, cons, rep, final_path, three_prime), sep = ',')
