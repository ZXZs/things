# i am not sure about correctness of this solution

def main(N, K, X, A):
	current = {"key": 0, "value": A[0]}
	finish  = {"key": len(A) - 1, "value": A[len(A) - 1]}
	_X_     = X
	counter = 0

	if current['value'] < finish['value']: # ++
		while True:
			if current['value'] == finish['value']:
				if counter <= K:
					print(counter)
				else:
					print(-1)
				break

			if _X_ == 0:
				print(-1)
				break

			if current['value'] + _X_ in A:
				current['value'] += _X_
				current['key'] = A.index(current['value'])
				counter += 1
				continue
			else:
				_X_ -= 1
				continue
	elif current['value'] > finish['value']: # --
		while True:
			if current['value'] == finish['value']:
				if counter <= K:
					print(counter)
				else:
					print(-1)
				break

			if _X_ == 0:
				print(-1)
				break

			if current['value'] - _X_ in A:
				current['value'] -= _X_
				current['key'] = A.index(current['value'])
				counter += 1
				continue
			else:
				_X_ -= 1
				continue

if __name__ == '__main__':
	main(6, 3, 3, [7, 10, 9, 13, 14, 15]) # 3
	main(5, 2, 1, [4, 6, 2, 13, 15])      # -1