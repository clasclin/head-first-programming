import urllib.request
import time

price = 99.9
while price > 4.74:
    time.sleep(900)
    page = urllib.request.urlopen("http://beans.itcarlow.ie/prices.html")
    text = page.read().decode("utf8")
    
    index = text.find(">$") + 2
    last = index + 4
    
    price = float(text[index:last])

print("Buy!")