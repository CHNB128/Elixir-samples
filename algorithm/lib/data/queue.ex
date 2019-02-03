defmodule Data.Queue do
  alias Data.Queue, as: Queue

  defstruct nodes: [], limit: 0

  def enqueue(%Queue{nodes: nodes, limit: limit}, _) when length(nodes) == limit do
    throw("Queue is full")
  end

  def enqueue(%Queue{nodes: nodes, limit: limit}, node) when length(nodes) < limit do
    %Queue{nodes: nodes ++ [node], limit: limit}
  end

  def dequeue(%Queue{nodes: nodes}) when length(nodes) == 0 do
    throw("Queue is empty")
  end

  def dequeue(%Queue{nodes: [head | tail]}), do: {%Queue{nodes: tail}, head}
end
