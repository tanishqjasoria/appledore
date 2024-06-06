import json
geth = open("geth.txt", 'r')
gethData = []
for line in geth:
    try:
        jsonData = json.loads(line)
        gethData.append(jsonData)
    except ValueError:
        print(line)

for i in range(len(gethData)):
    if "gas" in gethData[i]:
        gethData[i]["gas"] = int(gethData[i]["gas"], 16)
    if "gasCost" in gethData[i]:
        gethData[i]["gasCost"] = int(gethData[i]["gasCost"], 16)
    if "gasUsed" in gethData[i]:
        gethData[i]["gasUsed"] = int(gethData[i]["gasUsed"], 16)

gethNew = open("gethX.txt", 'w')
for i in gethData:
    gethNew.write(str(i) + "\n")

gethNew.close()


gethBundled = []
newData = []
for i in range(len(gethData)):
    newData.append(gethData[i])
    if "output" in gethData[i]:
        gethBundled.append(newData)
        newData = []


neth = "neth.txt"
nethData = json.load(open(neth, 'r'))
nethToGethData = []
nethDataBundled = []
for line in nethData:
    if "structLogs" in line:
        for innerLine in line["structLogs"]:
            nethToGethData.append(innerLine)
    moreData = dict()
    moreData["output"] = line["returnValue"]
    moreData["gasUsed"] = line["gas"]
    moreData["failed"] = line["failed"]
    nethToGethData.append(moreData)
    nethDataBundled.append(nethToGethData)
    nethToGethData = []


nethNew = open("nethX.txt", 'w')
for i in nethDataBundled:
    for j in i:
        nethNew.write(str(j) + "\n")

nethNew.close()