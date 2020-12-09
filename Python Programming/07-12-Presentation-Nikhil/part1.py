import numpy as np
int_number_array = np.array([1,2,3,4])
print(int_number_array)
print(type(int_number_array))

float_number_array = np.array([9.1, 8.1, 8.8, 3.0],dtype=float)
print(type(float_number_array))

two_dimensional_array_list = np.array([[1, 2, 3], [4, 5,6]])

print(f"twodimensionalarray created using nested list\n {two_dimensional_array_list}")


two_dimensional_array_tuple = np.array(((1, 2, 3),  (4, 5, 6)))
print(f"two_dimensional craeted using nested tuple is \n{two_dimensional_array_tuple}")


array_attributes = np.array([[10, 20, 30], [14, 12, 16]])
print(f"the array is of dimension={array_attributes.ndim}")

print(f"the array has {array_attributes.shape[0]} number of rows and {array_attributes.shape[1]} number of columns")

print(f"the array has  a total of {array_attributes.size} number of elements")

print(f"the type of elements of the array is {array_attributes.dtype}")

print(f"the each element of the array takes {array_attributes.itemsize} number of bytes in the memory")

print(f"the starting address of the array is { array_attributes.data}")
