# ch1_1.py
from tkinter import *

def msgShow():
    label["text"] = "I love Python"
    label["bg"] = "lightyello"
    label["fg"] = "blue"

root = Tk()
root.title("ch4_1")
label = Label(root)
btn = Button(root, text="Print", command=msgShow)
label.pack()
btn.pack()

root.mainloop()
