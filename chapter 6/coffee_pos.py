def save_transactions(price, credit_card, description):
    file = open("transactions.txt", "a")
    file.write("%16d%07d%16s\n" % (credit_card, price * 100, description))
    file.close()

items = ["DONUT", "LATTE", "FILTER", "MUFFIN"]
prices = [1.50, 2.0, 1.80, 1.20]
running = True

while running:
    option = 1
    for choice in items:
        print(str(option) + " " + choice)
        option += 1
    print(str(option) + ". Quit")
    choice = int(input("Choose an option: "))
    if choice == option:
        running = False
    else:
        credit_card = int(input("Credit card number: "))
        save_transactions(prices[choice - 1], credit_card, items[choice -1])