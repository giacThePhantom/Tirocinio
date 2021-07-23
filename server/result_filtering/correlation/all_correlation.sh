#!/bin/sh
mkdir -p "output"

./correlation.py /scr/DMSO/POL/ 1 > output/scr_DMSO_POL_1.csv
./correlation.py /scr/DMSO/POL/ 1 0.1.0.9.10 > output/scr_DMSO_POL_1.1.9.10.csv
./correlation.py /scr/DMSO/POL/ 1 0.1.0.9.20 > output/scr_DMSO_POL_1.1.9.20.csv
./correlation.py /scr/DMSO/POL/ 1 0.2.0.8.10 > output/scr_DMSO_POL_1.2.8.10.csv
./correlation.py /scr/DMSO/POL/ 1 0.2.0.8.20 > output/scr_DMSO_POL_1.2.8.20.csv

./correlation.py /scr/DMSO/POL/ 2 > output/scr_DMSO_POL_2.csv
./correlation.py /scr/DMSO/POL/ 2 0.1.0.9.10 > output/scr_DMSO_POL_2.1.9.10.csv
./correlation.py /scr/DMSO/POL/ 2 0.1.0.9.20 > output/scr_DMSO_POL_2.1.9.20.csv
./correlation.py /scr/DMSO/POL/ 2 0.2.0.8.10 > output/scr_DMSO_POL_2.2.8.10.csv
./correlation.py /scr/DMSO/POL/ 2 0.2.0.8.20 > output/scr_DMSO_POL_2.2.8.20.csv

./correlation.py /scr/DMSO/POL/ 3 > output/scr_DMSO_POL_3.csv
./correlation.py /scr/DMSO/POL/ 3 0.1.0.9.10 > output/scr_DMSO_POL_3.1.9.10.csv
./correlation.py /scr/DMSO/POL/ 3 0.1.0.9.20 > output/scr_DMSO_POL_3.1.9.20.csv
./correlation.py /scr/DMSO/POL/ 3 0.2.0.8.10 > output/scr_DMSO_POL_3.2.8.10.csv
./correlation.py /scr/DMSO/POL/ 3 0.2.0.8.20 > output/scr_DMSO_POL_3.2.8.20.csv

./correlation.py /scr/DMSO/POL/ 4 > output/scr_DMSO_POL_4.csv
./correlation.py /scr/DMSO/POL/ 4 0.1.0.9.10 > output/scr_DMSO_POL_4.1.9.10.csv
./correlation.py /scr/DMSO/POL/ 4 0.1.0.9.20 > output/scr_DMSO_POL_4.1.9.20.csv
./correlation.py /scr/DMSO/POL/ 4 0.2.0.8.10 > output/scr_DMSO_POL_4.2.8.10.csv
./correlation.py /scr/DMSO/POL/ 4 0.2.0.8.20 > output/scr_DMSO_POL_4.2.8.20.csv

./correlation.py /scr/DMSO/TOT/ 1 > output/scr_DMSO_TOT_1.csv
./correlation.py /scr/DMSO/TOT/ 1 0.1.0.9.10 > output/scr_DMSO_TOT_1.1.9.10.csv
./correlation.py /scr/DMSO/TOT/ 1 0.1.0.9.20 > output/scr_DMSO_TOT_1.1.9.20.csv
./correlation.py /scr/DMSO/TOT/ 1 0.2.0.8.10 > output/scr_DMSO_TOT_1.2.8.10.csv
./correlation.py /scr/DMSO/TOT/ 1 0.2.0.8.20 > output/scr_DMSO_TOT_1.2.8.20.csv

./correlation.py /scr/DMSO/TOT/ 2 > output/scr_DMSO_TOT_2.csv
./correlation.py /scr/DMSO/TOT/ 2 0.1.0.9.10 > output/scr_DMSO_TOT_2.1.9.10.csv
./correlation.py /scr/DMSO/TOT/ 2 0.1.0.9.20 > output/scr_DMSO_TOT_2.1.9.20.csv
./correlation.py /scr/DMSO/TOT/ 2 0.2.0.8.10 > output/scr_DMSO_TOT_2.2.8.10.csv
./correlation.py /scr/DMSO/TOT/ 2 0.2.0.8.20 > output/scr_DMSO_TOT_2.2.8.20.csv

./correlation.py /scr/DMSO/TOT/ 3 > output/scr_DMSO_TOT_3.csv
./correlation.py /scr/DMSO/TOT/ 3 0.1.0.9.10 > output/scr_DMSO_TOT_3.1.9.10.csv
./correlation.py /scr/DMSO/TOT/ 3 0.1.0.9.20 > output/scr_DMSO_TOT_3.1.9.20.csv
./correlation.py /scr/DMSO/TOT/ 3 0.2.0.8.10 > output/scr_DMSO_TOT_3.2.8.10.csv
./correlation.py /scr/DMSO/TOT/ 3 0.2.0.8.20 > output/scr_DMSO_TOT_3.2.8.20.csv

