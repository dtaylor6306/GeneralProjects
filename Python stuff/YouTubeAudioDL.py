from pytube import YouTube

link = input("Enter your url: ")

yt = YouTube(link)

print(yt.streams.filter(only_audio=True))

itag = input("Enter the itag of the stream to download: ")

ys = yt.streams.get_by_itag(itag)

ys.download()

