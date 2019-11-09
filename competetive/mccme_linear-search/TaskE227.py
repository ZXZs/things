input()
a = input().split()
r = None

for i in a:
	i = int(i)
	if not r or i > r:
		r = i

print(r)