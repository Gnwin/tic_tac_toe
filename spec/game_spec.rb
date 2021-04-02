require './lib/tic_tac_toe'

RSpec.describe Game do
  num_start = 1
  num_end = 9
  board_range = (num_start..num_end).to_a
  board_range1 = %w[$ ! a b c]
  wins = [[1, 2, 3], [4, 5, 6], [7, 8, 9], [1, 4, 7], [2, 5, 8], [3, 6, 9], [1, 5, 9], [3, 5, 7]]

  describe '#play' do
    context 'when the game is being played, this' do
      it 'inserts the x or o in the availabe board slots' do
        picked_slot = board_range.sample
        expect(subject.play(picked_slot, 'X')).to eql(Board.squares[picked_slot])
      end
    end

    context 'when the game is being played, this' do
      it 'inserts the x or o in the availabe board slots' do
        picked_slot = board_range.sample
        expect(subject.play(picked_slot, 'O')).to eql(Board.squares[picked_slot])
      end
    end

    context 'when the game is being played, this' do
      it 'inserts the x or o in the availabe board slots' do
        picked_slot = board_range.sample
        expect(subject.play(picked_slot, 'X')).to_not eql(Board.squares[board_range1.sample])
      end
    end

    context 'when the game is being played, this' do
      it 'inserts the x or o in the availabe board slots' do
        picked_slot = board_range.sample
        expect(subject.play(picked_slot, 'O')).to_not eql(Board.squares[board_range1.sample])
      end
    end
  end

  describe '#checkmatch' do
    context 'when the game is being played, this' do
      it 'checks the board for a win state' do
        play_letter = 'X'
        char = 'X'
        subject.play(wins[2][0], play_letter)
        subject.play(wins[2][1], play_letter)
        subject.play(wins[2][2], play_letter)
        win = nil
        wins.each do |nums|
          if Board.squares[nums[0]] == char && Board.squares[nums[1]] == char && Board.squares[nums[2]] == char
            win = char
            break
          end
        end
        expect(subject.checkmatch('X')).to eql(win)
      end
    end

    context 'when the game is being played, this' do
      it 'checks the board for a win state' do
        play_letter = 'O'
        char = 'O'
        subject.play(wins[2][0], play_letter)
        subject.play(wins[2][1], play_letter)
        subject.play(wins[2][2], play_letter)
        win = nil
        wins.each do |nums|
          if Board.squares[nums[0]] == char && Board.squares[nums[1]] == char && Board.squares[nums[2]] == char
            win = char
            break
          end
        end
        expect(subject.checkmatch('O')).to eql(win)
      end
    end

    context 'when the game is being played, this' do
      it 'checks the board for a win state' do
        play_letter = 'X'
        play_letter1 = 'O'

        char = 'X'
        subject.play(wins[2][0], play_letter)
        subject.play(wins[2][1], play_letter1)
        subject.play(wins[2][2], play_letter)
        win = nil
        wins.each do |nums|
          if Board.squares[nums[0]] == char && Board.squares[nums[1]] == char && Board.squares[nums[2]] == char
            win = char
            break
          end
        end
        expect(subject.checkmatch('X')).to_not eql(win)
      end
    end

    context 'when the game is being played, this' do
      it 'checks the board for a win state' do
        play_letter = 'X'
        play_letter1 = 'O'

        char = 'O'
        subject.play(wins[2][0], play_letter1)
        subject.play(wins[2][1], play_letter)
        subject.play(wins[2][2], play_letter1)
        win = nil
        wins.each do |nums|
          if Board.squares[nums[0]] == char && Board.squares[nums[1]] == char && Board.squares[nums[2]] == char
            win = char
            break
          end
        end
        expect(subject.checkmatch('X')).to_not eql(win)
      end
    end
  end
end
