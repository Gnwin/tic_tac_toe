#spec/tic_tac_toe_spec.rb


require './lib/tic_tac_toe.rb'


describe Board do
  describe ".squares" do
    it "returns a hash that respresents the board" do
      expect(Board.squares).to eql( {1 => '-', 2 => '-', 3 => '-', 4 => '-', 5 => '-', 6 => '-', 7 => '-', 8 => '-', 9 => '-'} )
    end
  end
  
  describe ".reset" do
    it "returns a hash that respresents the board" do
      expect(Board.squares).to eql( {1 => '-', 2 => '-', 3 => '-', 4 => '-', 5 => '-', 6 => '-', 7 => '-', 8 => '-', 9 => '-'} )
    end
  end
end

describe Player do
  
end