L = []
nextNum = int(input("Enter the next number or -1: "))
while nextNum != -1:
    # add nextNum into L
    L = L + [nextNum]
    # get the next number
    nextNum = int(input("Enter the next number or -1: "))

print(L)
