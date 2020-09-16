n = int(input("Enter a number \n"))
sumfactor = 0

#Calculating the sum of Factors
for i in range(1,n):
    if n%i == 0:
        sumfactor += i;

if sumfactor == n:
    print("Entered number is a Perfect Number")
else:
    print("Enetered number is not a Perfect Number")
#perfect number 1+2+3=6
