
from functools import reduce

def add(x, y):
    return x + y

marks = [50, 12, 37, 28, 14, 32]
total = reduce(add, marks)

def map_func(n):
    return len(n)

a = map(map_func, ('Akash','Sudhamshu','Vaishakh','Sumanth','Sudarshan','Siddarth'))


avg = lambda total : total/a
print("Average of the class :",avg)

def filter_func(x):
  if x < 18:
    return False
  else:
    return True

passed = filter(filter_func, marks)

for x in passed:
  print("Passed with Marks:",a,x)
