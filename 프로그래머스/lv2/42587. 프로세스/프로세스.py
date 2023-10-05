from collections import deque

def solution(priorities, location):
    result = []
    chrInt = 65
    tuples = deque()
    for p in priorities:
        tuples.append((p, chr(chrInt)))
        chrInt += 1
    while 1:
        print(result)
        pop = tuples.popleft()
        if not tuples: 
            result.append(pop)
            break
        if pop[0] >= max(tuples, key = lambda x:x[0])[0]:
            result.append(pop)
        else:
            tuples.append(pop)

    arr = [x[1] for x in result]
    return arr.index(chr(65 + location)) + 1