./correlation.py /scr/DMSO/TOT/ 4 > output/scr_DMSO_TOT_4.csv
./correlation.py /scr/DMSO/TOT/ 4 0.1.0.9.10 > output/scr_DMSO_TOT_4.1.9.10.csv
./correlation.py /scr/DMSO/TOT/ 4 0.1.0.9.20 > output/scr_DMSO_TOT_4.1.9.20.csv
./correlation.py /scr/DMSO/TOT/ 4 0.2.0.8.10 > output/scr_DMSO_TOT_4.2.8.10.csv
./correlation.py /scr/DMSO/TOT/ 4 0.2.0.8.20 > output/scr_DMSO_TOT_4.2.8.20.csv

./correlation.py /scr/NUTLIN/POL/ 1 > output/scr_NUTLIN_POL_1.csv
./correlation.py /scr/NUTLIN/POL/ 1 0.1.0.9.10 > output/scr_NUTLIN_POL_1.1.9.10.csv
./correlation.py /scr/NUTLIN/POL/ 1 0.1.0.9.20 > output/scr_NUTLIN_POL_1.1.9.20.csv
./correlation.py /scr/NUTLIN/POL/ 1 0.2.0.8.10 > output/scr_NUTLIN_POL_1.2.8.10.csv
./correlation.py /scr/NUTLIN/POL/ 1 0.2.0.8.20 > output/scr_NUTLIN_POL_1.2.8.20.csv

./correlation.py /scr/NUTLIN/POL/ 2 > output/scr_NUTLIN_POL_2.csv
./correlation.py /scr/NUTLIN/POL/ 2 0.1.0.9.10 > output/scr_NUTLIN_POL_2.1.9.10.csv
./correlation.py /scr/NUTLIN/POL/ 2 0.1.0.9.20 > output/scr_NUTLIN_POL_2.1.9.20.csv
./correlation.py /scr/NUTLIN/POL/ 2 0.2.0.8.10 > output/scr_NUTLIN_POL_2.2.8.10.csv
./correlation.py /scr/NUTLIN/POL/ 2 0.2.0.8.20 > output/scr_NUTLIN_POL_2.2.8.20.csv

./correlation.py /scr/NUTLIN/POL/ 3 > output/scr_NUTLIN_POL_3.csv
./correlation.py /scr/NUTLIN/POL/ 3 0.1.0.9.10 > output/scr_NUTLIN_POL_3.1.9.10.csv
./correlation.py /scr/NUTLIN/POL/ 3 0.1.0.9.20 > output/scr_NUTLIN_POL_3.1.9.20.csv
./correlation.py /scr/NUTLIN/POL/ 3 0.2.0.8.10 > output/scr_NUTLIN_POL_3.2.8.10.csv
./correlation.py /scr/NUTLIN/POL/ 3 0.2.0.8.20 > output/scr_NUTLIN_POL_3.2.8.20.csv

./correlation.py /scr/NUTLIN/POL/ 4 > output/scr_NUTLIN_POL_4.csv
./correlation.py /scr/NUTLIN/POL/ 4 0.1.0.9.10 > output/scr_NUTLIN_POL_4.1.9.10.csv
./correlation.py /scr/NUTLIN/POL/ 4 0.1.0.9.20 > output/scr_NUTLIN_POL_4.1.9.20.csv
./correlation.py /scr/NUTLIN/POL/ 4 0.2.0.8.10 > output/scr_NUTLIN_POL_4.2.8.10.csv
./correlation.py /scr/NUTLIN/POL/ 4 0.2.0.8.20 > output/scr_NUTLIN_POL_4.2.8.20.csv

./correlation.py /scr/NUTLIN/TOT/ 1 > output/scr_NUTLIN_TOT_1.csv
./correlation.py /scr/NUTLIN/TOT/ 1 0.1.0.9.10 > output/scr_NUTLIN_TOT_1.1.9.10.csv
./correlation.py /scr/NUTLIN/TOT/ 1 0.1.0.9.20 > output/scr_NUTLIN_TOT_1.1.9.20.csv
./correlation.py /scr/NUTLIN/TOT/ 1 0.2.0.8.10 > output/scr_NUTLIN_TOT_1.2.8.10.csv
./correlation.py /scr/NUTLIN/TOT/ 1 0.2.0.8.20 > output/scr_NUTLIN_TOT_1.2.8.20.csv

