#def birds(how_many)
#    i = 0
#    numbers = []
#
#    while i < how_many
#
#        puts "At the top i is #{i}"
#        numbers.push(i)
#
#        i += 1
#        puts "Numbers now: ", numbers
#        puts "At the bottom i is #{i}"
#    end
#
#    return numbers
#
#end
#
#nums = birds(7)
#puts "The birds: "
#
# remember you can write this 2 other ways?
#nums.each {|num| puts num }


i = 0
numbers = []

while i < 6
  puts "At the top i is #{i}"
  numbers.push(i)

  i += 1
  puts "Numbers now: ", numbers
  puts "At the bottom i is #{i}"
end

puts "The numbers: "

# remember you can write this 2 other ways?
numbers.each {|num| puts num }