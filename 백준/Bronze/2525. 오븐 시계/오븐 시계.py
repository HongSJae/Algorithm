h, m = map(int, input().split())
time = input()
time = int(time)

m += time
while m >= 60:
    m -= 60
    h += 1
if h >= 24:
    h -= 24

print(h, m)