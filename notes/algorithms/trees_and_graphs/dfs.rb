#!/usr/bin/env ruby

@visited = []

def dfs(node)
  if !node.nil?
    visit(node)
    @visited << node
    dfs(node.left) unless visited.include?(node.left)
    dfs(node.right) unless visited.include?(node.right)
  end
end
