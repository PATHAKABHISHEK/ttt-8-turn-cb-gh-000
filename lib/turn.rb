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

def position_not_taken?(board,index)
 if (board[index] == " ")
   return true
 else 
   return false

end

# below given method is valid_move?

def valid_move?
if (index.between?(0,8) && position_not_taken)
  return true
else
  false

end 

