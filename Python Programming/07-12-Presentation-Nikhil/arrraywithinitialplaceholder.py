import numpy as np

array1=np.zeros((2,3))
print(f"array consisting of all zeros of specified dimension=\n{array1}")

array2=np.ones((3,4))
print(f"array consisting of all ones of specified dimension=\n{array2}")


array3=np.empty((2, 2))
print(f"array created using empty method\n {array3}")


array4=np.full((3,3),2)
print(f"array created using full method \n {array4}")


array5=np.eye(3,3)
print(f"Identity matrix \n {array5}")

array6=np.random.random((2,2))
print(f"A random matrix generated for given dimension \n{array6}")

#  To sample Unif[a, b), b > a multiply the output of random_sample by (b-a) and add a
print(f"random matrix in range [-5,0) is \n {5 * np.random.random_sample((3, 2)) - 5}")

#np.arrange
print(f" array that starts with 1 and end point being 10(excluded) in steps of 3 \n{np.arange(start=1, stop=10, step=3)}")

print(f" array that starts with 1 and end point being 10 in steps of 3 \n{np.arange(start=1, stop=10.1, step=3)}")

print(f" np.arrange with two argumnets \n{np.arange(1, 10)}")

print(f"np.arrange with one argument \n {np.arange(10)}")

#np.line space
print(f" array that starts with zero and ends at 2(including) with nine samples between them \n{np.linspace(0, 2, 9)}")

print(f"np.linespace with only two argumnets \n {np.linspace(1, 10)}")

# linspace is rather similar to the np. arange function. The essential difference between NumPy linspace and NumPy arange is that linspace enables you to control the precise end value, whereas arange gives you more direct control over the increments between values in the sequence.
 


