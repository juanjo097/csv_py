import pandas as pd
import time
from colorama import Fore, init
import codecs
import sys
import os
import numpy as np


init(autoreset=True)

def create_t(data, f_c, name_file, year):
    try:
        t_n = "CREATE TABLE " + "`" + name_file + "_" + year + "`" + " (\n"
        f_c.write(t_n)

        for i in range(0, len(data)):
            if 'id_' in data[i] or 'Id_' in data[i]:
                f_c.write("\t`")
                f_c.write(data[i].lower())
                f_c.write("` ")

                if i == len(data) - 1:
                    f_c.write("INT UNSIGNED DEFAULT NULL\n")
                else:
                    f_c.write("INT UNSIGNED DEFAULT NULL,\n")

            elif 'Nombre' in data[i] or 'Direccion' in data[i] or 'Observaciones' in data[i]:
                f_c.write("\t`")
                f_c.write(data[i].lower())
                f_c.write("` ")

                if i == len(data) - 1:
                    f_c.write("TEXT DEFAULT NULL\n")
                else:
                    f_c.write("TEXT DEFAULT NULL,\n")

            else:
                f_c.write("\t`")
                f_c.write(data[i].lower())
                f_c.write("` ")

                if i == len(data) - 1:
                    f_c.write("VARCHAR(255) DEFAULT NULL\n")
                else:
                    f_c.write("VARCHAR(255) DEFAULT NULL,\n")
        f_c.write(");")

    except Exception as e:
        print(Fore.RED + "Error al generar archivo CREATE", e)

def insert_t():
    try:
        print(Fore.GREEN + "Escribiendo archivo sql...")
        start_time = time.time()

        #reading file from path
        path = sys.argv[1]
        # dataframe dirty
        dfd = pd.read_csv(path)
        # dataframe with all columns emptys cleaned
        df = dfd.dropna(axis='columns', how='all')
        df = dfd.replace(np.nan, 0, regex=True)
        name_file = path.split('\\')
        year = name_file[1]
        name_file = name_file[- 1][:-4]

        # create dir if not exists
        if not os.path.exists("generated_files/" + year):
            os.makedirs(("generated_files/" + year))

        # save on definitive path
        o_f_i = os.path.join("generated_files/" + year + "/" + name_file + "_" + year + ".sql")
        o_f_c = os.path.join("generated_files/" + year + "/" + "create_table_" + name_file + "_"+ year + ".sql")
        # output file with utf-8 encode
        f_i = codecs.open(o_f_i, 'w+', 'utf-8')
        f_c = codecs.open(o_f_c, 'w+', 'utf-8')

        f_i.write("INSERT INTO ")
        f_i.write(name_file + "_" + year)
        f_i.write("(")

        for h in range(0, len(df.columns.values)):
            if h == 0:
                f_i.write("\n")
                df.columns.values[0] = "id_" + name_file

            f_i.write(df.columns.values[h].lower())

            if h == len(df.columns.values) - 1:
                f_i.write(") VALUES\n")
            else:
                f_i.write(",\n")

        create_t(df.columns.values,f_c,name_file, year)

        for i in range(0, len(df.values)):
            f_i.write("(")
            for k in range(0, len(df.values[i])):
                if(isinstance(df.values[i][k], int)):
                    f_i.write(str(df.values[i][k]))
                    if k != len(df.columns.values) - 1:
                        f_i.write(",")

                if(isinstance(df.values[i][k], str)):
                    f_i.write("\"")
                    f_i.write(df.values[i][k].replace("\"", " "))
                    f_i.write("\"")
                    if k != len(df.columns.values) - 1:
                        f_i.write(",")

                if(isinstance(df.values[i][k], float)):
                    f_i.write(str(df.values[i][k]))
                    if k != len(df.columns.values) - 1:
                        f_i.write(",")

            if i == len(df.values) - 1:
                f_i.write(");")
            else:
                f_i.write("),\n")

        f_i.close()

        print(Fore.YELLOW + "Archivo de salida: " + name_file + ".sql")
        print(Fore.GREEN +"Parseado terminado : %s" % (time.time() - start_time))
    except Exception as e:
        print(Fore.RED + "Error al generar archivo de INSERT", e)

def main():
    insert_t()

if __name__ == "__main__":
    main()
