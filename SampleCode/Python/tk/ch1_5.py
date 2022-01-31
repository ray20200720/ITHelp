# ch1_5.py
from tkinter import *

root = Tk()
w = 300 
h = 200 
x = 400 
y = 200 
root.geometry("%dx%d+%d+%d" % (w, h, x, y)) # geometry(WIDTHxHEIGHT+X+Y)
root.mainloop()
