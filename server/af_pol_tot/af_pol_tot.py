#!/usr/bin/python3

from read_input import define_args, read_id, get_file_data, get_file_name, save_af
from rs import RS

def init_RS_dict(id_dict, chrs, conditions, reps, fractions):
    res = {}
    for ch in id_dict:
        res[ch] = {}
        for rs in id_dict[ch]:
            res[ch][rs] = RS(rs, ch, conditions, reps, fractions)
    return res

def get_all_rs(af_dict, conditions, fracs, reps, ch):
    res = {}
    for rs in af_dict:
        res[rs] = RS(rs, ch, conditions, reps, fracs)
    return res


def add_data(RS_ch_dict, af_dict, condition, frac, rep, min_cov):
    for key in af_dict:
        if RS_ch_dict.get(key) and af_dict[key][1] >= min_cov:
            RS_ch_dict[key].add_sample_data(condition, rep, frac, af_dict[key][0])

def read_condition(RS_dict, conditions, fracs, reps, post, min_cov, ch):
    for condition in conditions:
        for rep in reps:
            for frac in fracs:
                file_name = get_file_name(condition, frac, ch, post, min_cov, rep)
                af_dict = save_af(file_name)
                if not RS_dict:
                    RS_dict = get_all_rs(af_dict, conditions, fracs, reps, ch)
                add_data(RS_dict, af_dict, condition, frac, rep, min_cov)

if __name__=="__main__":
    args = define_args().parse_args()
    id_files = args.idfile
    post = args.post
    min_cov = int(args.mincoverage)
    chrs = ['1', '2', '3', '4', '5', '6', '7', '8', '9', '10', '11', '12', '13', '14', '15', '16', '17', '18', '19', '20', '21', '22', 'X', 'MT']
    conditions = ["scr_DMSO", "scr_NUTLIN", "shDHX30_DMSO", "shDHX30_NUTLIN", "shPCBP2_DMSO", "shPCBP2_NUTLIN"]
    fractions = ["POL", "TOT"]
    reps = ["1", "2", "3", "4"]
    res = {}
    if id_files:
        id_dict = read_id(id_files, chrs)
        id_dict = init_RS_dict(id_dict, chrs, conditions, reps, fractions)
    else:
        id_dict = {}
        for ch in chrs:
            id_dict[ch] = None

    for ch in id_dict:
        read_condition(id_dict[ch], conditions, fractions, reps, post, min_cov, ch)
    header = ''
    for ch in id_dict:
        for rs in id_dict[ch]:
            id_dict[ch][rs].operations()
            if header == '':
                header = id_dict[ch][rs].get_csv_header()
                print(header)
            print(id_dict[ch][rs])
