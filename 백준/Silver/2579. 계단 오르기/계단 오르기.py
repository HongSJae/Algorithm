n = int(input())

ls = [int(input()) for _ in range(n)]

if n<=2:
    print(sum(ls))
else:
    dp = [0] * n
    dp[0] = ls[0]
    dp[1] = ls[0] + ls[1]
    dp[2] = max(ls[0], ls[1]) + ls[2]

    for i in range(3, n):
        dp[i] = max(dp[i - 2], dp[i - 3] + ls[i - 1]) + ls[i]
    print(dp[n-1])
