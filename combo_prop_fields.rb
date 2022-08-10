file1, file2, file3, file4, file5, file6 = ARGV

puts "\ncreating Prop Fields Yaml Combining The Following Files:\n#{file1}\n#{file2}\n#{file3}\n#{file4}\n#{file5}\n#{file6}"

puts "What do you want to name the new file?"
new_file_name = $stdin.gets.chomp

puts "Your new file name is #{new_file_name}"
puts "If this is correct hit RETURN to continue, CTRL-C to abort."
#$stdin.gets

new_file = File.new("#{new_file_name}","w+")
content = ARGF.read
new_file.write(content)
new_file.close

puts "Alright #{new_file_name} is created!"
