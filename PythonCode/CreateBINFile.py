import os

print(os.getcwd())

# The BIN file needs to be LSB First

f2 = open("..\\MemoryFiles\\SongVector.txt", 'r')
values = f2.read()
f2.close()
values = values.split(',')

print(values)
bin_values = list()
for i in range(len(values)):
    bin_values.append(int(values[i]) % 256)
    bin_values.append(int(values[i]) // 256)

bin_values = bytearray(bin_values)


with open("..\\MemoryFiles\\CScaleTest.bin", 'wb') as f3:
    f3.write(bin_values)
