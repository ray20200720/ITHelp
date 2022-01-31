# grid.py
import tkinter as tk
win = tk.Tk()
win.geometry("650x200") 
win.title("grid") 

btn1 = tk.Button(win, width=25, text="Button 1")
btn1.grid(column=0, row=0)
btn2 = tk.Button(win, width=25, text="Button 2")
btn2.grid(column=1, row=0)
btn3 = tk.Button(win, width=25, text="Button 3")
btn3.grid(column=2, row=0)

btn4 = tk.Button(win, width=25, text="Button 4")
btn4.grid(column=0, row=1)
btn5 = tk.Button(win, width=25, text="Button 5")
btn5.grid(column=1, row=1)
btn6 = tk.Button(win, width=25, text="Button 6")
btn6.grid(column=2, row=1)

win.mainloop()
