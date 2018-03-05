#Helper Method
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
  if board.all? do |position|
    if position == " "
      false
    else
      true
    end
  end
end
  board.each do |position|
    if position[0] == position[1] && position[0] == position[2]
      true
    else
      false
    end
  end
end
