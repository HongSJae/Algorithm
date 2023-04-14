l = list(input())
result = 0
for x in l:
    if ord(x) >= ord('W') and ord(x) <= ord('Z'):
        result += 10
    elif ord(x) >= ord('T') and ord(x) <= ord('V'):
        result += 9
    elif ord(x) >= ord('P') and ord(x) <= ord('S'):
        result += 8
    elif ord(x) >= ord('M') and ord(x) <= ord('O'):
        result += 7
    elif ord(x) >= ord('J') and ord(x) <= ord('L'):
        result += 6
    elif ord(x) >= ord('G') and ord(x) <= ord('I'):
        result += 5
    elif ord(x) >= ord('D') and ord(x) <= ord('F'):
        result += 4
    elif ord(x) >= ord('A') and ord(x) <= ord('C'):
        result += 3
print(result)