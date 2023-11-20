n = int(input())
arr = [int(input()) for _ in range(n)]
a = max(arr)
dp = [0] * (a + 1)
for i in range(1, a+1):
    if i == 1:
        dp[i] = 1
    elif i == 2:
        dp[i] = 2
    elif i == 3:
        dp[i] = 4
    elif i == 4:
        dp[i] = 7
    else:
        dp[i] = dp[i-2] + dp[i-1] + dp[i-3]

for i in arr:
    print(dp[i])