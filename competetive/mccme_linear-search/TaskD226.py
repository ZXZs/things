n = int(input())
a = list(map(int, input().split()))
x = int(input())
i = 0
r = []

while i <= (n - 1):
	if a[i] == x:
		r.append(i + 1)
	i += 1

r = map(str, r)
print(' '.join(r))