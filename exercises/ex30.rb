people = 30
cars = 20
trucks = 30


if cars > people || cars > trucks #If statement to compare variables
    puts "We should take the cars."
elsif cars < people #What the above thing not true? Let's try this next.
    puts "We should not take the cars."
else #Everything else has failed? Print this.
    puts "We can't decide."
end

if trucks > cars #are there more trucks than cars? If so, let's print the below thing.
    puts "That's too many trucks."
elsif trucks < cars #Let's count cars v trucks and see if we want to print the below.
    puts "Maybe we could take the trucks."
else #Nothing worked? Give up and do this.
    puts "We still can't decide."
end

if people > trucks #We got so many trucks and so little people right? If so, print the below.
    puts "Alright, let's just take the trucks."
else #Nope nope nope. Definitely don't have more people than trucks so anything else that we returned that wasn't that means print the next thing.
    puts "Fine, let's stay home then."
end