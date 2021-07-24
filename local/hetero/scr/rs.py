class RS:
    def __init__(self, ch, rs, conditions, fracs, reps):
        self.ch = ch
        self.rs = rs
        self.af = {}
        self.conditions = conditions
        self.fracs = fracs
        self.reps = reps
        for con in conditions:
            self.af[con] = {}
            for rep in reps:
                self.af[con][rep] = {}
                for frac in fracs:
                    self.af[con][rep][frac] = None

    def __str__(self):
        return str(self.af)
    def add_data(self, con, rep, frac, value):
        self.af[con][rep][frac] = value

    def enough_replicate_for_condition(self, con, nrep):
        ncount = 0
        for rep in self.af[con]:
            if rep != "AVG":
                has_data = True
                for frac in self.af[con][rep]:
                    if frac != "TOT - POL" and frac != "POL / TOT":
                        if not self.af[con][rep][frac]:
                            has_data = False
                if has_data:
                    ncount += 1
        return ncount >= nrep

    def get_value(self, con, rep, frac):
        return self.af[con][rep][frac]

    def to_csv_str(self):
        res = self.ch + "," + self.rs + ","
        for con in self.af:
            for rep in self.af[con]:
                for frac in self.af[con][rep]:
                    res += str(self.af[con][rep][frac]) + ","
        return res
