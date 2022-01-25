# ch1_2.py
from tkinter import *

root = Tk()
root.title("ITHelp");
screenWidth = root.winfo_screenwidth()
screenHeight = root.winfo_screenheight()
w = 300
h = 250
x = 400
y = 200
#root.geometry("300x500");
root.geometry("%dx%d+%d+%d" % (w, h, x, y));
#root.configure(bg='green');
root.mainloop()
