lower = int(input("Enter lower range limit:"))
upper = int(input("Enter upper range limit:"))
for i in range(lower, upper+1):
   if(i%3!=0):
      print("1 to 96 not divisible by 3",i)
for i in range(lower, upper+1):
   if(i%5!=0):
      print("1 to 96 not divisible by 5",i)
for i in range(lower, upper+1):
   if(i%3==0):
      print("1 to 96 divisible by 3",i)
for i in range(lower, upper+1):
   if(i%5==0):
      print("1 to 96 divisible by 5",i)
for i in range(lower, upper+1):
   if((i%3==0) & (i%5==0)):
      print("1 to 96 divisible by both 3 and 5",i)
for i in range(lower, upper+1):
   if((i%3==0) & (i%5==0) & (i%2==0)):
      print("1 to 96 divisible by both 3 and 5 and is even",i)
#lower linit=1
#upper limit=96
