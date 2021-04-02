require './lib/tic_tac_toe'

RSpec.describe Board do
  def construct_board
    num_start = 1
    num_end = 9
    board_slot_sign = '-'
    board_range = (num_start..num_end).to_a
    cells = {}
    board_range.each do |key|
      cells[key] = board_slot_sign
    end
    cells
  end
  subject { Board }

  describe '#self.make_board' do
    context 'when the game is started, this' do
      it 'returns a hash which the 9 keys having 1 to 9 as key names and hyphens of type string' do
        expect(subject.make_board).to eql(construct_board)
      end
    end

    context 'when the game is started, this' do
      it 'does not return an empty hash' do
        expect(subject.make_board).to_not eql({})
      end
    end
  end

  describe '#self.squares' do
    context 'when the game is started, this' do
      it 'returns a hash of gotten from self.make_board method' do
        expect(subject.squares).to eql(construct_board)
      end
    end

    context 'when the game is started, this' do
      it 'does not return an empty hash' do
        expect(subject.squares).to_not eql({})
      end
    end
  end

  describe '#self.reset' do
    context 'when a round of gameplay is ended, this' do
      it 'returns a hash of hyphens of string type as values' do
        expect(subject.reset).to eql(construct_board)
      end
    end

    context 'when a round of gameplay is ended, this' do
      it 'does not return an empty hash' do
        expect(subject.reset).to_not eql({})
      end
    end
  end
end
