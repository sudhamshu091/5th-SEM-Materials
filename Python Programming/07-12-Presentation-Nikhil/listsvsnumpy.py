# importing numpy package 
import numpy as np 
  
# importing system module 
import sys 
  
# declaring a list of 1000 elements  
S= range(1000)

  
# printing size of each element of the list 
print("Size of each element of list in bytes: ",sys.getsizeof(S)) 
  
# printing size of the whole list 
print("Size of the whole list in bytes: ",sys.getsizeof(S)*len(S)) 
  
# declaring a Numpy array of 1000 elements  
D= np.arange(1000) 
  
# printing size of each element of the Numpy array 
print("Size of each element of the Numpy array in bytes: ",D.itemsize) 
  
# printing size of the whole Numpy array 
print("Size of the whole Numpy array in bytes: ",D.size*D.itemsize) 



#TIMING TEST 


# importing required packages 
import numpy 
import time 
   
# size of arrays and lists 
size = 1000000  
   
# declaring lists 
list1 = range(size) 
list2 = range(size) 
   
# declaring arrays 
array1 = numpy.arange(size)   
array2 = numpy.arange(size) 
   
# capturing time before the multiplication of Python lists 
initialTime = time.time() 
  
# multiplying  elements of both the lists and stored in another list 
resultantList = [(a * b) for a, b in zip(list1, list2)] 
   
# calculating execution time 
print("Time taken by Lists to perform multiplication:",  
      (time.time() - initialTime), 
      "seconds") 
   
# capturing time before the multiplication of Numpy arrays 
initialTime = time.time() 
  
# multiplying  elements of both the Numpy arrays and stored in another Numpy array  
resultantArray = array1 * array2 
   
# calculating execution time  
print("Time taken by NumPy Arrays to perform multiplication:", 
      (time.time() - initialTime), 
      "seconds")


##### SHOWCASE OF CONVINIENCE
#ARRAY MULTIPLICATION USING LISTS

x=[[12,7,3],
[4,5,6],
[7,8,9]]
y=[[5,8,1,2],
[6,7,3,0],
[4,5,9,1]]
result=[[0,0,0,0],
[0,0,0,0],
[0,0,0,0]]
for i in range(len(x)):
    for j in range(len(y[0])):
        for k in range(len(y)):
            result[i][j]+=x[i][k] * y[k][j]
for r in result:
    print(r)

#MULTIPLICATION USING NUMPY ARRAY
a1 = np.array([1, 2, 3])
a2 = np.array([4, 5, 6])
#To mul two array you can simply do it by
print("MUL a1 and a2 elements : ", a1 * a2)


