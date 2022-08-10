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
        puts "The insanity rots your eyes into a pool of muck. Good job!"
    end
end

def door3
    loop do
        puts "You enter yet another dark room with 3 doors. Do you go through door #1, #2, or #3?"

        puts "> "
        room3door = $stdin.gets.chomp
        if room3door == "1" || room3door == "#1"
            door1()
            return

        elsif room3door == "2" || room3door == "#2"
            door2()
            return

        elsif room3door == "3" || room3door == "#3"
            #:nothingtodohere:

        else 
            puts "You stumble around and fall on a knife and die. Good job!"
            return
            puts "did this show?"
        end
    end
    puts "This concludes door 3."
end

puts "You enter a dark room with three doors. Do you go through door #1, #2, or #3?"

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