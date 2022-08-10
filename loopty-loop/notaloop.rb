# When trying to get a map in my head for turning this ZORK game into a loop
# I ended up learning about recursion, which is a bad bad thing even if it
# didn't actually break anything here.


# The first thing I ended up doing (At Sam's instruction) was turning each door into a method.
# This was pretty easy and didn't change much.

def door1
    puts "There's a giant bear here eating a cheese cake. What do you do?"
    puts "1. Take the cake."
    puts "2. Scream at the bear."
    print "> "
    bear = $stdin.gets.chomp
    if bear == "1"
        puts "The bear eats your face off. Good job!"
    elsif bear == "2"
        puts "The bear eats your legs off. Good job!"
    else
        puts "Well, doing %s is probably better. Bear runs away." % bear
    end
end

# door2 was also turned into a method here. Real easy.

def door2
    puts "You stare into the endless abyss at Cthulu's retina."
    puts "1. Blueberries."
    puts "2. Yellow jacket clothespins."
    puts "3. Understanding revolvers yelling melodies."

    print "> "
    insanity = $stdin.gets.chomp

    if insanity == "1"
        puts "Your body survives powered by a mind of jello. Good job!"
    else
        puts "The instanity rots your eyes into a pool of muck. Good job!"
    end
end

# And now we get to door3. I wanted door3 to loop you back into the original room
# with the same doors (including door3).
# Now what this does is call the whatever function is assigned to the inputs from the command line
# Including itself! This is "recursion". 
# What that does is add a "stack" to the code being executed and each instance of
# entering door3 adds another stack on top of that. Now, hitting a softcap to where the terminal
# can't run the code anymore because you had too many stacks is almost impossible to do manually
# like this. But if it were automated to choose 3 everytime it'd break real quick.

# See fibonacci.rb for a better example of recursion being bad. 

def door3
    puts "You enter yet another dark room with 3 doors. Do you go through door #1, #2, or #3?"
    
    puts "> "
    room3door = $stdin.gets.chomp
    if room3door == "1" || room3door == "#1"
        door1()
    
    elsif room3door == "2" || room3door == "#2"
        door2()
    
    elsif room3door == "3" || room3door == "#3"
        door3()
    
    else 
        puts "You stumble around and fall on a knife and die. Good job!"    
    end
end

puts "You enter a dark room with three doors. Do you go through door #1, #2, or #3?"


# Here's the command line interactions. 

print"> "
door = $stdin.gets.chomp

if door == "1" || door == "#1"
    door1()

elsif door == "2" || door == "#2"
    door2()

elsif door == "3" || door == "#3"
    door3()

else 
    puts "You stumble around and fall on a knife and die. Good job!"
end