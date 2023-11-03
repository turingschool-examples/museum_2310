require './lib/exhibit'
require './lib/patron'

RSpec.describe Patron do
  describe '#initialize' do
    it 'has two arguments @name and @spending_money' do
      patron_1 = Patron.new("Bob", 20)

      expect(patron_1.name).to eq("Bob")
      expect(patron_1.spending_money).to eq(20)
    end

    it 'has @interests' do
      patron_1 = Patron.new("Bob", 20)

      expect(patron_1.interests).to eq([])
    end
  end

  describe '#add_interests' do
    it 'can add_interests to an empty array of @interests' do
      patron_1 = Patron.new("Bob", 20)
      patron_1.add_interest("Dead Sea Scrolls")
      patron_1.add_interest("Gems and Minerals")

      expect(patron_1.interests).to eq(["Dead Sea Scrolls", "Gems and Minerals"])
    end
  end
end