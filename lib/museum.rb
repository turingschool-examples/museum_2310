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
  end

  def admit(patron)
    @patrons << patron
  end

  def patrons_by_exhibit_interest
    exhibit_interests = {}
  
    @exhibits.each do |exhibit|
      exhibit_interests[exhibit] = []
      # require 'pry'; binding.pry
      @patrons.each do |patron|
        patron_interests = patron.interests
        exhibit_name = exhibit.name
  
        if patron_interests.include?(exhibit_name)
          exhibit_interests[exhibit] << patron
        end
      end
    end
  
    exhibit_interests
  end
end