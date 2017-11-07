require 'player'
describe Player do
  subject(:player1) { described_class.new('Tom') }
  describe '#name' do
    it 'return player name' do
      expect(player1.name).to eq 'Tom'
    end
  end
  describe '#flag' do
    it 'return player flag' do
      player1.flag = 'x'
      expect(player1.flag).to eq 'x'
    end
  end
end
