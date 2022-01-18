#Created for learning purposes only

from cProfile import label
from cgitb import text
from os import link
from sqlite3 import Row
import tkinter as tk
from tkinter import Entry, Frame, font
from tkinter.messagebox import showinfo
from pytube import YouTube


#setup size/title
root = tk.Tk()
root.title('Youtube DL')
root.geometry('900x400+50+50')
#sets the icon
root.iconbitmap('./youtube.ico')
#configures the grid's column sizes
root.columnconfigure(0, weight=1)
root.columnconfigure(1, weight=1)
root.columnconfigure(2, weight=1)



#on click function for link submission
def linkClicked():
    #on click function for download
    def downloadClicked():
        itag = itagEntry.get()
        ys = yt.streams.get_by_itag(itag)
        ys.download()
        itagEntry.delete(0,'end')
        
        def remove(widget1, widget2,widget3,widget4,widget5):
                widget1.grid_remove()
                widget2.grid_remove()
                widget3.grid_remove()
                widget4.grid_remove()
                widget5.grid_remove()
        
        showinfo("Finished!","File Downloaded!")
        
        remove(itagEntry,title,itagLabel,streamInfo,downloadButton)


  
    
    
    link= linkEntry.get()
    yt = YouTube(link)
    
    linkEntry.delete(0,'end')
    
    title= tk.Label(root,text= yt.title,borderwidth= 10 ,font=("Helvetica", 10))
    title.grid(row=3,column=0)
    
    streams = yt.streams.filter(only_audio=True)
    streamInfo = tk.Label(root,text=streams,wraplength=250,font=("Helvetica", 10))
    streamInfo.grid(row=4,column=0)

    itagLabel= tk.Label(root,text="Choose an itag to download.",font=("Helvetica", 10))
    itagLabel.grid(row=5,column=0)
    itagEntry = tk.Entry(root,width=50)
    itagEntry.grid(row=5,column=1)
    
    downloadButton = tk.Button(root,text="Download",command=downloadClicked)
    downloadButton.grid(row=5,column=2)








#text entry box
linkText = tk.Label(root,text="Youtube Link: ",font=("Helvetica", 10))
linkText.grid(row=0,column=0)
linkEntry = tk.Entry(root,width=50)
linkEntry.grid(row=0,column=1)

myButton = tk.Button(root,text="Submit Link",command=linkClicked)
myButton.grid(row=0,column=2)


root.mainloop()
