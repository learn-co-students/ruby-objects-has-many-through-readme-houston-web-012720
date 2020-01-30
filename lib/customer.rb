require "pry"
class Customer
    attr_accessor :customer_name , :custumer_age 
    @@all = []
    def initialize(customer_name,custumer_age)
        @customer_name = customer_name 
        @custumer_age = custumer_age 
        @@all << self
    end

    def self.all
        @@all
    end

    def new_meal(waiter, total, tip = 0)
        Meal.new(waiter,self,total,tip)
    end

    def meals 
        Meal.all.select{|meal| meal.customer == self}
    end

    def waiters
        meals.map{|meal| meal.waiter}
    end


end