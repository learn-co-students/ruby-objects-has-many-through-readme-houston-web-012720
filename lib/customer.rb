require 'pry'
# A customer has many meals, and a customer has many
# waiters through those meals. Similarly, a waiter
# has many meals and has many customers through meals.




class Customer
  
    attr_accessor :name, :age

    @@all = []

    def initialize (name, age)
        @name = name
        @age = age
        @@all << self
    end

    def self.all 
        @@all
    end

    def new_meal (waiter, total, tip = 0)
        new_meal  = Meal.new(waiter, self, total, tip)
    end

    def meals
        Meal.all.select {|meal| meal.customer == self}
    end

    def waiters
        meals.map {|meal| meal.waiter}
    end

end


# anam = Customer.new("anam", 25)
# vidhi = Customer.new("Vidhi", 30)
# binding.pry 
# 0