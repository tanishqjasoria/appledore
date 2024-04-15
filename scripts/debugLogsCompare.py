import json
geth = """"""
gethData = []
for line in geth.strip().split("\n"):
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

gethBundled = []
newData = []
for i in range(len(gethData)):
    newData.append(gethData[i])
    if "output" in gethData[i]:
        gethBundled.append(newData)
        newData = []


neth = """"""
nethData = json.loads(neth.strip())
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


