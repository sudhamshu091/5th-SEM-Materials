#Code is not written by me
def kaprekarRec(n, prev):  
  
    if (n == 0): 
        return 0;  
  
    # Store current n as previous  
    # number  
    prev = n;  
  
    # Get four digits of given number  
    digits = [0] * 4;  
    for i in range(4): 
        digits[i] = n % 10; 
        n = int(n / 10);  
  
    # Sort all four dgits in ascending order  
    # And giet in the form of number "asc"  
    digits.sort();  
    asc = 0;  
    for i in range(4): 
        asc = asc * 10 + digits[i];  
  
    # Get all four dgits in descending order  
    # in the form of number "desc"  
    digits.sort();  
    desc = 0;  
    for i in range(3, -1, -1): 
        desc = desc * 10 + digits[i];  
  
    # Get the difference of two numbers  
    diff = abs(asc - desc);  
  
    # If difference is same as previous,  
    # we have reached kaprekar's constant  
    if (diff == prev):  
        return diff;  
  
    # Else recur  
    return kaprekarRec(diff, prev);  
  
# A wrapper over kaprekarRec()  
def kaprekar(n):  
  
    rev = 0;  
    return kaprekarRec(n, rev);  
