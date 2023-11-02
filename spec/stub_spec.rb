require './lib/exhibit'
require './lib/patron'
require './lib/museum'
require './lib/stub'

RSpec.describe Stub do
  it 'exists' do
    stub = Stub.new

    expect(stub).to be_a(Stub)
  end

  it "has a contestants attribute" do
    stub = Stub.new

    expect(stub.contestants).to be_a(Array)
  end

  it "has a winner" do
    stub = Stub.new

    expect(stub.winner).to eq(nil)
  end

end
