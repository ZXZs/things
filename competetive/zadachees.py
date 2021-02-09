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

# Task C (вроде робит, но по примеру не робит ):)
n = int(input())

max_time = 5 * 60
current_time = 0
tasks_solved = 0

for i in range(0, n):
    times = list(map(int, input().split()))
    m = min(times)
    if current_time + m <= max_time:
        current_time += m
        tasks_solved += 1
    if current_time == max_time:
        break

print(f"{tasks_solved} {current_time}")
