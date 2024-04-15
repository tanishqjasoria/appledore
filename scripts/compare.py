geth = """"""
neth = """"""

gethNew = geth.split('\n')
nethNew = neth.split('\n')

gethData = dict()
nethData = dict()

for i in range(len(gethNew)):
    data = gethNew[i].split(',')
    gethData[data[1]] = data[3]

for i in range(len(nethNew)):
    data = nethNew[i].split(',')
    nethData[data[1]] = data[3]

for i in gethData.keys():
    if i in nethData.keys():
        if gethData[i] != nethData[i]:
            print(i, gethData[i], nethData[i])
    else:
        print(i, gethData[i])

for i in nethData.keys():
    if i in gethData.keys():
        if gethData[i] != nethData[i]:
            print(i, gethData[i], nethData[i])
    else:
        print(i, nethData[i])
