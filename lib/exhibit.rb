class Exhibit
  attr_reader :name, :cost

  def initialize(hash) 
    @name = hash[:name]
    @cost = hash[:cost]
  end
end