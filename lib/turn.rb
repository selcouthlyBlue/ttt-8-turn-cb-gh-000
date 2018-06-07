def display_board(board)
  display_row(board, 0)
end

def display_row(board, row_index)
  puts " #{board[3 * row_index]} | #{board[3 * row_index + 1]} | #{board[3 * row_index + 2]} "
end