./correlation.py /scr/NUTLIN/TOT/ 2 > output/scr_NUTLIN_TOT_2.csv
./correlation.py /scr/NUTLIN/TOT/ 2 0.1.0.9.10 > output/scr_NUTLIN_TOT_2.1.9.10.csv
./correlation.py /scr/NUTLIN/TOT/ 2 0.1.0.9.20 > output/scr_NUTLIN_TOT_2.1.9.20.csv
./correlation.py /scr/NUTLIN/TOT/ 2 0.2.0.8.10 > output/scr_NUTLIN_TOT_2.2.8.10.csv
./correlation.py /scr/NUTLIN/TOT/ 2 0.2.0.8.20 > output/scr_NUTLIN_TOT_2.2.8.20.csv

./correlation.py /scr/NUTLIN/TOT/ 3 > output/scr_NUTLIN_TOT_3.csv
./correlation.py /scr/NUTLIN/TOT/ 3 0.1.0.9.10 > output/scr_NUTLIN_TOT_3.1.9.10.csv
./correlation.py /scr/NUTLIN/TOT/ 3 0.1.0.9.20 > output/scr_NUTLIN_TOT_3.1.9.20.csv
./correlation.py /scr/NUTLIN/TOT/ 3 0.2.0.8.10 > output/scr_NUTLIN_TOT_3.2.8.10.csv
./correlation.py /scr/NUTLIN/TOT/ 3 0.2.0.8.20 > output/scr_NUTLIN_TOT_3.2.8.20.csv

./correlation.py /scr/NUTLIN/TOT/ 4 > output/scr_NUTLIN_TOT_4.csv
./correlation.py /scr/NUTLIN/TOT/ 4 0.1.0.9.10 > output/scr_NUTLIN_TOT_4.1.9.10.csv
./correlation.py /scr/NUTLIN/TOT/ 4 0.1.0.9.20 > output/scr_NUTLIN_TOT_4.1.9.20.csv
./correlation.py /scr/NUTLIN/TOT/ 4 0.2.0.8.10 > output/scr_NUTLIN_TOT_4.2.8.10.csv
./correlation.py /scr/NUTLIN/TOT/ 4 0.2.0.8.20 > output/scr_NUTLIN_TOT_4.2.8.20.csv

./correlation.py /shDHX30/DMSO/POL/ 1 > output/shDHX30_DMSO_POL_1.csv
./correlation.py /shDHX30/DMSO/POL/ 1 0.1.0.9.10 > output/shDHX30_DMSO_POL_1.1.9.10.csv
./correlation.py /shDHX30/DMSO/POL/ 1 0.1.0.9.20 > output/shDHX30_DMSO_POL_1.1.9.20.csv
./correlation.py /shDHX30/DMSO/POL/ 1 0.2.0.8.10 > output/shDHX30_DMSO_POL_1.2.8.10.csv
./correlation.py /shDHX30/DMSO/POL/ 1 0.2.0.8.20 > output/shDHX30_DMSO_POL_1.2.8.20.csv

./correlation.py /shDHX30/DMSO/POL/ 2 > output/shDHX30_DMSO_POL_2.csv
./correlation.py /shDHX30/DMSO/POL/ 2 0.1.0.9.10 > output/shDHX30_DMSO_POL_2.1.9.10.csv
./correlation.py /shDHX30/DMSO/POL/ 2 0.1.0.9.20 > output/shDHX30_DMSO_POL_2.1.9.20.csv
./correlation.py /shDHX30/DMSO/POL/ 2 0.2.0.8.10 > output/shDHX30_DMSO_POL_2.2.8.10.csv
./correlation.py /shDHX30/DMSO/POL/ 2 0.2.0.8.20 > output/shDHX30_DMSO_POL_2.2.8.20.csv

./correlation.py /shDHX30/DMSO/POL/ 3 > output/shDHX30_DMSO_POL_3.csv
./correlation.py /shDHX30/DMSO/POL/ 3 0.1.0.9.10 > output/shDHX30_DMSO_POL_3.1.9.10.csv
./correlation.py /shDHX30/DMSO/POL/ 3 0.1.0.9.20 > output/shDHX30_DMSO_POL_3.1.9.20.csv
./correlation.py /shDHX30/DMSO/POL/ 3 0.2.0.8.10 > output/shDHX30_DMSO_POL_3.2.8.10.csv
./correlation.py /shDHX30/DMSO/POL/ 3 0.2.0.8.20 > output/shDHX30_DMSO_POL_3.2.8.20.csv

