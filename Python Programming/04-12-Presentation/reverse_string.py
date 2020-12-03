def reverse(string):
    length = len(string)
    for i in range(length - 1, -1, -1):
        yield string[i]

print(reverse("Sudhamshu"))
for i in reverse("Sudhamshu"):
    print(i)
