require './lib/museum'
require './lib/patron'
require './lib/exhibit'

RSpec.describe Museum do
  before(:each) do 
    @dmns = Museum.new("Denver Museum of Nature and Science")

    @gems_and_minerals = Exhibit.new({name: "Gems and Minerals", cost: 0})
    @dead_sea_scrolls = Exhibit.new({name: "Dead Sea Scrolls", cost: 10})
    @imax = Exhibit.new({name: "IMAX",cost: 15})

    patron_1 = Patron.new("Bob", 20)
    patron_2 = Patron.new("Sally", 20)
  end

  it "exists" do
    expect(@dmns).to be_a(Museum)
  end

  it "has readable attributes" do
    expect(@dmns.name).to eq("Denver Museum of Nature and Science")
    expect(@dmns.exhibits).to eq([])
  end

  it "can add exibits" do
    @dmns.add_exhibit(@gems_and_minerals)
    @dmns.add_exhibit(@dead_sea_scrolls)
    @dmns.add_exhibit(@imax)

    expect(@dmns.exhibits).to eq([<Exhibit:0x00007fb400bbcdd8...>, <Exhibit:0x00007fb400b851f8...>, <Exhibit:0x00007fb400acc590...>])
  end

  it "can add patron intrests and make recs" do 
    @patron_1.add_interest("Dead Sea Scrolls")
    @patron_1.add_interest("Gems and Minerals")

    @patron_2.add_interest("IMAX")

    expect(@dmns.recommend_exhibits(@patron_1)).to eq([<Exhibit:0x00007fb400bbcdd8...>, <Exhibit:0x00007fb400b851f8...>])
    #there shouldn't be a line here but logan empathy means there must be.
    expect(@dmns.recommend_exhibits(@patron_2)).to eq([<Exhibit:0x00007fb400acc590...>])
  end
end
