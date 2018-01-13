# Helper Method
def position_taken?(board, index)
  !(board[index].nil? || board[index] == " ")
end

# Define your WIN_COMBINATIONS constant
WIN_COMBINATIONS = [
  [0,1,2], #Top row
  [3,4,5], #Middle row
  [6,7,8], #Bottom row
  [0,3,6], #First column
  [1,4,7], #Middle columns
  [2,5,8], #Last columns
  [0,4,8], #Diagnol
  [2,4,6] #Diagnol
]

def won?(board)
  WIN_COMBINATIONS.each do |win_combination|
    win_index_1 = win_combination[0]
    win_index_2 = win_combination[1]
    win_index_3 = win_combination[2]

    pos_1 = board[win_index_1]
    pos_2 = board[win_index_2]
    pos_3 = board[win_index_3]

    if position_taken(board, win_index_1) && position_taken(board, win_index_2) && position_taken(board, win_index_3)
      all_pos = [pos_1, pos_2, pos_3].all? do |pos|
        pos == "X" || pos == "Y"
      end
      all_pos ? (return win_combination) : (return false)
    else
      return false
    end
  end
end
