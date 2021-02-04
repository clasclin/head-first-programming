import urllib.request
import time

def get_price():
    page = urllib.request.urlopen("http://beans.itcarlow.ie/prices.html")
    text = page.read().decode("utf8")
    
    index = text.find(">$") + 2
    last = index + 4
    
    print(text[index:last])

get_price()

# price = 99.9
# while price > 4.74:
    # time.sleep(900)

# print("Buy!")