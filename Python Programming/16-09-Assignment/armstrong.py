n = int(input("\nEnter the Number to Check for Armstrong : "))

sum = 0
times = 0

# Calculating Number of individual digits
temp = n
while temp > 0:
           times += 1
           temp = temp // 10

# Finding Armstrong Number
temp = n
while temp > 0:
           reminder = temp % 10
           sum = sum + (reminder ** times)
           temp = temp // 10
if n == sum:
           print(" %d is Armstrong Number.\n" %n)
else:
           print(" %d is Not a Armstrong Number.\n" %n)
