print "I'm a robot. Give me an amount of money. "
money = gets.chomp.to_f

print "I actually don't need that much. Here's some back."
puts "The robot gave you back $#{money * 0.1}"