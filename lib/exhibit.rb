class Exhibit
  attr_reader :cost

  def initialize(hash) 
    @name = hash[:name]
    @cost = hash[:cost]
  end

  def name
    @name
  end
end