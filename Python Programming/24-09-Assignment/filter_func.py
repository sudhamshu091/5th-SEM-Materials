marks = [50, 12, 37, 28, 14, 32]

def filter_func(x):
  if x < 18:
    return False
  else:
    return True

passed = filter(filter_func, marks)

for x in passed:
  print(x)
