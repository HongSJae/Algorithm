from collections import deque

def solution(priorities, location):
    result = 0
    deq = deque([(i, p) for (i, p) in enumerate(priorities)])

    while True:
        pop = deq.popleft()
        if any(pop[1] < q[1] for q in deq):
            deq.append(pop)
        else:
            result += 1
            if pop[0] == location:
                return result