./correlation.py /shDHX30/DMSO/POL/ 4 > output/shDHX30_DMSO_POL_4.csv
./correlation.py /shDHX30/DMSO/POL/ 4 0.1.0.9.10 > output/shDHX30_DMSO_POL_4.1.9.10.csv
./correlation.py /shDHX30/DMSO/POL/ 4 0.1.0.9.20 > output/shDHX30_DMSO_POL_4.1.9.20.csv
./correlation.py /shDHX30/DMSO/POL/ 4 0.2.0.8.10 > output/shDHX30_DMSO_POL_4.2.8.10.csv
./correlation.py /shDHX30/DMSO/POL/ 4 0.2.0.8.20 > output/shDHX30_DMSO_POL_4.2.8.20.csv

./correlation.py /shDHX30/DMSO/TOT/ 1 > output/shDHX30_DMSO_TOT_1.csv
./correlation.py /shDHX30/DMSO/TOT/ 1 0.1.0.9.10 > output/shDHX30_DMSO_TOT_1.1.9.10.csv
./correlation.py /shDHX30/DMSO/TOT/ 1 0.1.0.9.20 > output/shDHX30_DMSO_TOT_1.1.9.20.csv
./correlation.py /shDHX30/DMSO/TOT/ 1 0.2.0.8.10 > output/shDHX30_DMSO_TOT_1.2.8.10.csv
./correlation.py /shDHX30/DMSO/TOT/ 1 0.2.0.8.20 > output/shDHX30_DMSO_TOT_1.2.8.20.csv

./correlation.py /shDHX30/DMSO/TOT/ 2 > output/shDHX30_DMSO_TOT_2.csv
./correlation.py /shDHX30/DMSO/TOT/ 2 0.1.0.9.10 > output/shDHX30_DMSO_TOT_2.1.9.10.csv
./correlation.py /shDHX30/DMSO/TOT/ 2 0.1.0.9.20 > output/shDHX30_DMSO_TOT_2.1.9.20.csv
./correlation.py /shDHX30/DMSO/TOT/ 2 0.2.0.8.10 > output/shDHX30_DMSO_TOT_2.2.8.10.csv
./correlation.py /shDHX30/DMSO/TOT/ 2 0.2.0.8.20 > output/shDHX30_DMSO_TOT_2.2.8.20.csv

./correlation.py /shDHX30/DMSO/TOT/ 3 > output/shDHX30_DMSO_TOT_3.csv
./correlation.py /shDHX30/DMSO/TOT/ 3 0.1.0.9.10 > output/shDHX30_DMSO_TOT_3.1.9.10.csv
./correlation.py /shDHX30/DMSO/TOT/ 3 0.1.0.9.20 > output/shDHX30_DMSO_TOT_3.1.9.20.csv
./correlation.py /shDHX30/DMSO/TOT/ 3 0.2.0.8.10 > output/shDHX30_DMSO_TOT_3.2.8.10.csv
./correlation.py /shDHX30/DMSO/TOT/ 3 0.2.0.8.20 > output/shDHX30_DMSO_TOT_3.2.8.20.csv

./correlation.py /shDHX30/DMSO/TOT/ 4 > output/shDHX30_DMSO_TOT_4.csv
./correlation.py /shDHX30/DMSO/TOT/ 4 0.1.0.9.10 > output/shDHX30_DMSO_TOT_4.1.9.10.csv
./correlation.py /shDHX30/DMSO/TOT/ 4 0.1.0.9.20 > output/shDHX30_DMSO_TOT_4.1.9.20.csv
./correlation.py /shDHX30/DMSO/TOT/ 4 0.2.0.8.10 > output/shDHX30_DMSO_TOT_4.2.8.10.csv
./correlation.py /shDHX30/DMSO/TOT/ 4 0.2.0.8.20 > output/shDHX30_DMSO_TOT_4.2.8.20.csv

./correlation.py /shDHX30/NUTLIN/POL/ 1 > output/shDHX30_NUTLIN_POL_1.csv
./correlation.py /shDHX30/NUTLIN/POL/ 1 0.1.0.9.10 > output/shDHX30_NUTLIN_POL_1.1.9.10.csv
./correlation.py /shDHX30/NUTLIN/POL/ 1 0.1.0.9.20 > output/shDHX30_NUTLIN_POL_1.1.9.20.csv
./correlation.py /shDHX30/NUTLIN/POL/ 1 0.2.0.8.10 > output/shDHX30_NUTLIN_POL_1.2.8.10.csv
./correlation.py /shDHX30/NUTLIN/POL/ 1 0.2.0.8.20 > output/shDHX30_NUTLIN_POL_1.2.8.20.csv

