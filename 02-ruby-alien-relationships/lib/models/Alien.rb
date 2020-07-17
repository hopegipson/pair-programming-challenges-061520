# Hope, Idalis, William
class Alien

  attr_reader :name
  attr_accessor :significant_other, :planet

  @@all = []


  def initialize(name)
    @name = name
    @significant_other = nil

    @@all << self
  end

  def self.all
    @@all
  end

  def planet_name
    if self.planet
      self.planet.name
    else
      nil
    end

    def go_on_date(alientodate)
      if self.significant_other == nil && alientodate.significant_other == nil
        self.significant_other = alientodate
        alientodate.significant_other = self
      else
        "Cheater!!"
      end

    def breakup
      alientobesingle = self.significant_other
      alientobesingle.significant_other = nil
      self.significant_other = nil
    end
      
    def ready_to_move
      if self.planet != self.significant_other.planet
        sigotherplanet = self.significant_other.planet
        self.planet = sigotherplanet
      else
        nil
      end
    end

    def self.singles
      Alien.all.select do |alien|
       if alien.significant_other == nil
      end
    end

    def self.dating
      Alien.all.select do |alien|
        alien.significant_other != nil
      end
    end


  

end
