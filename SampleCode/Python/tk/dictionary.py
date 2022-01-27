def ctoe():
    i = entry.get()
    ans = ""
    for k, v in dictionary.items():
        if v == i:
            ans = k
            break

    if ans:
        label.config(text = ans)
    else:
        label.config(text = "找不到[" +i + "]")

def etoc():
    i = entry.get()
    ans = dictionary.get(i, "找不到[" +i + "]")
    label.config(text = ans)

def clear():
    entry.delete(0, "end")
    label.config(text = "")

dictionary = { 'bird': '鳥', 'cat': '貓', 'dog':'狗', 'pig': '豬'}

import tkinter as tk
win = tk.Tk()
win.title("簡易單字翻譯機")

frame = tk.Frame(win)
frame.pack(padx=5, pady=5)
frame1 = tk.Frame(win)
frame1.pack(padx=5, pady=5)

entry = tk.Entry(frame, bg="#99ffcc", font="JhengHei 15", borderwidth=3)
entry.config(width=10)
entry.grid(column=0, row=0)

label = tk.Label(frame, bg="#ffffcc", font="JhengHei 15", text="")
label.config(width=10)
label.grid(column=1,row=0)

btnCtoe = tk.Button(frame1, text="中翻英", command=ctoe)
btnCtoe.grid(column=0,row=0)
btnEtoc = tk.Button(frame1, text="英翻中", command=etoc)
btnEtoc.grid(column=1,row=0)
btnClear = tk.Button(frame1, text=" 清 除 ", command=clear)
btnClear.grid(column=2,row=0)
win.mainloop()