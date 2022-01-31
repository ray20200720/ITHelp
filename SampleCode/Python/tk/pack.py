# pack.py
import tkinter as tk
win = tk.Tk()
win.geometry("300x200") 
win.title("pack") 

btn1 = tk.Button(win, width=25, text="Button 1")
btn1.pack()
btn2 = tk.Button(win, width=25, text="Button 2")
btn2.pack()
btn3 = tk.Button(win, width=25, text="Button 3")
btn3.pack()

win.mainloop()
