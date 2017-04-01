defmodule Dates do
  def date_parts(datestring) do
    String.split(datestring, "-")
  end
end
