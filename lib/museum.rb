require './lib/museum'
require './lib/patron'

class Museum 
  attr_reader :name,
              :exhibits,
              :patron

  def initialize(museum_name)
    @name = museum_name
    @exhibits = []
    @patron = []
  end

  def add_exhibit(exhibit)
    @exhibits << exhibit
  end

  def recommend_exhibits(patron)
    recommend_exhibits = []
  
    @exhibits.each do |exhibit|
      # require 'pry'; binding.pry
      if patron.interests.include?(exhibit.name)
        recommend_exhibits << exhibit
      end
    end
    recommend_exhibits
  end
end