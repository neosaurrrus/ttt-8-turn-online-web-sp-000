

def input_to_index(input)
  index = input.to_i - 1
end

def valid_move?(board, index)
  if index > 8
    false
  elsif index < 0
    false
  elsif board[index] != "  "
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
    puts "Please enter 1-9:"
    input = gets.strip
    index = input_to_index(input)
    if !valid_move?(index)
      valid_move = true
    end
  end
end

def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end
