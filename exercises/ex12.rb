print "Give me a number: "
number = stdin.gets.chomp.to_i

bigger = number * 100
puts "A bigger number is #{bigger}."

print "Give me another number: "
another = stdin.gets.chomp
number = another.to_f

smaller = number / 100
puts "A smaller number is #{smaller}."

#to_f is float so my initial value of 32 won't just return `0` and be sad and dumb looking.