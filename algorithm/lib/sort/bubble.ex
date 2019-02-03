defmodule Sort.Bubble do
  def sort([head | [head_ | tail_]]) when head > head_, do: [head_] ++ sort([head] ++ tail_)
  def sort(list = [_ | []]), do: sort(list)

  def sort(list) do
  end
end
