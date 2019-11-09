input()
a = list(map(int, input().split()))
x = int(input())
c = None

for i in a:
  if not c or abs(x - i) < abs(x - c):
    c = i

print(c)