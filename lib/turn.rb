def display_board(board, divider="-----------")
  puts divider
  display_row(board, 0)
  puts divider
  display_row(board, 1)
  puts divider
  display_row(board, 2)
end

def display_row(board, row_index)
  puts " #{board[3 * row_index]} | #{board[3 * row_index + 1]} | #{board[3 * row_index + 2]} "
end

def input_to_index(number)
  return number.to_i - 1
end

def valid_move?(board, index)
  if index.between?(0, board.length) && !position_taken?(board, index)
    return true
  end
  return false
end

def position_taken?(board, index)
  status = board[index]
  if !status || status == " " || status == ""
    return false
  end
  return true
end
