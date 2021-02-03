import urllib.request

page = urllib.request.urlopen("http://beans.itcarlow.ie/prices.html")
text = page.read().decode("utf8")

index = text.find(">$") + 2
last = index + 4

price = text[index:last]

print(price)