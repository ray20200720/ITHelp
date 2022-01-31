# ch1_6.py
from tkinter import *

root = Tk()
root.title("ITHelp")
screenWidth = root.winfo_screenwidth()
screenHeight = root.winfo_screenheight()
w = 300
h = 250
root.geometry("%dx%d+%d+%d" % (w, h, screenWidth/2, screenHeight/2));
root.mainloop()
