defmodule Stats do
  def minimum(numbers) do
    [head|tail] = numbers
    minimum(tail, head)
  end
  defp minimum([], min), do: min
  defp minimum(numbers, min) do
    [head|tail] = numbers
    cond do
      head < min -> minimum(tail, head)
      head >= min -> minimum(tail, min)
    end
  end

  def maximum(numbers) do
    [head|tail] = numbers
    maximum(tail,head)
  end
  defp maximum([], max), do: max
  defp maximum(numbers, max) do
    [head|tail] = numbers
    cond do
      head > max -> maximum(tail, head)
      head <= max -> maximum(tail, max)
    end
  end

  def range(numbers) do
    [minimum(numbers), maximum(numbers)]
  end
end
