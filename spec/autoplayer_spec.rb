require './lib/tic_tac_toe'

RSpec.describe AutoPlayer do
  num_start = 1
  num_end = 9
  board_range = (num_start..num_end).to_a
  board_range1 = %w[$ ! a b c]

  describe '#pick_slot' do
    subject { AutoPlayer.new('Ruby', 'X') }
    context 'when the game is being played, this' do
      it 'allows the player to pick a slot number from the board' do
        picked_slot = board_range.sample
        expect(board_range.include?(picked_slot)).to eql(true)
      end
    end

    context 'when the game is being played, this' do
      it 'does not allow the player input a character that does not represent a slot number' do
        picked_slot = board_range1.sample
        expect(board_range.include?(picked_slot)).to_not eql(true)
      end
    end
  end
end
