require './lib/exhibit'
require './lib/patron'

RSpec.describe Exhibit do
  describe '#initialize' do
    it 'has two arguments @name and @cost' do
      exhibit = Exhibit.new({name: "Gems and Minerals", cost: 0})

      expect(exhibit.name).to eq("Gems and Minerals")
      expect(exhibit.cost).to eq(0)
    end
  end
end