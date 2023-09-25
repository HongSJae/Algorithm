import math

def solution(progresses, speeds):
    complete = []
    answer = [0]

    if len(progresses) == 1:
        return [1]

    for i in range(len(progresses)):
        complete.append(math.ceil((100-progresses[i])/speeds[i]))

    count = 1
    index = 0
    maxValue = complete[0]
    for i in range(len(complete) - 1):
        if maxValue < complete[i + 1]:
            answer[index] = count
            count = 1
            index += 1
            answer.append(0)
            maxValue = complete[i + 1]
        else:
            count += 1
    if count:
        answer[index] = count
    print(complete)
    return answer