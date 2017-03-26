defmodule Geom do
  @moduledoc """
    Exercises from the Etudes for Elixir book:
    http://chimera.labs.oreilly.com/books/1234000001642/index.html
  """

  @doc """
    Calculate the area of a geometric shape
  """
  @spec area(atom, number, number) :: number
  def area(:rectangle, length, width) when length > 0 and width > 0 do
    length * width
  end
  def area(:triangle, base, height) when base > 0 and height > 0 do
    base * height * 0.5
  end
  def area(:ellipse, radius1, radius2) when radius1 > 0 and radius2 > 0 do
    :math.pi * radius1 * radius2
  end
end
