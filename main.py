import pandas as pd
import time
from colorama import Fore, init
import codecs
import sys
import os
import numpy as np


def main():
    init()
    print(Fore.GREEN + "Escribiendo archivo sql...")
    start_time = time.time()

    #reading file from path
    path = sys.argv[1]
    # dataframe dirty
    dfd = pd.read_csv(path)
    # dataframe with all columns emptys cleaned
    df = dfd.dropna(axis='columns', how='all')
    df = dfd.replace(np.nan, 'NULL', regex=True)

    name_file = path.split('\\')
    name_file = name_file[- 1][:-4]
    o_f = os.path.join("generated_files/2010/", name_file + ".sql")
    # output file with utf-8 encode
    f = codecs.open(o_f, 'w+', 'utf-8')

    for i in range(0, len(df.values)):

        f.write("INSERT INTO ")
        f.write(name_file)
        f.write("( ")

        for h in range(0, len(df.columns.values)):
            f.write(df.columns.values[h])
            if h == len(df.columns.values) - 1:
                f.write(")")
            else:
                f.write(",")

        f.write("VALUES( ")

        for k in range(0, len(df.values[i])):
            if(isinstance(df.values[i][k], int)):
                f.write(str(df.values[i][k]))
                if k == len(df.columns.values) - 1:
                    f.write("")
                else:
                    f.write(",")

            if(isinstance(df.values[i][k], str)):
                f.write("\"")
                f.write(df.values[i][k])
                f.write("\"")
                if k == len(df.columns.values) - 1:
                    f.write("")
                else:
                    f.write(",")

            if(isinstance(df.values[i][k], float)):
                f.write(str(df.values[i][k]))
                if k == len(df.columns.values) - 1:
                    f.write("")
                else:
                    f.write(",")

        if [i] == len(df.columns.values) - 1:
            f.write("\n")
        else:
            f.write(");\n")
    f.close()

    print("Archivo de salida: " + name_file + ".sql")
    print("Parseado terminado : %s" % (time.time() - start_time))

if __name__ == "__main__":
    main()
