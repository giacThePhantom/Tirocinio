import csv
from rs import RS

def get_line_data(row, header, conditions, reps, fracs):
    res = []
    if len(row) < len(header) - 1:
        print(row)
    else:
        for con in conditions:
            for rep in reps:
                for frac in fracs:
                    header_field = con + '_' + rep + '_' + frac
                    value = None
                    if row[header.index(header_field)] != 'None' and row[header.index(header_field)] != '':
                        value = float(row[header.index(header_field)])
                    res.append([con, rep, frac, value])
    return res



def get_data(filename, conditions, fracs, reps):
    res = {}
    with open(filename) as csv_file:
        csv_reader = csv.reader(csv_file, delimiter = ',')
        line_count = 0
        for row in csv_reader:
            if line_count == 0:
                header = row
                line_count += 1
            else:
                res[row[1]] = RS(row[0], row[1], conditions, fracs, reps)
                for data in get_line_data(row, header, conditions, reps, fracs):
                    res[row[1]].add_data(data[0], data[1], data[2], data[3])
    return res

def get_three_prime(filename):
    res = {}
    with open(filename) as csv_file:
        csv_reader = csv.reader(csv_file, delimiter = ',')
        line_count = 0
        for row in csv_reader:
            if line_count == 0:
                line_count +=1
            else:
                res[row[1]] = row[0]
    return res
