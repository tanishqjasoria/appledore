prod = "prod.txt"
proc = "proc.txt"

prodFile = open(prod, 'r')
prodProcessed = []
for line in prodFile:
    if " Commit " in line:
        prodProcessed.append(line[20:].strip())

procFile = open(proc, 'r')
procProcessed = []
for line in procFile:
    if " Commit " in line:
        procProcessed.append(line[20:].strip())


for line in prodProcessed:
    if line not in procProcessed:
        print(line)

combines = ",".join(prodProcessed)
for line in procProcessed:
    address = line[14:56]
    if address not in combines:
        print(address)


for i in range(0, len(x)):
    x[i] = json.loads(x[i])
    x[i]['gas'] = int(x[i]['gas'], 16)