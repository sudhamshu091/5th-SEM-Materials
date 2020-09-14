#probably the ost efficient way to find if the number is in fibnaucci series
import math
def check_fibor(n):
    phi = 0.5 + 0.5 * math.sqrt(5.0)
    a = phi * n
    return n == 0 or abs(round(a) - a) < 1.0 / n
print(check_fibor(1))
print(check_fibor(7))
print(check_fibor(8))
