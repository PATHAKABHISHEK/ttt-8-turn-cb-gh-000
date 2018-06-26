# below given method is display_board
def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
  puts "-----------"
end

#below given method is input_to_index

def input_to_index(user_input)
user_input = user_input.to_i
index = user_input-1
return index
end

# below given method is position_taken

def position_taken?(board,index)
 if (board[index] == " ")
   return true
 else
   return false
end
end

# below given method is valid_move?

def valid_move?(board,index)
if (index.between?(0,8) && position_taken?(board,index))
  return true
else
  false
end
end

# below is the method move

def move(board,index,input_charachter = "X" )
board[index] = input_charachter
end


# below is the given method, turn

def turn(board)
puts "Please enter 1-9:"
user_input = gets.chomp
z = input_to_index(user_input)
if valid_move?(board,z)
  move(board,z,"X")
  display_board(board)
else
  until valid_move?(board,z)
    puts "Please enter 1-9:"
    turn(board)
  end
end
end
