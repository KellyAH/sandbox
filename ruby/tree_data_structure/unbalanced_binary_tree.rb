# NOTE: root node and all branching nodes are essentially the same thing.

# Builds a the binary tree data structure.
#
#       O <-- parent node
#      / \
#     x  x  <-- branching child nodes
#
# @param node_value - value of the parent node
# @param left_node_value - value of the left child node
# @param right_node_value - value of the right child node
#
# @return [Node structure]
class Node
  def initialize(node_value, left_node_value=nil, right_node_value=nil)
    @value = node_value
    # child nodes that branch off of a parent node
    @left_child_value = left_node_value
    @right_child_value = right_node_value
  end
end

# build unbalanced binary tree with values (1..10)
# n = nil
#
#                          5
#              |------------------------|
#              2                        7
#        |----------|             |-----------|
#        1          3             6           8
#    |------|   |------|      |------|     |------|
#    n      n   n      4      n      n     n      9
#  |--|   |--| |--|  |--|    |--|  |--|   |--|   |--|
#  n n    n n  n n   n n     n n   n n    n n    n 10

# data = [
#     [5,2,7],
#     [2,1,3], [7,6,8],
#     [1,nil,nil], [3,nil,4], [6,nil,nil], [8,nil,9],
#     [nil,nil,nil], [nil,nil,nil], [nil,nil,nil], [nil,nil,nil],        [nil,nil,nil], [nil,nil,nil], [nil,nil,nil], [nil,nil,10]
# ]

# manually build inefficiently
tree = Node.new(5,
                Node.new(2,
                          Node.new(1,
                                     Node.new(nil,
                                                Node.new(nil),
                                                Node.new(nil),
                                              ),
                                     Node.new(nil,
                                                Node.new(nil),
                                                Node.new(nil),
                                              ),
                                   ),
                          Node.new(3,
                                     Node.new(nil,
                                                Node.new(nil),
                                                Node.new(nil),
                                              ),
                                     Node.new(4,
                                                Node.new(nil),
                                                Node.new(nil),
                                              ),
                                  ),
                        ),
                Node.new(7,
                         Node.new(6,
                                  Node.new(nil,
                                             Node.new(nil),
                                             Node.new(nil),
                                           ),
                                  Node.new(nil,
                                             Node.new(nil),
                                             Node.new(nil),
                                           ),
                                  ),
                         Node.new(8,
                                  Node.new(nil,
                                             Node.new(nil),
                                             Node.new(nil),
                                           ),
                                  Node.new(9,
                                             Node.new(nil),
                                             Node.new(10),
                                           ),
                                  ),
                         )
)

p tree