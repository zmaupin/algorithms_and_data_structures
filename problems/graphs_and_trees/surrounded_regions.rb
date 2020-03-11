#!/usr/bin/env ruby
require 'byebug'
=begin
given a 2d array of points on a grid filled with either 'X' or 'O', find and 'capture'
all regions surrounded by 'X'.
if an 'O' is on an edge then it cannot be flipped.
adjacent cells are only vertical / horizontal (no diagonal)
=end
# @param {Character[][]} board
# @return {Void} Do not return anything, modify board in-place instead.
=begin
given a 2d array of points on a grid filled with either 'X' or 'O', find and 'capture'
all regions surrounded by 'X'.
if an 'O' is on an edge then it cannot be flipped.
adjacent cells are only vertical / horizontal (no diagonal)
=end
# @param {Character[][]} board
# @return {Void} Do not return anything, modify board in-place instead.
def solve(board)
  return if board.nil? || board.empty?
  
  @q = [] # queue
  
  @rows = board.length
  @columns = board[0].length
  
  board.each_index do |i|
    board[i].each_index do |j|
      next if board[i][j] == 'X'
      
      if (i == 0 || j == 0 || j == @columns - 1 || i == @rows - 1) && board[i][j] == 'O'
        @q << [i, j]
      end
    end
  end

  bfs(board)
  
  board.each_index do |i|
    board[i].each_index do |j|
      board[i][j] = 'X' if board[i][j] == 'O'
      board[i][j] = 'O' if board[i][j] == 'S'
    end
  end
end

def bfs(board)
  while (!@q.empty?)
    node = @q.delete_at(0)
    return if node.nil?
    i = node[0]
    j = node[1]

    board[i][j] = 'S'
    
    [[-1, 0], [1, 0], [0, -1], [0, 1]].each do |direction|
      x_new = direction[0]
      y_new = direction[1]
      
      if (x_new >= 0 && x_new < @rowsy_new >= 0 && 
    end
    next if (i == 0) || (j == 0) || (i == board.length - 1) || (j == board[i].length - 1)


    @q << [i + 1][j] if board[i + 1][j] == 'O'
    @q << [i - 1][j] if board[i - 1][j] == 'O'
    @q << [i][j + 1] if board[i][j + 1] == 'O'
    @q << [i][j - 1] if board[i][j - 1] == 'O'
  end
end

board = [["O","X","O"],["X","O","X"],["O","X","O"]]
board2 = [["X","X","X","X"],["X","O","O","X"],["X","X","O","X"],["X","O","X","X"]]
p board
solve(board)

p board2
solve(board2)
