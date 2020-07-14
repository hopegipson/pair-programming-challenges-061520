require "pry"

class Sandwich

  attr_reader :name, :isVegetarian, :isVegan
  attr_accessor :price, :ingredients, :ratings

  def isVegetarian=(boolean)
    @isVegetarian = boolean
    if !boolean
      @isVegan = false
    end
  end

  def isVegan=(boolean)
    @isVegan = boolean
    if boolean
      @isVegetarian = true
    end
  end

  def initialize(name, price, ingredients, bread, isVegetarian, isVegan)
    @name = name
    @price = price
    @ingredients = ingredients
    @bread = bread
    @isVegetarian = isVegetarian
    @isVegan = isVegan
    @ratings = []
  end

  def order
    "You ordered the #{name} which has #{list_ingredients} on #{bread}. That will be $#{price} please!"
  end

  def list_ingredients
    if ingredients.length == 0
      return "nothing"
    elsif ingredients.length == 1
      return ingredients[0]
    else
      return ingredients[0, ingredients.length - 1].join(", ") + " and " + ingredients[-1]
    end
  end

  def add_rating(rating)
    if rating.class == Integer &&  rating >= 1 && rating <= 5
      @ratings << rating
    end
  end

  def average_rating
    if @ratings.length
      @ratings.inject(:+) / @ratings.length.to_f
    else
      "There are no ratings yet!"
    end
  end

end

# Test data
sandwich_1 = Sandwich.new("Grilled Cheese", 2.99, ["cheddar cheese", "monterey jack"], "sourdough", true, false)

sandwich_1.add_rating(3)
sandwich_1.add_rating(3)
sandwich_1.add_rating(3)
sandwich_1.add_rating(4)

binding.pry
puts "Yes chef!"
