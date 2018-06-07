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
  return !invalid_position(board, index) && !position_taken?(board, index)
end

def invalid_position(board, index)
  return !index.between?(0, board.length)
end

def position_taken?(board, index)
  status = board[index]
  return !(!status || status == " " || status == "")
end

def move(board, index, char="X")
  board[index] = char
end

def turn(board)
  puts "Please enter 1-9:"
  number = gets.strip
  index = input_to_index(number)
  if valid_move?(board, index)
    move(board, index)
  else
    number = gets.strip
    index = input_to_index(number)
  end
  display_board(board)
end
