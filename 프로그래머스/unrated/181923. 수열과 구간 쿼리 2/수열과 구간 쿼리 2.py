def solution(arr, queries):
    answer = []
    for query in queries:
        s = int(query[0])
        e = int(query[1]) 
        k = int(query[2])
        array = arr[s: e + 1]
        try:
            answer.append(min(list(filter(lambda n : n > k, array))))
        except:
            answer.append(-1)
    return answer