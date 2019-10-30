try:
   with open('CSV_FILES/2010/conceptos.csv', 'rb') as f:
     for line in f.readlines():
       line = line.strip()
       sock.sendall(struct.pack(">I",len(line))+line)

finally:
   sock.sendall(struct.pack(">I",len(EOT))+EOT)
   print('Done sending {}'.format(filename))
   sock.close()