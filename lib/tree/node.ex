defmodule Tree.Node do
  defstruct value: 0, left: nil, right: nil
  def left_first(nil) do
    []
  end

  def left_first(%Tree.Node{value: value, left: left, right: right}) do
    left_first(left) ++ [value] ++ left_first(right)
  end
end
