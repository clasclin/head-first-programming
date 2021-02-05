import urllib.request
import time

def get_price():
    page = urllib.request.urlopen("http://beans.itcarlow.ie/prices.html")
    text = page.read().decode("utf8")
    
    index = text.find(">$") + 2
    last = index + 4
    
    return float(text[index:last])

emergency_order = input("Emergency order [Y/N]? ")

if emergency_order == "Y":
    print(get_price())
else:
    price = 99.9
    while price > 4.74:
        time.sleep(900)
        price = get_price()
        print(price)
    print("Buy!")