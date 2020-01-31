require 'pry'
require_relative 'customer.rb'
require_relative 'waiter.rb'
require_relative 'meal.rb'

jason = Waiter.new("Jason", 4)
lisa = Customer.new("Lisa", 24)
tim = Customer.new("Tim", 35)
terrance = Customer.new("Terrance", 27)
 
terrance.new_meal(jason, 50, 3)
lisa.new_meal(jason, 40, 10)
tim.new_meal(jason, 45, 8)
 
p jason.best_tipper
p jason.best_tipper.name

# sam = Customer.new("Sam", 27)
# pat = Waiter.new("Pat", 2)
# alex = Waiter.new("Alex", 5)

# rachel = Customer.new("Rachel", 27)
# dan = Waiter.new("Dan", 3)
# alexj = Customer.new("Alex", 30)

# rachel.new_meal(dan, 50, 10)
# alexj.new_meal(dan, 30, 5)

# sam.new_meal(pat, 50, 10)
# sam.new_meal(alex, 20, 3)
# pat.new_meal(sam, 30, 5)

# binding.pry
0