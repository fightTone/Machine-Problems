
stack=[]
def subset_sum(cost, numbers, target,cow, partial=[]):

    s = sum(partial)
    if s == target:
        min=0
        x=0
        print("-----------------------------------------------------------")
        print "the weight: "
        print partial



        while x < len(partial):
            #print "the weights are" +str(partial[x])
            we =partial[x]
            if we in cow:
                a=cow.index(we)
                min += cost[a]
                print("\nthe cost: "+ str(cost[a]))
            x += 1
        dis = min
        print "\ncurrent calculated cost: "+str(min),"\n"
        stack.append(dis)
        print stack
        print("-----------------------------------------------------------")



       # print "sum(%s)=%s" % (partial, target)
    if s >= target:
        return

    for i in range(len(numbers)):
        n = numbers[i]
        remaining = numbers[i:]# pwede ka mag i+1 if dili ka gusto ug repeatition sa item:)
        subset_sum(cost,remaining, target,cow, partial + [n])


if __name__ == "__main__":
    z=input("enter how many items do you want: ")
    cost = []
    index = []
    i=1
    while i <= z:
        x = input("\ncost of item " + str(i) + ":")
        y = input("weight of the item (in kg) :")
        #print " and it weight/s: "+str(i) + " kg"
        cost.append(x)
        index.append(y)

        i += 1
    cow=index
    W = input("\nenter weight you will bring (in kg):")
    subset_sum(cost,index,W,cow)

    minimum = min(stack)
    if minimum <1:
        print "the minimum cost is "+str(minimum)+" oh! cannot be. "
    else:
        print "the minimum cost of the item you can bring\n with a weight of "+str(W)+"kg is " + str(minimum)
