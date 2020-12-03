l = [1, 3, 6, 10]

list = [x**2 for x in l]
generator = (x**2 for x in l)

print(list)
print(generator)
