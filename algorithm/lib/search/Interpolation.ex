defmodule Search.Interpolation do
  def search(_, value) when value < 0, do: nil

  def search(list, value) do
    len = length(list) - 1
    index = 0 + (len - 0) / (Enum.at(list, len) - Enum.at(list, 0)) * (value - Enum.at(list, 0))
    Enum.at(list, round(index))
  end
end
