import os

print(os.getcwd())

# Open file
f = open("..\\MemoryFiles\\Test.mif", 'r')
lines = list()
for line in f:
    lines.append(line)
f.close()

last_line = lines.pop()

f2 = open("..\\MemoryFiles\\SongVector.txt", 'r')
values = f2.read()
f2.close()
values = values.split(',')
for i in range(len(values)):
    temp = values[i]
    temp = hex(int(values[i]))[2:].upper()
    if (len(temp)) == 4:
        pass
    elif (len(temp)) == 3:
        temp = "0" + temp
    elif (len(temp)) == 2:
        temp = "00" + temp
    elif (len(temp)) == 1:
        temp = "000" + temp
    values[i] = temp

addresses = list()
for i in range(len(values)):
    temp = i + 2048
    temp = hex(int(temp))[2:].upper()
    if (len(temp)) == 4:
        pass
    elif (len(temp)) == 3:
        temp = "0" + temp
    elif (len(temp)) == 2:
        temp = "00" + temp
    elif (len(temp)) == 1:
        temp = "000" + temp
    addresses.append(temp)

for i in range(len(values)):
    temp = "           " + addresses[i] + " : " + values[i] + ";\n"
    lines.append(temp)

lines.append(last_line)

with open("..\\MemoryFiles\\CMScale.mif", 'w') as f3:
    f3.writelines(lines)






























