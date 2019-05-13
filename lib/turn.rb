def display_board(board)
  puts "   |   |   "
  puts "-----------"
  puts "   |   |   "
  puts "-----------"
  puts "   |   |   "
end

def input_to_index(input)
  index = input - 1
end

def valid_move?(index)
  if index > 8
    false
  elsif index < 0
    false
  else
    true
  end

end

def move (board, index, token = "X")
  board[index] = token
  puts board
  puts "end"
end

def turn(board)
  # TODO: Add code Here
  valid_move = false
  while !valid_move
    puts "Please enter 1-9"
    input = gets.strip
    index = input_to_index(input)
    if !valid_move?(index)
      valid_move = true
    end
  end
end
