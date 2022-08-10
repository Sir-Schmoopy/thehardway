filename = ARGV.first # gets the first arg and sets it to a variable

txt = open(filename) # Opening the file from the arg!

puts "Here's your file #{filename}:" #printing the file from the arg
puts txt.read #printing the content of the opened file.

print "Type the filename again: "
file_again = $stdin.gets.chomp

txt_again = open(file_again)

puts txt_again.read

txt = close(filename)
txt_again = close(file_again)