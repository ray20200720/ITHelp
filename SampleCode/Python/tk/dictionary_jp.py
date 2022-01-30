dictionary = {}
import csv


# print("{0:20}{1:<20}{2:<20}{3:<10}".format("單字","漢字","中文","課"))
with open("japanese.csv", encoding="utf-8") as csvfile:

    reader = csv.reader(csvfile)
    for row in reader:
        # print("{0:20}{1:<20}{2:<20}{3:<10}".format(row[0],row[1],row[2],row[3]))
        dictionary[row[0]] = row[2]

for k, v in dictionary.items():
    print("{0} {1}".format(k, v))

def ctoj():
    i = entry.get()
    ans = ""
    for k, v in dictionary.items():
        if v== i:
            ans = k
            break
    

    if ans:
        label.config(text = ans)
    else:
        label.config(text = "找不到[" + i + "]")

def jtoc():
    i = entry.get()
    ans = dictionary.get(i, "找不到[" + i + "]")
    label.config(text = ans)

def clear():
    entry.delete(0, "end")
    label.config(text = "")

import tkinter as tk
win = tk.Tk()
win.title("簡易單字翻譯機")

frame = tk.Frame(win)
frame.pack(padx=5, pady=5)
frame1 = tk.Frame(win)
frame1.pack(padx=5, pady=5)

entry = tk.Entry(frame, bg="#99ffcc", font="JhengHei 15", borderwidth=3)
entry.config(width=30)
entry.grid(column=0, row=0)

label = tk.Label(frame, bg="#ffffcc", font="JhengHei 15", text="")
label.config(width=30)
label.grid(column=1,row=0)

btnJtoc = tk.Button(frame1, text="日翻中", command=jtoc)
btnJtoc.grid(column=0,row=0)

btnCtoj = tk.Button(frame1, text="中翻日", command=ctoj)
btnCtoj.grid(column=1,row=0)

btnClear = tk.Button(frame1, text=" 清 除 ", command=clear)
btnClear.grid(column=2,row=0)
win.mainloop()