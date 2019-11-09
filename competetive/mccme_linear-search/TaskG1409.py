n = int(input()) - 1
a = input().split()
i = 0
m1 = None
m1i = None
m2 = None

while i <= n:
	z = int(a[i])
	if m1 == None or z < m1:
		(m1, m1i) = (z, i)
	i += 1

n -= 1
del a[m1i]
i = 0

while i <= n:
	z = int(a[i])
	if m2 == None or z < m2:
		m2 = z
	i += 1

print(f"{m1} {m2}")