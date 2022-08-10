input_file = ARGV.first #arg for file grabbin

def print_all(f) #prints all the content of the file
    puts f.read
end

def rewind(f) #defining a rewind thing to go to line 0
    puts f.seek(0) #Seeks line 0 in the file as a starting point. 
end

def print_a_line(line_count, f) #we're making a thing to print a line.
    puts "#{line_count}, #{f.gets.chomp}"  #puts the line
end

current_file = open(input_file) #opens file

puts "First let's print the whole file:/n" 

print_all(current_file) #whole thingamajig

puts "Now let's rewind, kind of like a tape."

rewind(current_file) #seeks line 0 like we set in the rewind function.

puts "Let's print three lines:"

current_line = 1 #sets current line for the script to 1
print_a_line(current_line, current_file) #puts current line of current opened file.

current_line += 1 #Same as before but we're adding a line to get line2
print_a_line(current_line, current_file)

current_line += current_line + 1 #same as before but we're adding a line to get line3
print_a_line(current_line, current_file)