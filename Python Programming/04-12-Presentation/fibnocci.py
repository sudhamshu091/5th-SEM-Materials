from functools import reduce
fib = lambda n : reduce(lambda x,y:x + [x[-1]+x[-2]],range(n-2), [0, 1])
print(fib(7))
