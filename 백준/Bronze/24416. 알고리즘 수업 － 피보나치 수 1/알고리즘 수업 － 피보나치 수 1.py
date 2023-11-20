a = int(input())
def fib(n):
    count = 0
    dp = [1] * n
    if n < 2: return 1
    for i in range(2,n):
        dp[i] = dp[i-1] + dp[i-2]
        count += 1
    return dp[n-1], count

fib, count = fib(a)
print(fib, count)