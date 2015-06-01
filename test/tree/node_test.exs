defmodule Tree.NodeTest do
  use ExUnit.Case

  setup do
    tree = %Tree.Node{
      value: 3,
      left: %Tree.Node{
        value: 15,
        left: %Tree.Node{
          value: 22,
          left: %Tree.Node{
            value: 30
          }
        },
        right: %Tree.Node{
          value: 18,
          right: %Tree.Node{
            value: 35
          }
        }
      },
      right: %Tree.Node{
        value: 8,
        left: %Tree.Node{
          value: 14
        },
        right: %Tree.Node{
          value: 4,
          left: %Tree.Node{
            value: 11
          },
          right: %Tree.Node{
            value: 25
          },
        }
      }
    }
    {:ok, tree: tree}
  end

  test "right-first traversal", %{tree: tree} do
    assert Tree.Node.right_first(tree) == [25, 4, 11, 8, 14, 3, 35, 18, 15, 22, 30]
  end

  test "right_from_left traversal", %{tree: tree} do
    assert Tree.Node.right_from_left(tree) == [25, 4, 11, 8, 14, 3, 35, 18, 15, 22, 30]
  end

  test "left-first traversal", %{tree: tree} do
    assert Tree.Node.left_first(tree) == [30, 22, 15, 18, 35, 3, 14, 8, 11, 4, 25]
  end
end

#
#             3
#           /   \
#          15    8
#        /  \   /  \
#      22  18  14   4
#     /      \     / \
#    30      35   11  25
