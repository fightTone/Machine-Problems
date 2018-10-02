import fileinput
import time

fname = raw_input("Enter file name: ")

def bi_search(data,number):
    low = 0
    up = len(data)
    while low < up:
        x = low + (up - low) // 2
        val = data[x]
        if number == val:
            result = x+1
            return result
        elif number > val:
            if low == x:
                break
            low = x
        elif number < val:
            up = x
    return None


def li_search(data, number, start):
    i = 1
    for i in range(start, len(data)):
        if data[i-1] == number:
            return i

def sort(x):
    result = []
    if len(x) < 2:
        return x
    mid = int(len(x) / 2)
    y = sort(x[:mid])
    z = sort(x[mid:])
    i = 0
    j = 0
    while i < len(y) and j < len(z):
        if y[i] > z[j]:
            result.append(z[j])
            j += 1
        else:
            result.append(y[i])
            i += 1
    result += y[i:]
    result += z[j:]
    return result


while True:
    
    start =0
    with open(fname) as file:
        data = file.read().split()
    start_time = time.clock()

    newdata = sort(data)

    number = raw_input("Enter number u want to search: ")
    start_time
    pos = bi_search(newdata,number)
    print "\n<<<BINARY SEARCH>>> "
    print "\nRunning time: " + str(time.clock() - start_time) + " seconds"
    print "\nPosition in Sorted list: ", pos

    start_time
    pos1 = li_search(data,number,start)
    print "\n\n<<<LINEAR SEARCH>>> "
    print "\nRunning time: " + str(time.clock() - start_time) + " seconds"
    print "\nPosition in the list: ", pos1

    choice = raw_input("\nDo you want to continue? Y/N: ",)
    if choice == "N":
        break