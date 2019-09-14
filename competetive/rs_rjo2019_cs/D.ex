defmodule M do
	def p(a, s, first, second, i) do
		{u, v} = Enum.at(s, i)

		if (u in first and v in second)
		or (u in second and v in first),
		do: {u, v},
		else: __MODULE__.p(a, s, first, second, i)
	end

	def f(n, m, _, _, _, _) when n != m, do: :IMPOSSIBLE

	def f(n, m, a, s, first, second) when length(first) + length(second) != n do
		max = Enum.max(a)

		first = first ++ [max]
		a = a -- [max]

		max = Enum.max(a)

		second = second ++ [max]
		a = a -- [max]

		__MODULE__.f n, m, a, s, first, second
	end

	def f(_, _, a, s, first, second) do
		if abs(Enum.sum(first) - Enum.sum(second)) > 1 do
			:IMPOSSIBLE
		else
			__MODULE__.p a, s, first, second, 0
		end
	end
end

IO.inspect M.f 6, 6, [1, 1, 2, 3, 3, 1], [
	{1, 3},
	{1, 5},
	{2, 5},
	{2, 6},
	{3, 4},
	{5, 6},
], [], []

IO.inspect M.f 6, 7, [1, 4, 7, 8, 1, 1], nil, [], []