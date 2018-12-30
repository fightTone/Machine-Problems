import timeit

f_name = raw_input("enter filename: ")


def quickSort(alist):
   quickSortHelper(alist,0,len(alist)-1)
   return alist
   
def quickSortHelper(alist,first,last):
   if first<last:

       splitpoint = partition(alist,first,last)

       quickSortHelper(alist,first,splitpoint-1)
       quickSortHelper(alist,splitpoint+1,last)


def partition(alist,first,last):
   pivotvalue = alist[first]

   leftmark = first+1
   rightmark = last

   done = False
   while not done:

       while leftmark <= rightmark and alist[leftmark] <= pivotvalue:
           leftmark = leftmark + 1

       while alist[rightmark] >= pivotvalue and rightmark >= leftmark:
           rightmark = rightmark -1

       if rightmark < leftmark:
           done = True
       else:
           temp = alist[leftmark]
           alist[leftmark] = alist[rightmark]
           alist[rightmark] = temp

   temp = alist[first]
   alist[first] = alist[rightmark]
   alist[rightmark] = temp


   return rightmark


def HeapSort(A):
    def heapify(A):
        start = (len(A) - 2) / 2
        while start >= 0:
            siftDown(A, start, len(A) - 1)
            start -= 1

    def siftDown(A, start, end):
        root = start
        while root * 2 + 1 <= end:
            child = root * 2 + 1
            if child + 1 <= end and A[child] < A[child + 1]:
                child += 1
            if child <= end and A[root] < A[child]:
                A[root], A[child] = A[child], A[root]
                root = child
            else:
                return

    heapify(A)
    end = len(A) - 1
    while end > 0:
        A[end], A[0] = A[0], A[end]
        siftDown(A, 0, end - 1)
        end -= 1
    return A

def mergeSort(alist):
   # print("Splitting ",alist)
    if len(alist)>1:
        mid = len(alist)//2
        lefthalf = alist[:mid]
        righthalf = alist[mid:]

        mergeSort(lefthalf)
        mergeSort(righthalf)

        i=0
        j=0
        k=0
        while i < len(lefthalf) and j < len(righthalf):
            if lefthalf[i] < righthalf[j]:
                alist[k]=lefthalf[i]
                i=i+1
            else:
                alist[k]=righthalf[j]
                j=j+1
            k=k+1

        while i < len(lefthalf):
            alist[k]=lefthalf[i]
            i=i+1
            k=k+1

        while j < len(righthalf):
            alist[k]=righthalf[j]
            j=j+1
            k=k+1
    return alist

def storage(f_name):
	data = []
	f= open(f_name,'r')
	for line in f:
		for l_mnt in line.split():
			data.append(int (l_mnt))
	return data

def bubble_sort(alist):
    for passnum in range(len(alist)-1,0,-1):
        for i in range(passnum):
            if alist[i]>alist[i+1]:
                temp = alist[i]
                alist[i] = alist[i+1]
                alist[i+1] = temp
    
    print alist

def insertion_Sort(alist):
	for index in range(1,len(alist)):
		currentvalue = alist[index]
		position = index
		while position>0 and alist[position-1]>currentvalue:
			alist[position]=alist[position-1]
			position = position-1
		alist[position]=currentvalue
	print alist

def selection_Sort(alist):
	for fillslot in range(len(alist)-1,0,-1):
		positionOfMax=0
		for location in range(1,fillslot+1):
			if alist[location]>alist[positionOfMax]:
				positionOfMax = location
		temp = alist[fillslot]
		alist[fillslot] = alist[positionOfMax]
		alist[positionOfMax] = temp
	print alist

stored_data = storage(f_name)


while True:
	choice = raw_input("\nChoose Sorting Algo: \n\n\t<<BUBBLE>>\n\t<<INSERTION>>\n\t<<SELECTION>>\n\t<<MERGE>>\n\t<<HEAP>>\n\t<<QUICK>>\n\n--->")

	if choice=='BUBBLE':
		print "plsss wait... it may took a several min."
		start_time = timeit.default_timer()
		bubble_sort(stored_data)
		elapsed = timeit.default_timer() - start_time
		print "\nrunning time: " + str(elapsed) +" sec."

	elif choice == 'INSERTION':
		print "plsss wait... it may took a several min."
		start_time = timeit.default_timer()
		insertion_Sort(stored_data)
		elapsed = timeit.default_timer() - start_time
		print "\nrunning time: " + str(elapsed) +" sec."

	elif choice == 'SELECTION':
		print "plsss wait... it may took a several min."
		start_time = timeit.default_timer()
		selection_Sort(stored_data)
		elapsed = timeit.default_timer() - start_time
		print "\nrunning time: " + str(elapsed) +" sec."

	elif choice == 'MERGE':
		print "plsss wait... it may took a several min."
		start_time = timeit.default_timer()
		print mergeSort(stored_data)
		elapsed = timeit.default_timer() - start_time
		print "\nrunning time: " + str(elapsed) +" sec."

	elif choice == 'QUICK':
		print "plsss wait... it may took a several min."
		start_time = timeit.default_timer()
		print quickSort(stored_data)
		elapsed = timeit.default_timer() - start_time
		print "\nrunning time: " + str(elapsed) +" sec."

	
	elif choice == 'HEAP':
		print "plsss wait... it may took a several min."
		start_time = timeit.default_timer()
		print HeapSort(stored_data)
		elapsed = timeit.default_timer() - start_time
		print "\nrunning time: " + str(elapsed) +" sec."

	lup = raw_input("\n\nExit? (Y/N) : \n>>> ")
	if lup == 'Y':
		break