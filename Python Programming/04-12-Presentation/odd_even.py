l1= [x**2 for x in range(1, 10**7) if x % 2 == 0]
print(l1)

#Processing Time : 3.97 seconds

#sqr=[]
#for x in range(1, 10**7):
#    if x%2 == 0:
#        sqr.append(x**2)
#print(sqr)

# Processing Time : 5.45 seconds

#l0 = list(map(lambda x: x**2, filter(lambda x: x%2 == 0, range(1, 10**7))))
#print(l0)

# Processing Time : 5.33 seconds
