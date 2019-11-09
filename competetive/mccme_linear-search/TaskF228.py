n = int(input()) - 1
a = input().split()
i = 0
r = None
ri = None

while i <= n:
	z = int(a[i])
	if (ri == None) or z > r:
		(r, ri) = (z, i)
	i += 1

print(ri + 1)