require 'spec_helper'

Rspec.describe Exhibit do 

  before(:each) do 
    @exhibit = Exhibit.new({name: "Gems and Minerals", cost: 0})
    # @patron_1 = Patron.new("Bob", 20)
  end

  it "exists" do 
    expect(@exhibit).to be_a(Exhibit)
    # expect@patron_1).to be_a(Patron)
  end

  it "has readable attributes" do 
    expect(@exhibit.name).to eq("Gems and Minerals")
    expect(@xhibit.cost).to eq(0)
    # expect(@patron_1.name).to eq("Bob")
  end

  # it "can spend money" do 
  #   expect(patron_1.spending_money).to eq(20)
  # end

  it "has "
end