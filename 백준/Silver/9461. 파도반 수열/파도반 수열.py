n = int(input())
arr = [int(input()) for _ in range(n)]
a = max(arr)
dp = [0] * (a + 1)
# 1, 1, 1, 2, 2, 3, 4, 5, 7, 9
for i in range(1, a+1):
    if i == 1:
        dp[i] = 1
    elif i == 2:
        dp[i] = 1
    elif i == 3:
        dp[i] = 1
    elif i == 4:
        dp[i] = 2
    elif i == 5:
        dp[i] = 2
    else:
        dp[i] = dp[i-1] + dp[i-5]

for i in arr:
    print(dp[i])