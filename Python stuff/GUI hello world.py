import tkinter as tk

root = tk.Tk()
root.title('Tkinter Window Demo')
root.geometry('900x400+50+50')
message = tk.Label(root, text="Hello World!")
# you can also create a grid instead of packing
#message.grid(row=0,column=0)
message.pack()


root.mainloop()