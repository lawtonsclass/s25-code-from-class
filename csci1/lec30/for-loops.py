L = []
nextNum = int(input("Enter the next number or -1: "))
while nextNum != -1:
    # add nextNum into L
    L = L + [nextNum]
    # get the next number
    nextNum = int(input("Enter the next number or -1: "))

print(L)

# make a guess that the min is the first element of the list
min = L[0]
# loop through every elem of L and update our guess
for x in L:
    # if x is a better guess for the min, min should be set to x
    if x < min:
        min = x

# min holds the true min now!
print('min:', min)




def isprime(num):
    for n in range(2, num):
        if num % n == 0:
            return False
    return True

for n in range(32, 38):
    if isprime(n) == True:
        print("The statement is true!!!")
        print(n, 'is prime!!!')












