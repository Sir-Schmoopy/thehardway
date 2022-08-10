puts #output the content of the line with a newline appended to the end
print #outputs content w/o newline
# Is a hash/octothorpe. Can be used to add comments/comment out code/and is also used for referencing variables like #{variable}
* #SPLAT or star. in math is multiply, but otherwise can function as a wildcard when needed.

# Quickmaths
+ #plus
- #minus
/ #divide
* #multiply
% #percent of
< #less than (returns TF)
< #greater than (returns T/F)
<= #less-than-equal (returns T/F)
>= #greater-than-equal (returns T/F)

VARIABLE = #stupid important and makes code easy. Assign values/strings/results/inputs/etc. to variables to reference them later in the code.

string #A string can contain variables and a ton of text all encapsulated in some quotations. (Single or double)
       #also terminal args are received as strings and can later be translated into number etc for math. But it's all strings to start when coming from the command line.

formatters/formatstring #useful for applying a format to variables. 

stringdelimiter # just a cool way of formatting a string w/ linebreaks and almmost like a paragraph in your code.

\ #sometimes you have to escape things like quotes or other backslashes. This does that.

stdin.gets #Use this gets option just everytime tbh.
gets #Takes input from command line!
gets.chomp #Adds a newline after receiving input

ARGV #Gets a ton of variables(args) from command line when running the script! E.g.; `ruby ex1.rb test1 test2 test3`
     #important thing, you can ARGV.first and ARGV.last but not ARGV.second

close #closes the file.
read #reads the file.
write #writes to the file.
seek #moves to a line in the file.

# FUNKY FUNCTION TIME
def #starts a function that will basically name a "Mini script"
    #functions can take arguments.

    