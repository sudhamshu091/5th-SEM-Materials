d = {'a': [1,2,1], 'b': [3,4,1], 'c': [5,6,2]}
#print([x for x in d['b'] if x >2])
#print([(x,y) for x, y in zip(d['a'],d['b']) if x == 1 and y > 1])  #select only those values where a is equal to 1 and b is greater than 1.
#print([(k,v) for k,v in d.items() if all(x > 1 for x in v) ] ) #filter dictionary where all values are graeter than 1
#print([('b', [3, 4, 1]), ('c', [5, 6, 2])])   #any( ) function which returns True if any of the value meets condition.


#pandas
