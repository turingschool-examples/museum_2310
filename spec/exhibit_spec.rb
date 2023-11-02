require './lib/exhibit'
require './lib/patron'

Rspec.describe Exhibit do 

  before(:each) do 
    @exhibit = Exhibit.new({name: "Gems and Minerals", cost: 0})
  end

it "exists" do 
  expect(@exhibit).to be_a(Exhibit)
end