def calc(string):
	subsize = 1
	matches = {}
	length  = len(string)

	for subsize in range(0, length):
		for index in range(0, length):
			if index + subsize <= length:
				substring = string[index : subsize + index]
				if substring in matches:
					matches[substring] += 1
				else:
					matches[substring] =  1

	valid_sub_lengths = [len(substring) for substring, amount in matches.items() if amount > 1]

	if len(valid_sub_lengths) > 0:
		print(max(valid_sub_lengths))
	else:
		print(0)

if __name__ == '__main__':
	calc("qwerty") # 0
	calc("ababaca") # 3