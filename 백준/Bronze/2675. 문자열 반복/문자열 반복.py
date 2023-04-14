repeat = int(input())
for i in range(repeat):
    n, l = map(str, input().split())
    n = int(n)
    l = list(l)
    for i in l:
        print(i * n, end="")
    print("")
