import json
neth = open("../neth.json", 'r')
geth = open("../geth.json", 'r')

neth = json.load(neth)
geth = json.load(geth)

neth = neth["data"]
geth = geth["data"]

for i in geth:
    if "gas" in i:
        i["gas"] = int(i["gas"], 16)
        i["gasCost"] = int(i["gasCost"], 16)
        i["op"] = i["opName"]
    else:
        print(i)

for i in neth:
    i["memSize"] = 0
    for j in i["memory"]:
        i["memSize"] = i["memSize"] + len(j)
    i["memSize"] = i["memSize"]/2
    del i["memory"]
    del i["storage"]