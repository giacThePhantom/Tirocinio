class RS:

    def __init__(self, rs, ch, conditions, reps, fracs):
        self.rs = rs
        self.ch = ch
        self.conditions = conditions.copy()
        self.reps = reps.copy()
        self.fracs = fracs.copy()
        self.repsops = reps.copy()
        self.repsops.append('AVG')
        self.fracsops = fracs.copy()
        self.fracsops.append('TOT - POL')
        self.fracsops.append('POL / TOT')
        self.af = [[[None for i in range(0, len(self.fracsops))] for i in range(0, len(self.repsops))] for i in range(0, len(self.conditions))]


    def get_csv_header(self):
        res = "chr,id,"
        for con in self.conditions:
            for rep in self.repsops:
                for frac in self.fracsops:
                    res += con + '_' + rep + '_' + frac + ','
        return res[:-1]

    def __str__(self):
        res = self.ch + ',' + self.rs + ','
        for con in self.af:
            for rep in con:
                for frac in rep:
                    res += str(frac) + ','
        return res[:-1]

    def __len__(self):
        res = 0
        for con in self.af:
            for rep in con:
                for frac in rep:
                    res += 1
        return res + 2


    def add_sample_data(self, con, rep, frac, data):
        self.af[self.conditions.index(con)][self.repsops.index(rep)][self.fracsops.index(frac)] = data

    def frac_ops(self):
        for con in self.af:
            for rep in self.reps:
                curr_rep = con[self.repsops.index(rep)]
                tot = curr_rep[self.fracs.index('TOT')]
                pol = curr_rep[self.fracs.index('POL')]
                if tot and pol:
                    curr_rep[self.fracsops.index('TOT - POL')] = tot - pol
                    curr_rep[self.fracsops.index('POL / TOT')] = pol / tot

    def rep_ops(self):
        for con in self.af:
            tot, pol, tot_m_pol, pol_d_tot = [], [], [], []
            for rep in self.reps:
                curr_rep = con[self.repsops.index(rep)]
                curr_tot = curr_rep[self.fracsops.index('TOT')]
                curr_pol = curr_rep[self.fracsops.index('POL')]
                curr_tot_m_pol = curr_rep[self.fracsops.index('TOT - POL')]
                curr_pol_d_tot = curr_rep[self.fracsops.index('POL / TOT')]
                if curr_tot:
                    tot.append(curr_tot)
                if curr_pol:
                    pol.append(curr_pol)
                if curr_tot_m_pol:
                    tot_m_pol.append(curr_tot_m_pol)
                if curr_pol_d_tot:
                    pol_d_tot.append(curr_pol_d_tot)
            avg_rep = con[self.repsops.index('AVG')]
            if len(tot) > 0:
                avg_rep[self.fracsops.index('TOT')] = sum(tot) / len(tot)
            if len(pol) > 0:
                avg_rep[self.fracsops.index('POL')] = sum(pol) / len(pol)
            if len(tot_m_pol) > 0:
                avg_rep[self.fracsops.index('TOT - POL')] = sum(tot_m_pol) / len(tot_m_pol)
            if len(pol_d_tot) > 0:
                avg_rep[self.fracsops.index('POL / TOT')] = sum(pol_d_tot) / len(pol_d_tot)

    def operations(self):
            self.frac_ops()
            self.rep_ops()
