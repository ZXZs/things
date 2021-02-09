# Task A
[A, B, C, D] = list(map(int, input().split()))
print(A * B * C * D)

# Task B
k = int(input())
c1 = 0 
c2 = None
n = 1

while k != c1:
    x = n ** 2
    if x % 100 == 25:
        c1 += 1
        c2 = x
    n += 1

print(c2)
