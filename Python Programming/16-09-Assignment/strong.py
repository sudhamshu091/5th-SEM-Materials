n = int(input(" Please Enter any Number: "))
sum = 0
temp = n

while(temp > 0):
    factorial = 1
    i = 1
    reminder = temp % 10

    while(i <= reminder):
        factorial = factorial * i
        i = i + 1

    print("\n Factorial of %d = %d" %(reminder, factorial))
    sum = sum + factorial
    temp = temp // 10

print("\n Sum of Factorials of a Given Number %d = %d" %(n, sum))

if (sum == n):
    print(" %d is a Strong Number" %n)
else:
    print(" %d is not a Strong Number" %n)
