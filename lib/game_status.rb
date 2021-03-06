
# Helper Method
def position_taken?(board, index)
  !(board[index].nil? || board[index] == " ")
end

# Define your WIN_COMBINATIONS constant
WIN_COMBINATIONS = [
  [0, 1, 2],
  [3, 4, 5],
  [6, 7, 8],
  [0, 3, 6],
  [1, 4, 7],
  [2, 5, 8],
  [0, 4, 8],
  [2, 4, 6]
  ]
  
def won?(board)
  WIN_COMBINATIONS.each do |win_combination|
    if position_taken?(board, win_combination[2]) && board[win_combination[0]] == board[win_combination[1]] && board[win_combination[1]] ==  board[win_combination[2]]
      return win_combination
    end
  end
  false
end

def full?(board)
  if board.include?(" ")
    false
  else
    true
  end
end

def draw?(board)
  if full?(board) && !won?(board)
    true
  else
    false
  end
end

def over?(board)
  if full?(board) || won?(board) || draw?(board)
    true
  else
    false
  end
end

def winner(board)
  if win_combination = won?(board)
    return board[win_combination[0]]
  end
end