class Museum
  attr_reader :name, :exhibits, :patrons

  def initialize(name)
    @name = name
    @exhibits = []
    @patrons = []
  end

  def add_exhibits(exhibit)
    @exhibits << exhibit
  end

  def recommend_exhibits(patron)
    patron.interests.select{|interest| @exhibits.each{|exhibit| exhibit == interest}}
  end

  def patrons_by_exhibit_interest
    patrons_by_exhibit_interest = Hash.new(nil)
    @exhibits.each do |exhibit|
      @patrons.each do |patron|
        if recommend_exhibits(patron).include?(exhibit.name)
          patrons_by_exhibit_interest.store(exhibit, patron)
        else
          patrons_by_exhibit_interest[exhibit]
        end
      end
    end
    patrons_by_exhibit_interest
  end

  def ticket_lottery_contestants(exhibit)
    contestants = patrons_by_exhibit_interest.values.select{|patron| patron.interests.include?(exhibit.name) && patron.spending_money < exhibit.cost}
    contestants == [] ? nil : contestants
  end

  def draw_lottery_winner(exhibit)
    if ticket_lottery_contestants(exhibit) == nil
      nil
    else
      ticket_lottery_contestants(exhibit).select{|contestant| contestant.interests.include?(exhibit.name)}.sample.name
    end
  end

  def announce_lottery_winner(exhibit)
    if ticket_lottery_contestants(exhibit) == nil
      "No winners for this lottery"
    else
      "#{draw_lottery_winner(exhibit)} has won the #{exhibit.name} edhibit lottery"
    end
  end

  def admit(patron)
    @patrons << patron
  end
end