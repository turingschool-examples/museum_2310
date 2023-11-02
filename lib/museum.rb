class Museum
  attr_reader :name,
              :exhibits
  def initialize(name)
    @name = name
    @exhibits = []
  end

  def add_exhibit(exhibit_name)
    @exhibits << (exhibit_name)
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
end
