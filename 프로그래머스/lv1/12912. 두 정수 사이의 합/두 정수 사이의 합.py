def solution(a, b):
    sum = 0
    for i in range(min(a, b), max(a, b) + 1):
        sum += i
    return sum