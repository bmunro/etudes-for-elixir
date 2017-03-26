defmodule Geom do
  @moduledoc """
    Exercises from the Etudes for Elixir book:
    http://chimera.labs.oreilly.com/books/1234000001642/index.html
  """

  @doc """
    Calculate the area of a rectangle

    ## Parameters
      - length: Length of the rectangle, default 1
      - width:  Width of the rectangle, default 1
  """
  def area(length \\ 1, width \\ 1), do: length * width
end
