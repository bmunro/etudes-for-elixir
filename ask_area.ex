defmodule AskArea do
  require Geom

  @spec char_to_shape(String.t) :: atom
  def char_to_shape(character) do
    case character do
      "R" -> :rectangle
      "T" -> :triangle
      "E" -> :ellipse
      _   -> :unknown
    end
  end

  @spec get_number(String.t) :: number
  def get_number(prompt) do
    IO.gets(prompt)
    |> String.strip
    |> String.to_integer
  end

  @spec get_dimensions(String.t, String.t) :: {number, number}
  def get_dimensions(prompt1, prompt2) do
    {get_number(prompt1), get_number(prompt2)}
  end

  @spec calculate(atom, number, number) :: number
  def calculate(shape, dim1, dim2) do
    if shape == :unknown or dim1 < 0 or dim2 < 0 do
      IO.puts "borked"
    end

    Geom.area(shape, dim1, dim2)
  end

  def get_shape(prompt) do
    IO.gets(prompt)
    |> String.first
    |> String.upcase
    |> char_to_shape
  end

  def get_dimension_prompts(shape) do
    case shape do
      :rectangle -> {"Enter width > ", "Enter height > "}
      :triangle  -> {"Enter base  > ", "Enter height > "}
      :ellipse   -> {"Enter minor radius > ", "Enter major radius > "}
    end
  end

  def area do
    shape = get_shape "R)ectangle, T)riangle, or E)llipse: "
    {prompt1, prompt2} = get_dimension_prompts shape
    {dim1, dim2} = get_dimensions(prompt1, prompt2)
    area = calculate(shape, dim1, dim2)
    IO.puts area
  end
end
