class Museum
  attr_reader :name, :exhibits, :patrons
  def initialize(name)
    @name = name 
    @exhibits = []
    @patrons =[]
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

  def admit(patron)
    @patrons << patron
  end
end