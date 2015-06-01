defmodule Tree.Node do
  defstruct value: 0, left: nil, right: nil

  def left_first(nil) do
    []
  end

  def left_first(%Tree.Node{value: value, left: left, right: right}) do
    left_first(left) ++ [value] ++ left_first(right)
  end

  def right_first(nil) do
    []
  end

  def right_first(%Tree.Node{value: value, left: left, right: right}) do
    right_first(right) ++ [value] ++ right_first(left)
  end

  def right_from_left(tree = %Tree.Node{}) do
    left_first(tree) |> Enum.reverse
  end
end
