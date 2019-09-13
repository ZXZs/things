defmodule M do
	def f(1, _k, a, _i), do: a
	def f(0, _k, a, _i), do: a
	def f(_n, 0, a, _i), do: a

	def f(n, k, a, i) when i == 0, do: __MODULE__.f n, k, a, (i + 1)

	def f(n, k, a, i) when i > (n - 1), do: __MODULE__.f n, (k - 1), a, 0

	def f(n, k, a, i), do: __MODULE__.f n, k, (a |> List.update_at(i, fn x -> x + Enum.at(a, i - 1) end)), i + 1
end

M.f(4, 1, [3, 20, 3, 4], 0)      |> IO.inspect
M.f(1, 1, [3], 0)                |> IO.inspect
M.f(5, 0, [3, 14, 15, 92, 6], 0) |> IO.inspect