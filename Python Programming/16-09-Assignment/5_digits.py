a=int(input("Enter first number:"))
b=int(input("Enter second number:"))
c=int(input("Enter third number:"))
d=int(input("Enter fourth number:"))
e=int(input("Enter fifth number:"))
f=[]
f.append(a)
f.append(b)
f.append(c)
f.append(d)
f.append(e)
for i in range(0,5):
    for j in range(0,5):
        for k in range(0,5):
            for l in range(0,5):
                for m in range(0,5):
                    if(i!=j and i!=k and i!=l and i!=m and j!=k and j!=l and j!=m and k!=l and k!=m and l!=m):
                        print(f[i],f[j],f[k],f[l],f[m])