./correlation.py /shDHX30/NUTLIN/POL/ 2 > output/shDHX30_NUTLIN_POL_2.csv
./correlation.py /shDHX30/NUTLIN/POL/ 2 0.1.0.9.10 > output/shDHX30_NUTLIN_POL_2.1.9.10.csv
./correlation.py /shDHX30/NUTLIN/POL/ 2 0.1.0.9.20 > output/shDHX30_NUTLIN_POL_2.1.9.20.csv
./correlation.py /shDHX30/NUTLIN/POL/ 2 0.2.0.8.10 > output/shDHX30_NUTLIN_POL_2.2.8.10.csv
./correlation.py /shDHX30/NUTLIN/POL/ 2 0.2.0.8.20 > output/shDHX30_NUTLIN_POL_2.2.8.20.csv

./correlation.py /shDHX30/NUTLIN/POL/ 3 > output/shDHX30_NUTLIN_POL_3.csv
./correlation.py /shDHX30/NUTLIN/POL/ 3 0.1.0.9.10 > output/shDHX30_NUTLIN_POL_3.1.9.10.csv
./correlation.py /shDHX30/NUTLIN/POL/ 3 0.1.0.9.20 > output/shDHX30_NUTLIN_POL_3.1.9.20.csv
./correlation.py /shDHX30/NUTLIN/POL/ 3 0.2.0.8.10 > output/shDHX30_NUTLIN_POL_3.2.8.10.csv
./correlation.py /shDHX30/NUTLIN/POL/ 3 0.2.0.8.20 > output/shDHX30_NUTLIN_POL_3.2.8.20.csv

./correlation.py /shDHX30/NUTLIN/POL/ 4 > output/shDHX30_NUTLIN_POL_4.csv
./correlation.py /shDHX30/NUTLIN/POL/ 4 0.1.0.9.10 > output/shDHX30_NUTLIN_POL_4.1.9.10.csv
./correlation.py /shDHX30/NUTLIN/POL/ 4 0.1.0.9.20 > output/shDHX30_NUTLIN_POL_4.1.9.20.csv
./correlation.py /shDHX30/NUTLIN/POL/ 4 0.2.0.8.10 > output/shDHX30_NUTLIN_POL_4.2.8.10.csv
./correlation.py /shDHX30/NUTLIN/POL/ 4 0.2.0.8.20 > output/shDHX30_NUTLIN_POL_4.2.8.20.csv

./correlation.py /shDHX30/NUTLIN/TOT/ 1 > output/shDHX30_NUTLIN_TOT_1.csv
./correlation.py /shDHX30/NUTLIN/TOT/ 1 0.1.0.9.10 > output/shDHX30_NUTLIN_TOT_1.1.9.10.csv
./correlation.py /shDHX30/NUTLIN/TOT/ 1 0.1.0.9.20 > output/shDHX30_NUTLIN_TOT_1.1.9.20.csv
./correlation.py /shDHX30/NUTLIN/TOT/ 1 0.2.0.8.10 > output/shDHX30_NUTLIN_TOT_1.2.8.10.csv
./correlation.py /shDHX30/NUTLIN/TOT/ 1 0.2.0.8.20 > output/shDHX30_NUTLIN_TOT_1.2.8.20.csv

./correlation.py /shDHX30/NUTLIN/TOT/ 2 > output/shDHX30_NUTLIN_TOT_2.csv
./correlation.py /shDHX30/NUTLIN/TOT/ 2 0.1.0.9.10 > output/shDHX30_NUTLIN_TOT_2.1.9.10.csv
./correlation.py /shDHX30/NUTLIN/TOT/ 2 0.1.0.9.20 > output/shDHX30_NUTLIN_TOT_2.1.9.20.csv
./correlation.py /shDHX30/NUTLIN/TOT/ 2 0.2.0.8.10 > output/shDHX30_NUTLIN_TOT_2.2.8.10.csv
./correlation.py /shDHX30/NUTLIN/TOT/ 2 0.2.0.8.20 > output/shDHX30_NUTLIN_TOT_2.2.8.20.csv

./correlation.py /shDHX30/NUTLIN/TOT/ 3 > output/shDHX30_NUTLIN_TOT_3.csv
./correlation.py /shDHX30/NUTLIN/TOT/ 3 0.1.0.9.10 > output/shDHX30_NUTLIN_TOT_3.1.9.10.csv
./correlation.py /shDHX30/NUTLIN/TOT/ 3 0.1.0.9.20 > output/shDHX30_NUTLIN_TOT_3.1.9.20.csv
./correlation.py /shDHX30/NUTLIN/TOT/ 3 0.2.0.8.10 > output/shDHX30_NUTLIN_TOT_3.2.8.10.csv
./correlation.py /shDHX30/NUTLIN/TOT/ 3 0.2.0.8.20 > output/shDHX30_NUTLIN_TOT_3.2.8.20.csv

