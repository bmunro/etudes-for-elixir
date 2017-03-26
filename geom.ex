defmodule Geom do
  @moduledoc """
    Exercises from the Etudes for Elixir book:
    http://chimera.labs.oreilly.com/books/1234000001642/index.html
  """

  @doc """
    Calculate the area of a geometric shape
  """
  @spec area(atom, number, number) :: number
  def area(shape, dim1, dim2) when dim1 > 0 and dim2 > 0 do
    case shape do
      :rectangle -> dim1 * dim2
      :triangle  -> dim1 * dim2 * 0.5
      :ellipse   -> dim1 * dim2 * :math.pi
    end
  end
end
