import pandas as pd
import time
from colorama import Fore, init
import codecs
import numpy as np

def main():
    init()
    print(Fore.GREEN + "Escribiendo archivo sql...")
    start_time = time.time()

    # dataframe dirty
    dfd = pd.read_csv('CSV_FILES/2010/cat_contratistas.csv')
    # dataframe with all columns emptys cleaned
    df = dfd.dropna(axis='columns', how='all')

    # output file with utf-8 encode
    f = codecs.open('generated_files/2010/contratistas_2010.sql', 'w+', 'utf-8')

    for i in range(0, len(df.values)):

        f.write("INSERT INTO x ( ")

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
                    df.values[i][k] = ""
                    f.write(str(df.values[i][k]))
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