./correlation.py /shDHX30/NUTLIN/TOT/ 4 > output/shDHX30_NUTLIN_TOT_4.csv
./correlation.py /shDHX30/NUTLIN/TOT/ 4 0.1.0.9.10 > output/shDHX30_NUTLIN_TOT_4.1.9.10.csv
./correlation.py /shDHX30/NUTLIN/TOT/ 4 0.1.0.9.20 > output/shDHX30_NUTLIN_TOT_4.1.9.20.csv
./correlation.py /shDHX30/NUTLIN/TOT/ 4 0.2.0.8.10 > output/shDHX30_NUTLIN_TOT_4.2.8.10.csv
./correlation.py /shDHX30/NUTLIN/TOT/ 4 0.2.0.8.20 > output/shDHX30_NUTLIN_TOT_4.2.8.20.csv

./correlation.py /shPCBP2/DMSO/POL/ 1 > output/shPCBP2_DMSO_POL_1.csv
./correlation.py /shPCBP2/DMSO/POL/ 1 0.1.0.9.10 > output/shPCBP2_DMSO_POL_1.1.9.10.csv
./correlation.py /shPCBP2/DMSO/POL/ 1 0.1.0.9.20 > output/shPCBP2_DMSO_POL_1.1.9.20.csv
./correlation.py /shPCBP2/DMSO/POL/ 1 0.2.0.8.10 > output/shPCBP2_DMSO_POL_1.2.8.10.csv
./correlation.py /shPCBP2/DMSO/POL/ 1 0.2.0.8.20 > output/shPCBP2_DMSO_POL_1.2.8.20.csv

./correlation.py /shPCBP2/DMSO/POL/ 2 > output/shPCBP2_DMSO_POL_2.csv
./correlation.py /shPCBP2/DMSO/POL/ 2 0.1.0.9.10 > output/shPCBP2_DMSO_POL_2.1.9.10.csv
./correlation.py /shPCBP2/DMSO/POL/ 2 0.1.0.9.20 > output/shPCBP2_DMSO_POL_2.1.9.20.csv
./correlation.py /shPCBP2/DMSO/POL/ 2 0.2.0.8.10 > output/shPCBP2_DMSO_POL_2.2.8.10.csv
./correlation.py /shPCBP2/DMSO/POL/ 2 0.2.0.8.20 > output/shPCBP2_DMSO_POL_2.2.8.20.csv

./correlation.py /shPCBP2/DMSO/POL/ 3 > output/shPCBP2_DMSO_POL_3.csv
./correlation.py /shPCBP2/DMSO/POL/ 3 0.1.0.9.10 > output/shPCBP2_DMSO_POL_3.1.9.10.csv
./correlation.py /shPCBP2/DMSO/POL/ 3 0.1.0.9.20 > output/shPCBP2_DMSO_POL_3.1.9.20.csv
./correlation.py /shPCBP2/DMSO/POL/ 3 0.2.0.8.10 > output/shPCBP2_DMSO_POL_3.2.8.10.csv
./correlation.py /shPCBP2/DMSO/POL/ 3 0.2.0.8.20 > output/shPCBP2_DMSO_POL_3.2.8.20.csv

./correlation.py /shPCBP2/DMSO/POL/ 4 > output/shPCBP2_DMSO_POL_4.csv
./correlation.py /shPCBP2/DMSO/POL/ 4 0.1.0.9.10 > output/shPCBP2_DMSO_POL_4.1.9.10.csv
./correlation.py /shPCBP2/DMSO/POL/ 4 0.1.0.9.20 > output/shPCBP2_DMSO_POL_4.1.9.20.csv
./correlation.py /shPCBP2/DMSO/POL/ 4 0.2.0.8.10 > output/shPCBP2_DMSO_POL_4.2.8.10.csv
./correlation.py /shPCBP2/DMSO/POL/ 4 0.2.0.8.20 > output/shPCBP2_DMSO_POL_4.2.8.20.csv

./correlation.py /shPCBP2/DMSO/TOT/ 1 > output/shPCBP2_DMSO_TOT_1.csv
./correlation.py /shPCBP2/DMSO/TOT/ 1 0.1.0.9.10 > output/shPCBP2_DMSO_TOT_1.1.9.10.csv
./correlation.py /shPCBP2/DMSO/TOT/ 1 0.1.0.9.20 > output/shPCBP2_DMSO_TOT_1.1.9.20.csv
./correlation.py /shPCBP2/DMSO/TOT/ 1 0.2.0.8.10 > output/shPCBP2_DMSO_TOT_1.2.8.10.csv
./correlation.py /shPCBP2/DMSO/TOT/ 1 0.2.0.8.20 > output/shPCBP2_DMSO_TOT_1.2.8.20.csv

