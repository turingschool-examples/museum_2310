class Museum
  attr_reader :name,
              :exhibits,
              :patrons,
              :lottery_contestants
  def initialize(name)
    @name = name
    @exhibits = []
    @patrons = []
    @lottery_contestants = []
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
    @exhibits.each do |exhibit| #trouble getting all patrons into respective keys
      @patrons.each do |patron| #wasted a lot of time :( can't get more than one patron to go to hash value
      interest_hash[exhibit] = [patron] if patron.interests.include?(exhibit.name)
      end
    end
    interest_hash
  end

  def ticket_lottery_contestants(exhibit)
    contestants = []
    @patrons.each do |patron|
      contestants << patron if patron.spending_money < exhibit.cost
    end
    @lottery_contestants << contestants
    contestants
  end

  def draw_lottery_winner
    
  end
end
