# place.py
import tkinter as tk
win = tk.Tk()
win.geometry("650x200") 
win.title("place") 

btn1 = tk.Button(win, width=25, text="Button 1")
btn1.place(x=0, y=0)
btn2 = tk.Button(win, width=25, text="Button 2")
btn2.place(relx=0.5, rely=0.5, anchor="center")
btn3 = tk.Button(win, width=25, text="Button 3")
btn3.place(relx=0.5, rely=0.7)

win.mainloop()
