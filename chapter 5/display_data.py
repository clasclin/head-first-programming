def find_details(id2find):
    surfer_f = open("surfing_data.csv")
    for line in surfer_f:
        s = {}
        (s['id'], s['name'], s['country'], s['average'], s['board'], s['age']) = line.split(';')
        if id2find == int(s['id']):
            surfer_f.close()
            return(s)
    surfer_f.close()
    return({})

lookup_id = int(input("Enter the id of the surfer: "))
surfer = find_details(lookup_id)
if surfer:
    print("ID:         " + surfer['id'])
    print("Name:       " + surfer['name'])
    print("Country:    " + surfer['country'])
    print("Average:    " + surfer['average'])
    print("Board type: " + surfer['board'])
    print("Age:        " + surfer['age'])