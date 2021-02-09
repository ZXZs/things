# Task A
[A, B, C, D] = list(map(int, input().split()))
print(A * B * C * D)

# Task B
k = int(input())
c = [0, None]
n = 1

while k != c[0]:
    x = n ** 2
    if x % 100 == 25:
        c = [c[0]+1, x]
    n += 1

print(c[1])
