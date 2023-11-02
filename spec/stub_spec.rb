require './lib/exhibit'
require './lib/patron'
require './lib/museum'
require './lib/stub'

RSpec.describe Stub do
  it 'exists' do
    stub = Stub.new

    expect(stub).to be_a(Stub)
  end
end
