class Museum
  attr_reader :name, :exhibits
  def initialize(name)
    @name = name 
    @exhibits = []
  end

  def add_exhibit(exhibit)
    @exhibits << exhibit
  end

  def recommend_exhibits(patron)
    recommend_exhibits = @exhibits.find_all do |exhibit|
      patron.interests.include?(exhibit.name)
    end
    recommend_exhibits
  end
end