#!/usr/bin/python3
from read_data_from_csv import get_data, get_three_prime
from rs import RS
import sys
from itertools import combinations
from scipy.stats import wilcoxon, ttest_ind, ttest_rel
import statsmodels.stats.multitest
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
        return function(x, y)
    else:
        return None, None
def get_values(rs, con, function):
    res = []
    for rsid in rs:
        stat, pvalue = stat_for_rs(rsid, con, function)
        if pvalue != None:
            res.append([rsid.rs, stat, pvalue])
    return res

def multitestcorrection(stats):
    pvalues = []
    for x in stats:
        pvalues.append(x[2])
    temp = statsmodels.stats.multitest.multipletests(pvalues, method = 'fdr_bh')
    for x in range(len(temp[1])):
        if temp[0][x] == True:
            print(stats[x][0], file = sys.stderr)
        stats[x][2] = temp[1][x]

def stat_to_dict(stats):
    res = {}
    for stat in stats:
        res[stat[0]] = stat[2]
    return res

def get_stats(conditions, op, rs, three_prime):
    res = []
    for con in conditions:
        filtered = get_rs(rs, con, 3, three_prime)
        res.append(stat_to_dict(get_values(filtered, con, op)))
    return res

def get_new_header(conditions, reps, fracs, pvalue_suffix):
    header = "chr,id,"
    for con in conditions:
        for rep in reps:
            for frac in fracs:
                header += con + '_' + rep + '_' + frac + ','
    for con in conditions:
        header += con + pvalue_suffix + ","
    return header[:-1]


if __name__ == '__main__':
    conditions = ['scr_DMSO', 'scr_NUTLIN', 'shDHX30_DMSO', 'shDHX30_NUTLIN', 'shPCBP2_DMSO', 'shPCBP2_NUTLIN']
    reps = ['1', '2', '3', '4', 'AVG']
    fracs = ['POL', 'TOT', 'TOT - POL', 'POL / TOT']
    rs = get_data(sys.argv[1], conditions, fracs, reps)
    three_prime = None
    if len(sys.argv) > 2:
        three_prime = get_three_prime(sys.argv[2])



    #filtered = get_rs(rs, conditions[0], 3, three_prime)
    #stats = get_values(filtered, conditions[0], ttest_rel)
    ##multitestcorrection(stats)
    #header = "chr,id,"
    #for con in conditions:
    #    for rep in reps:
    #        for frac in fracs:
    #            header += con + '_' + rep + '_' + frac + ','
    #header += conditions[0] + "_minRep_3_Pvalues"
    #print(header)
    #stats = stat_to_dict(stats)
    stats = get_stats(conditions, ttest_rel, rs, three_prime)
    print(get_new_header(conditions, reps, fracs, "_minRep_3_Pvalues"))
    for rsid in rs:
        data = rs[rsid].to_csv_str()
        for stat in stats:
            if stat.get(rsid):
                data += str(stat[rsid]) + ','
            else:
                data += ','
        print(data[:-1])
