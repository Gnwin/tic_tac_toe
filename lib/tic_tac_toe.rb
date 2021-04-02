# rubocop:disable Style/ClassVars

class Board
  @@num_start = 1
  @@num_end = 9
  @@board_slot_sign = '-'
  @@board_range = (@@num_start..@@num_end).to_a
  @@squares = {}

  def self.make_board
    @@board_range.each do |key|
      @@squares[key] = @@board_slot_sign
    end
    @@squares
  end
  make_board

  def self.squares
    @@squares
  end

  def self.reset
    make_board
  end
end

class Player
  attr_reader :name, :letter

  def initialize(name, letter)
    @name = name
    @letter = letter
  end

  def pick_slot
    board = Board.squares.select { |_key, value| value == '-' }
    arr1 = []
    board.each { |k, _v| arr1 << k }
    display_guide
    choose(@name, arr1)
    loop do
      @slot = input
      break if board[@slot] == '-'

      warn
    end
    @slot
  end
end

class Game
  def play(board_slot, character)
    Board.squares[board_slot] = character
  end

  def checkmatch(char)
    win_combinations = [[1, 2, 3], [4, 5, 6], [7, 8, 9], [1, 4, 7], [2, 5, 8], [3, 6, 9], [1, 5, 9], [3, 5, 7]]
    win_combinations.each do |nums|
      return char if Board.squares[nums[0]] == char && Board.squares[nums[1]] == char && Board.squares[nums[2]] == char
    end
  end
end

class Scoreboard
  attr_reader :x_score, :o_score

  def initialize
    @x_score = 0
    @o_score = 0
  end

  def increment_score(char)
    @x_score += 1 if char == 'X'
    @o_score += 1 if char == 'O'
  end
end

class AutoPlayer < Player
  def pick_slot
    board = Board.squares.select { |_key, value| value == '-' }
    arr1 = []
    board.each { |k, _v| arr1 << k }
    display_guide
    choose(@name, arr1)
    loop do
      @slot = arr1.sample
      break if board[@slot] == '-'
    end
    @slot
  end
end

class AutoGame < Game; end

# rubocop:enable Style/ClassVars
