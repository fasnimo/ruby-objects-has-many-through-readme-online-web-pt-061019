class Waiter
  attr_accessor :name, :years

  @@all = []

  def initialize(name, years)
    @name = name
    @years = years
    @@all << self
  end

  def self.all
    @@all
  end

  def new_meal(customer, total, tip = 0)
    Meal.new(self, customer, total, tip)
  end

  def meals
    Meal.all.select do |meals|
      meals.waiter == self
    end
  end

  def best_tipper
    best_tipped_meal = meals.max do |meal_1, meal_2|
  end
end
