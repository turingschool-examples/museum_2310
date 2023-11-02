class Museum
  attr_reader :name,
              :exhibits,
              :patrons
  def initialize(name)
    @name = name
    @exhibits = []
    @patrons = []
  end

  def add_exhibit(exhibit_name)
    @exhibits << (exhibit_name)
  end

  def admit(patron)
    @patrons << patron
  end

  def recommend_exhibits(patron)
    recommended_exhibits = []
    patron.interests. each do |interest|
      @exhibits.each do |exhibit|
        recommended_exhibits << exhibit if exhibit.name.include?(interest)
      end
    end
    recommended_exhibits
  end

  def patrons_by_exhibit_interest
  interest_hash = Hash.new
    

  end
end
