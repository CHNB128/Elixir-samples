defmodule Search.Linear do
  @doc """
  Complex: O(n)
  """
  def search(nil, _), do: nil
  def search([], _), do: nil
  def search([head | _], value) when value == head, do: value
  def search([_ | tail], value), do: search(tail, value)
end
