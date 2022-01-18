import tkinter as tk
#setup size/title
root = tk.Tk()
root.title('Tkinter Window Demo')
root.geometry('900x400+50+50')
#sets the icon
root.iconbitmap('./youtube.ico')

#on click function for button
def clicked():
    e.get()
    e.delete(0,'end')

#text entry box
e = tk.Entry(root)
e.pack()

myButton = tk.Button(root,text="Submit Link",command=clicked)
myButton.pack()


root.mainloop()
