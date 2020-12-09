import numpy as np
#one dimensional array 
a = np.arange(5)
print(f"array a ={a} selected element a[2]={a[2]} \t a[2:4]={a[2:4]} a[:4:2]={a[:4:2]} ")
#modifying of elements
a[1]=56
a[:4:2]=-99
print(f"modified array={a}")

print(f"reversed array is {a[::-1]}")
# To access all the elements of the array we could use a single for loop
for i in range(len(a)):
    print(f"the element at index{i} is {a[i]}")

#multidimensional array
b = np.array([[1,2, 3,4], [5,6,7,8], [9,10,11,12]])
print(f"array={b} b[1,3]={b[1,3]} \n b[2,1]={b[2,1]} \n b[:2, 1:3]=\n{b[:2, 1:3]}")

row2 = b[1,:]
print(f"row2={row2}")
print(f"dimension of row2 according to  slicing b[1,:] ={row2.ndim}")


same_row = b[1:2,:]
print(f"same_row={same_row}")
print(f"dimension of row2 according to slicing b[1:2,:] ={same_row.ndim}")
#some more examples
print(f"b[:,1]={ b[:,1]},\n  b[:,1:2]=\n{ b[:,1:2]}")

#accessing elements of multidimensional array
#1 to get the entire matrix
for row in b:
    print(row)

#to access the individual elements we use flat method
for each_element in b.flat:
    print(each_element)
#complex methods of slicing
c= np.array([[1, 2], [3, 4], [5, 6]])

print(f"c array is =\n {c} \n sliced elements based on c[[0, 1, 2], [0, 1, 0]]={c[[0, 1, 2], [0, 1, 0]]}")

#boolean array slicing
d = np.array([[11, 12], [13, 14], [15, 16]])
print(f"array=\n {d} filtered elements d[d>13]={d[d>13]}")
print(f"array=\n {d} filtered elements d[d%2==0]={d[d%2==0]}")








