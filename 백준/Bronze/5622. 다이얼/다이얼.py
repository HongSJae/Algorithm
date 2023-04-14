l = list(input())
sum = 0
alphabet = ['ABC', 'DEF', 'GHI', 'JKL', 'MNO', 'PQRS', 'TUV', 'WXYZ']
for alpha in alphabet:
    for i in l:
        if i in alpha:
            sum += alphabet.index(alpha) + 3
print(sum)