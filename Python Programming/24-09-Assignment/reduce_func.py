from functools import reduce

def add(x, y):
    return x + y

list = [6, 4, 14, 3]
print(reduce(add, list))