./correlation.py /shPCBP2/DMSO/TOT/ 2 > output/shPCBP2_DMSO_TOT_2.csv
./correlation.py /shPCBP2/DMSO/TOT/ 2 0.1.0.9.10 > output/shPCBP2_DMSO_TOT_2.1.9.10.csv
./correlation.py /shPCBP2/DMSO/TOT/ 2 0.1.0.9.20 > output/shPCBP2_DMSO_TOT_2.1.9.20.csv
./correlation.py /shPCBP2/DMSO/TOT/ 2 0.2.0.8.10 > output/shPCBP2_DMSO_TOT_2.2.8.10.csv
./correlation.py /shPCBP2/DMSO/TOT/ 2 0.2.0.8.20 > output/shPCBP2_DMSO_TOT_2.2.8.20.csv

./correlation.py /shPCBP2/DMSO/TOT/ 3 > output/shPCBP2_DMSO_TOT_3.csv
./correlation.py /shPCBP2/DMSO/TOT/ 3 0.1.0.9.10 > output/shPCBP2_DMSO_TOT_3.1.9.10.csv
./correlation.py /shPCBP2/DMSO/TOT/ 3 0.1.0.9.20 > output/shPCBP2_DMSO_TOT_3.1.9.20.csv
./correlation.py /shPCBP2/DMSO/TOT/ 3 0.2.0.8.10 > output/shPCBP2_DMSO_TOT_3.2.8.10.csv
./correlation.py /shPCBP2/DMSO/TOT/ 3 0.2.0.8.20 > output/shPCBP2_DMSO_TOT_3.2.8.20.csv

./correlation.py /shPCBP2/DMSO/TOT/ 4 > output/shPCBP2_DMSO_TOT_4.csv
./correlation.py /shPCBP2/DMSO/TOT/ 4 0.1.0.9.10 > output/shPCBP2_DMSO_TOT_4.1.9.10.csv
./correlation.py /shPCBP2/DMSO/TOT/ 4 0.1.0.9.20 > output/shPCBP2_DMSO_TOT_4.1.9.20.csv
./correlation.py /shPCBP2/DMSO/TOT/ 4 0.2.0.8.10 > output/shPCBP2_DMSO_TOT_4.2.8.10.csv
./correlation.py /shPCBP2/DMSO/TOT/ 4 0.2.0.8.20 > output/shPCBP2_DMSO_TOT_4.2.8.20.csv

./correlation.py /shPCBP2/NUTLIN/POL/ 1 > output/shPCBP2_NUTLIN_POL_1.csv
./correlation.py /shPCBP2/NUTLIN/POL/ 1 0.1.0.9.10 > output/shPCBP2_NUTLIN_POL_1.1.9.10.csv
./correlation.py /shPCBP2/NUTLIN/POL/ 1 0.1.0.9.20 > output/shPCBP2_NUTLIN_POL_1.1.9.20.csv
./correlation.py /shPCBP2/NUTLIN/POL/ 1 0.2.0.8.10 > output/shPCBP2_NUTLIN_POL_1.2.8.10.csv
./correlation.py /shPCBP2/NUTLIN/POL/ 1 0.2.0.8.20 > output/shPCBP2_NUTLIN_POL_1.2.8.20.csv

./correlation.py /shPCBP2/NUTLIN/POL/ 2 > output/shPCBP2_NUTLIN_POL_2.csv
./correlation.py /shPCBP2/NUTLIN/POL/ 2 0.1.0.9.10 > output/shPCBP2_NUTLIN_POL_2.1.9.10.csv
./correlation.py /shPCBP2/NUTLIN/POL/ 2 0.1.0.9.20 > output/shPCBP2_NUTLIN_POL_2.1.9.20.csv
./correlation.py /shPCBP2/NUTLIN/POL/ 2 0.2.0.8.10 > output/shPCBP2_NUTLIN_POL_2.2.8.10.csv
./correlation.py /shPCBP2/NUTLIN/POL/ 2 0.2.0.8.20 > output/shPCBP2_NUTLIN_POL_2.2.8.20.csv

