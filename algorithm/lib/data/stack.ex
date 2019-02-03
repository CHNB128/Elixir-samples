defmodule Data.Stack do
  alias Data.Stack, as: Stack

  defstruct nodes: []

  def push(nil, node), do: %Stack{nodes: [node]}

  def push(%Stack{nodes: nodes}, node), do: %Stack{nodes: [node] ++ nodes}

  def pop(%Stack{nodes: [head | tail]}), do: {%Stack{nodes: tail}, head}

  def peek(%Stack{nodes: [head | _]}), do: head
end
