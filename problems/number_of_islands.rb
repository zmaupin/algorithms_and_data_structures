#!/usr/bin/env ruby
# use depth-first search
# the grid is an undirected graph, with an edge between two horizontally or veritcally adjacent
# nodes of value '1'
# algo:
#   - linear scan the grid map, if a node contains '1' then it is a root node, trigger DFS
#   - visit every node and set as 0 to mark it as visited
#   - count the number of nodes that trigger DFS, this is the number of islands
#   - since DFS starting at some root node identifies an island
# @param {Character[][]} grid
# @return {Integer}
def num_islands(grid)
  @grid = grid
  return 0 unless @grid

  @row = grid.length
  @column = 0
 
  @column = grid[0].length if grid[0]
 
  islands = 0
 
  @row.times do |i|
    @column.times do |j|
      if grid[i][j] == '1'
        islands += 1
        dfs(i, j)
      end
    end
  end
 
  islands
end

def dfs(x, y)
  return if (x < 0 || x == @row) ||
            (y < 0 || y == @column) ||
            (@grid[x][y] == '0')

  @grid[x][y] = '0'
  #up 
  dfs(x - 1, y)
  #down
  dfs(x + 1, y)
  #left
  dfs(x, y - 1)
  #right
  dfs(x, y + 1)
end
