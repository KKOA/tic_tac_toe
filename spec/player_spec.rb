require 'player'
describe Player do
  subject(:player1) { described_class.new('Tom') }
  describe '#name' do
    it 'has method' do
      expect(player1).to respond_to(:name)
    end
    it 'return player name' do
      expect(player1.name).to eq 'Tom'
    end
  end
end
