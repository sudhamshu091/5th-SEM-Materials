def unpacked_bcd(n):
    Reverse = 0
    while(n > 0):
        num = n % 10;
        n = n // 10;
        print(bin(num-1).replace("0b", "0")+bin(num).replace("0b", "0"))    

unpacked_bcd(4567)

