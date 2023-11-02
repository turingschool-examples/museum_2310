require './lib/museum'
require './lib/patron'
require './lib/exhibit'

RSpec.describe Museum do
  before(:each) do
    @dmns = Museum.new("Denver Museum of Nature and Science")
  end

  describe '#initialize' do
    it 'exists' do
      expect(@dmns).to be_a(Museum)
    end
  end

  describe '#attributes' do
    it 'reads and returns attributes' do
      expect(@dmns.name).to eq("Denver Museum of Nature and Science")
      expect(@dmns.exhibits).to eq([])
    end
  end
end