require './lib/exhibit'
require './lib/patron'

RSpec.describe Exhibit do
  describe '#initialize' do
    it 'has one argument, a Hash' do
      exhibit = Exhibit.new({name: "Gems and Minerals", cost: 0})

      expect(exhibit).to be_a(Exhibit)
    end

    it 'has two attributes, @name and @cost' do
    exhibit = Exhibit.new({name: "Gems and Minerals", cost: 0})
    
    expect(exhibit.name).to eq("Gems and Minerals")
    expect(exhibit.cost).to eq(0)
    end
  end
end