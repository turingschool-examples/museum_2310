class Exhibit
  attr_reader :name,
              :cost
  def initialize(name_and_cost_hash)
    @name = name_and_cost_hash[:name]
    @cost = name_and_cost_hash[:cost]
  end
end
