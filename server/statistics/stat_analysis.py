#!/usr/bin/python3
from read_data_from_csv import get_data, get_three_prime
from rs import RS
import sys
from itertools import combinations
from scipy.stats import wilcoxon, ttest_ind, ttest_rel


def get_rs(rs, condition, nrep, three_prime):
    res = []
    for rsid in rs:
        if rs[rsid].enough_replicate_for_condition(condition, nrep):
            if (three_prime and three_prime.get(rsid)) or not three_prime:
                    res.append(rs[rsid])
    return res

def stat_for_rs(rsid, con, function):
    x, y = [], []
    reps = ['1', '2', '3', '4']
    for rep in reps:
        pol = rsid.get_value(con, rep, 'POL')
        tot = rsid.get_value(con, rep, 'TOT')
        if pol and tot:
            x.append(tot)
            y.append(pol)
    doable = False
    for i in range(len(x)):
        if x[i] - y[i] != 0:
            doable = True
    if doable:
        if rsid.rs == "rs2272757":
            print(x,y)
            print(ttest_rel(x,y))
            print(wilcoxon(x,y))
            print(rsid.rs)
            exit()
        return wilcoxon(x, y)
    else:
        return "Could not get values", "x - y = 0 for all replicates"

def get_values(rs, con, function):
    res = {}
    for rsid in rs:
        stat, pvalue = stat_for_rs(rsid, con, function)
        res[rsid.rs] = [stat, pvalue]
    return res


if __name__ == '__main__':
    conditions = ['scr_DMSO', 'scr_NUTLIN', 'shDHX30_DMSO', 'shDHX30_NUTLIN', 'shPCBP2_DMSO', 'shPCBP2_NUTLIN']
    reps = ['1', '2', '3', '4', 'AVG']
    fracs = ['TOT', 'POL', 'TOT - POL', 'POL / TOT']
    rs = get_data(sys.argv[1], conditions, fracs, reps)
    three_prime = None
    if len(sys.argv) > 2:
        three_prime = get_three_prime(sys.argv[2])
    rs = get_rs(rs, conditions[0], 3, three_prime)
    stats = get_values(rs, conditions[0], ttest_rel)
    print('id,statistic,pvalue')
    for stat in stats:
        print(stat, stats[stat][0], stats[stat][1], sep = ',')
