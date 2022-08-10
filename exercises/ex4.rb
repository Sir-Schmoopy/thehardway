cars = 100 #The total number of cars available to us.
space_in_a_car = 4.0 #The amount of seats per-car
drivers = 30 #How many people are available to drive the cars.
passengers = 90 #Total passengers (Including drivers?)
cars_not_driven = cars - drivers #How many cars don't have drivers?
cars_driven = drivers #How many cars do have drivers?
carpool_capacity = cars_driven * space_in_a_car #How many seats are available in the cars we have drivers for?
average_passengers_per_car = passengers / cars_driven #Average passeengers per car.


puts "There are #{cars} cars available"
puts "There are only #{drivers} drivers available}"
puts "There will be #{cars_not_driven} empty cars today."
puts "We can transport #{carpool_capacity} people today."
puts "We have #{passengers} to carpool today."
puts "We need  to put about #{average_passengers_per_car} in each car."