def solution(my_string, n):
    answer = ''
    for c in my_string:
        answer += c * n
    return answer