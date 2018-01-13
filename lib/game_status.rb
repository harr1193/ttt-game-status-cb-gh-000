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
  
end