defmodule Geom do
  @moduledoc """
    Exercises from the Etudes for Elixir book:
    http://chimera.labs.oreilly.com/books/1234000001642/index.html
  """

  @doc """
    Calculate the area of a geometric shape
  """
  def area(:rectangle, length, width), do: length * width
  def area(:triangle, base, height), do: base * height * 0.5
  def area(:ellipse, radius1, radius2), do: :math.pi * radius1 * radius2
end
