def save_transactions(price, credit_card, description):
    file = open("transactions.txt", "a")
    file.write("%07d%16d%16s\n" % (price * 100, credit_card, description))
    file.close()