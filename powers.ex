defmodule Powers do
  import Kernel, except: [raise: 2, raise: 3]

  def raise(x,n) do
    cond do
      n == 0 -> 1
      n > 0  -> raise(x, n, 1)
      n < 0  -> 1.0 / raise(x, -n)
    end
  end

  defp raise(x,n,acc) do
    cond do
      n == 0 -> acc
      true   -> raise(x,n-1,x*acc)
    end
  end

  def nth_root(x,n) do
    nth_root(x, n, x / 2.0)
  end
  defp nth_root(x,n,approx) do
    IO.puts("Current guess is #{approx}")
    f       = raise(approx, n) - x
    f_prime = n * raise(approx, n-1)
    next    = approx - f / f_prime
    change  = abs(next - approx)
    cond do
      change < 1.0e-8 -> next
      true            -> nth_root(x, n, next)
    end
  end

end
