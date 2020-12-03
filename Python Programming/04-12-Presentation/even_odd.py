array = [1, 2, 3, 5, 7, 8, 9, 10]
odd = list(filter(lambda x: (x%2 != 0) , array))
even = list(filter(lambda x: (x%2 == 0) , array))
print("Odd Numbers:",odd,"Even Numbers:",even)
