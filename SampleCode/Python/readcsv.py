dictionary = {}
import csv

# print("{0:20}{1:<20}{2:<20}{3:<10}".format("單字","漢字","中文","課"))
with open("japanese.csv", encoding="utf-8") as csvfile:

    reader = csv.reader(csvfile)
    for row in reader:
        # print("{0:20}{1:<20}{2:<20}{3:<10}".format(row[0],row[1],row[2],row[3]))
        dictionary[row[0]] = row[1]


for v in dictionary.values():
    print(v)

