require './lib/tic_tac_toe'

RSpec.describe Scoreboard do
  describe '#increment_score' do
    context 'when there is a winner' do
      it 'increases the players score by one' do
        win_letter = 'X'
        subject.increment_score(win_letter)
        expect(subject.x_score).to eql(1)
      end
    end

    context 'when there is a winner' do
      it 'increases the players score by one' do
        win_letter = 'O'
        subject.increment_score(win_letter)
        expect(subject.o_score).to eql(1)
      end
    end

    context 'when there is no winner' do
      it 'increases the players score by zero' do
        subject.increment_score(nil)
        expect(subject.x_score).to eql(0)
      end
    end

    context 'when there is a winner' do
      it 'increases the players score by zero' do
        subject.increment_score(nil)
        expect(subject.o_score).to eql(0)
      end
    end
  end
end