./correlation.py /shPCBP2/NUTLIN/POL/ 3 > output/shPCBP2_NUTLIN_POL_3.csv
./correlation.py /shPCBP2/NUTLIN/POL/ 3 0.1.0.9.10 > output/shPCBP2_NUTLIN_POL_3.1.9.10.csv
./correlation.py /shPCBP2/NUTLIN/POL/ 3 0.1.0.9.20 > output/shPCBP2_NUTLIN_POL_3.1.9.20.csv
./correlation.py /shPCBP2/NUTLIN/POL/ 3 0.2.0.8.10 > output/shPCBP2_NUTLIN_POL_3.2.8.10.csv
./correlation.py /shPCBP2/NUTLIN/POL/ 3 0.2.0.8.20 > output/shPCBP2_NUTLIN_POL_3.2.8.20.csv

./correlation.py /shPCBP2/NUTLIN/POL/ 4 > output/shPCBP2_NUTLIN_POL_4.csv
./correlation.py /shPCBP2/NUTLIN/POL/ 4 0.1.0.9.10 > output/shPCBP2_NUTLIN_POL_4.1.9.10.csv
./correlation.py /shPCBP2/NUTLIN/POL/ 4 0.1.0.9.20 > output/shPCBP2_NUTLIN_POL_4.1.9.20.csv
./correlation.py /shPCBP2/NUTLIN/POL/ 4 0.2.0.8.10 > output/shPCBP2_NUTLIN_POL_4.2.8.10.csv
./correlation.py /shPCBP2/NUTLIN/POL/ 4 0.2.0.8.20 > output/shPCBP2_NUTLIN_POL_4.2.8.20.csv

./correlation.py /shPCBP2/NUTLIN/TOT/ 1 > output/shPCBP2_NUTLIN_TOT_1.csv
./correlation.py /shPCBP2/NUTLIN/TOT/ 1 0.1.0.9.10 > output/shPCBP2_NUTLIN_TOT_1.1.9.10.csv
./correlation.py /shPCBP2/NUTLIN/TOT/ 1 0.1.0.9.20 > output/shPCBP2_NUTLIN_TOT_1.1.9.20.csv
./correlation.py /shPCBP2/NUTLIN/TOT/ 1 0.2.0.8.10 > output/shPCBP2_NUTLIN_TOT_1.2.8.10.csv
./correlation.py /shPCBP2/NUTLIN/TOT/ 1 0.2.0.8.20 > output/shPCBP2_NUTLIN_TOT_1.2.8.20.csv

./correlation.py /shPCBP2/NUTLIN/TOT/ 2 > output/shPCBP2_NUTLIN_TOT_2.csv
./correlation.py /shPCBP2/NUTLIN/TOT/ 2 0.1.0.9.10 > output/shPCBP2_NUTLIN_TOT_2.1.9.10.csv
./correlation.py /shPCBP2/NUTLIN/TOT/ 2 0.1.0.9.20 > output/shPCBP2_NUTLIN_TOT_2.1.9.20.csv
./correlation.py /shPCBP2/NUTLIN/TOT/ 2 0.2.0.8.10 > output/shPCBP2_NUTLIN_TOT_2.2.8.10.csv
./correlation.py /shPCBP2/NUTLIN/TOT/ 2 0.2.0.8.20 > output/shPCBP2_NUTLIN_TOT_2.2.8.20.csv

./correlation.py /shPCBP2/NUTLIN/TOT/ 3 > output/shPCBP2_NUTLIN_TOT_3.csv
./correlation.py /shPCBP2/NUTLIN/TOT/ 3 0.1.0.9.10 > output/shPCBP2_NUTLIN_TOT_3.1.9.10.csv
./correlation.py /shPCBP2/NUTLIN/TOT/ 3 0.1.0.9.20 > output/shPCBP2_NUTLIN_TOT_3.1.9.20.csv
./correlation.py /shPCBP2/NUTLIN/TOT/ 3 0.2.0.8.10 > output/shPCBP2_NUTLIN_TOT_3.2.8.10.csv
./correlation.py /shPCBP2/NUTLIN/TOT/ 3 0.2.0.8.20 > output/shPCBP2_NUTLIN_TOT_3.2.8.20.csv

./correlation.py /shPCBP2/NUTLIN/TOT/ 4 > output/shPCBP2_NUTLIN_TOT_4.csv
./correlation.py /shPCBP2/NUTLIN/TOT/ 4 0.1.0.9.10 > output/shPCBP2_NUTLIN_TOT_4.1.9.10.csv
./correlation.py /shPCBP2/NUTLIN/TOT/ 4 0.1.0.9.20 > output/shPCBP2_NUTLIN_TOT_4.1.9.20.csv
./correlation.py /shPCBP2/NUTLIN/TOT/ 4 0.2.0.8.10 > output/shPCBP2_NUTLIN_TOT_4.2.8.10.csv
./correlation.py /shPCBP2/NUTLIN/TOT/ 4 0.2.0.8.20 > output/shPCBP2_NUTLIN_TOT_4.2.8.20.csv
