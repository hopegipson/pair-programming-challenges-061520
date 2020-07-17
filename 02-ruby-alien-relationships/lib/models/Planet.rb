#Hope, Idalis, William
class Planet

  attr_reader :name
  attr_accessor :alien

  @@all = []


  def initialize(name)
    @name = name
    @aliens = []

    @@all << self
  end

  def self.all
    @@all
  end

  def add_alien(name)
    alien1 = Alien.new(name)
    alien1.planet = self
    @aliens << alien1
  end

  def aliens
    @aliens
  end

  def single_aliens
    Alien.singles.select do |alien| #Alien.singles should return an array of singles
      alien.planet == self
    end
  end

  def self.empty_planets
    Planet.all.select do |planet|
      planet.aliens = []
    end
  end



end
