class Waiter
    attr_reader :name, :exp

    @@all = []

    def initialize (name, exp)
        @name = name
        @exp = exp
        @@all << self
    end

    def new_meal(customer, total, tip)
        Meal.new(self, customer, total, tip)
    end

    def meals
        Meal.all.find_all { |meal|
            meal.waiter == self
        }
    end

    def best_tipper
        self.meals.max { |a,b|
            a.tip <=> b.tip
        }.customer
    end

    def self.all
        @@all
    end
end