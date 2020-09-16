n = int(input("Enter limit:"))
for i in range(0, n+1):
   if(i%3==0):
      print("Clap",i)
for i in range(0, n+1):
   if(i%5==0):
      print("Hha Ha",i)
for i in range(0, n+1):
   if((i%3==0) & (i%5==0)):
      print("Clap, Hha Ha",i)
