defmodule Dates do
  def date_parts(datestring) do
    String.split(datestring, "-")
  end

  def julian(date) do
    [year, month, day] = date_parts(date)
    feb = cond do
      is_leap_year(String.to_integer(year)) -> 29
      true -> 28
    end
    month_days = [31, feb, 31, 30, 31, 30, 31, 31, 30, 31, 30, 31]
    month_total(String.to_integer(month), month_days, 0) + String.to_integer(day)
  end

  def month_total(1, _month_days, acc), do: acc
  def month_total(n, month_days, acc) do
    [head|tail] = month_days
    month_total(n-1, tail, acc+head)
  end

  defp is_leap_year(year) do
    (rem(year,4) == 0 and rem(year,100) != 0)
    or (rem(year, 400) == 0)
  end
end
