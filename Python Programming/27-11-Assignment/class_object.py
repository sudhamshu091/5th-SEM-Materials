class Python5B:
    """Demonstrating creation of objects and class"""

    usn1 = int(input("Enter the First USN:"))   #instance attributes
    usn2 = int(input("Enter the Second USN:"))
    usn3 = int(input("Enter the Third USN:"))
    usn4 = int(input("Enter the Fourth USN:"))
    usn5 = int(input("Enter the Fifth USN:"))

    def college(self): #instance method
        print("DSCE")
    def __init__(self):
        self.name ='Sudhamshu B N'
        self.age= 20
        self.marks= 48
    def studinfo(self):
        print("Hello I am :",self.name)
        print("My Age is:",self.age)
        print("My Marks are:",self.marks)

obj1 = Python5B()
obj2 = Python5B()
obj3 = Python5B()     #creating 5 objects of Python5B
obj4 = Python5B()
obj5 = Python5B()

print(obj1.usn1)
print(obj2.usn2)
print(obj3.usn3)     #prints attribute values
print(obj4.usn4)
print(obj5.usn5)

obj1.college()
obj2.college()      # calling method college()
obj3.college()
obj4.college()
obj5.college()

s = Python5B()      # constructor given to s
print(s.studinfo()) # method execution
print(s.__dict__)   # printing as dict
print(Python5B.__doc__) #prints docstring

#Enter the First USN:91
#Enter the Second USN:92
#Enter the Third USN:93
#Enter the Fourth USN:94
#Enter the Fifth USN:95
#91
#92
#93
#94
#95
#DSCE
#DSCE
#DSCE
#DSCE
#DSCE
#Hello I am : Sudhamshu B N
#My Age is: 20
#My Marks are: 48
#None
#{'name': 'Sudhamshu B N', 'age': 20, 'marks': 48}
#Demonstrating creation of objects and class
