class Waiter
@@all = []


attr_accessor :name, :years_experience
def initialize(name, years_experience)
  @name = name 
  @years_experience = years_experience
   @@all << self
end 

 def self.all
    @@all    
  end
  
def new_meal(customer, total, tip=0)
    Meal.new(self, customer, total, tip)
  end
  
def meals
  Meal.all.select do |meal|
    meal.waiter == self #checking for waiter now
  end
end

ef best_tipper
  best_tipped_meal = meals.max do |meal_a, meal_b|
    meal_a.tip <=> meal_b.tip
  end
 



end