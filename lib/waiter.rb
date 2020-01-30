class Waiter
    attr_accessor :waiter_name , :years_exp 
    @@all = []
    def initialize(waiter_name,years_exp)
        @waiter_name = waiter_name 
        @years_exp = years_exp 
        @@all << self
    end

    def self.all
        @@all
    end

    def new_meal(customer,total,tip = 0)
        Meal.new(self,customer,total,tip)
    end

    def meals 
        # binding.pry
        Meal.all.select{|meal| meal.waiter == self}
    end

    def customer
        meals.map{|e| e.customer}
    end

    def best_tipper
        # binding.pry
        best_customer_tip = meals.max{|cus_a,cus_b| cus_a.tip <=> cus_b.tip}
        best_customer_tip.customer
    end

end