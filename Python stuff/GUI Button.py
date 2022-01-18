import tkinter as tk
#setup size/title
root = tk.Tk()
root.title('Tkinter Window Demo')
root.geometry('900x400+50+50')
#sets the icon
root.iconbitmap('./youtube.ico')

def clicked():
    message = tk.Label(root, text="You clicked me!")
    message.pack()

myButton = tk.Button(root,text="Download",command=clicked)

myButton.pack()


root.mainloop()
