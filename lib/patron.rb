class Patron
  attr_reader :name,
              :spending_money,
              :interests
  def initialize(name, monies_count)
    @name = name
    @spending_money = monies_count
    @interests = []
  end

  def add_interest(interest)
    @interests << interest
  end
end
