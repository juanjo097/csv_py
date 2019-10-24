import pandas as pd
import time
from colorama import Fore, init
import codecs
import numpy as np
import sys
import os


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

    name_file = path.split('\\')
    name_file = name_file[- 1][:-4]
    o_f = os.path.join("generated_files/2010/", name_file + ".sql")
    print(o_f)
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
            print(df.values[i][k])

            if(isinstance(df.values[i][k], int)):
                f.write(str(df.values[i][k]))
                if k == len(df.columns.values) - 1:
                    f.write("")
                else:
                    f.write(",")

            elif(isinstance(df.values[i][k], str)):
                f.write("\"")
                f.write(df.values[i][k])
                f.write("\"")
                if k == len(df.columns.values) - 1:
                    f.write("")
                else:
                    f.write(",")

            elif(isinstance(df.values[i][k], float)):
                if df.values[i][k] == 'nan':
                    df.values[i][k] = " "
                    f.write(df.values[i][k])
                if k == len(df.columns.values) - 1:
                    f.write("")
                else:
                    f.write(",")

        if i == len(df.columns.values) - 1:
            f.write("\n")
        else:
            f.write(");\n")
    f.close()

    print("Parseado terminado : %s" % (time.time() - start_time))

if __name__ == "__main__":
    main()
