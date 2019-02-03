defmodule Search.Binary do
  def search(list, value) do
    len = length(list)
    mid_index = div(len, 2)
    mid = Enum.at(list, mid_index - 1)

    if mid == value do
      value
    else
      if mid > value do
        search(Enum.slice(list, 0, mid_index), value)
      else
        search(Enum.slice(list, mid_index, len), value)
      end
    end
  end
end
